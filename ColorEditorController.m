//
//  ColorEditorController.m
//  TTStyleBuilder
//
//  Created by Keith Lazuka on 6/16/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ColorEditorController.h"


@implementation ColorEditorController

+ (NSString *)typeHandler
{
    return @"T@\"UIColor\"";
}

///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark TTTableViewController

- (id<TTTableViewDataSource>)createDataSource
{
    NSMutableArray *fields = [NSMutableArray array];
    
    for (NSString *colorName in [NSArray arrayWithObjects:@"Red", @"Green", @"Blue", nil]) {
        [fields addObject:[[[TTTableField alloc] initWithText:colorName url:nil] autorelease]];
    }
    
    return [TTListDataSource dataSourceWithItems:fields];
}

@end