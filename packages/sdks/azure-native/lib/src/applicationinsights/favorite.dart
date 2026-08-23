import 'package:pulumi/pulumi.dart' as pulumi;
import 'favorite_args.dart';

/// Properties that define a favorite that is associated to an Application Insights component.
///
/// Uses Azure REST API version 2015-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FavoriteAdd
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var favorite = new AzureNative.ApplicationInsights.Favorite("favorite", new()
///     {
///         Config = "{\"MEDataModelRawJSON\":\"{\\n  \\\"version\\\": \\\"1.4.1\\\",\\n  \\\"isCustomDataModel\\\": true,\\n  \\\"items\\\": [\\n    {\\n      \\\"id\\\": \\\"90a7134d-9a38-4c25-88d3-a495209873eb\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Sum\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"fail\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"0c289098-88e8-4010-b212-546815cddf70\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 2,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-j1\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"greenHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"cbdaab6f-a808-4f71-aca5-b3976cbb7345\\\",\\n      \\\"chartType\\\": \\\"Bar\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"magentaHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"1d5a6a3a-9fa1-4099-9cf9-05eff72d1b02\\\",\\n      \\\"grouping\\\": {\\n        \\\"kind\\\": \\\"ByDimension\\\",\\n        \\\"dimension\\\": \\\"context.application.version\\\"\\n      },\\n      \\\"chartType\\\": \\\"Grid\\\",\\n      \\\"chartHeight\\\": 1,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"basicException.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-g0\\\"\\n        },\\n        {\\n          \\\"id\\\": \\\"requestFailed.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-f0s2\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": true,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"blueHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    }\\n  ],\\n  \\\"currentFilter\\\": {\\n    \\\"eventTypes\\\": [\\n      1,\\n      2\\n    ],\\n    \\\"typeFacets\\\": {},\\n    \\\"isPermissive\\\": false\\n  },\\n  \\\"timeContext\\\": {\\n    \\\"durationMs\\\": 75600000,\\n    \\\"endTime\\\": \\\"2018-01-31T20:30:00.000Z\\\",\\n    \\\"createdTime\\\": \\\"2018-01-31T23:54:26.280Z\\\",\\n    \\\"isInitialTime\\\": false,\\n    \\\"grain\\\": 1,\\n    \\\"useDashboardTimeRange\\\": false\\n  },\\n  \\\"jsonUri\\\": \\\"Favorite_BlankChart\\\",\\n  \\\"timeSource\\\": 0\\n}\"}",
///         FavoriteId = "deadb33f-8bee-4d3b-a059-9be8dac93960",
///         FavoriteType = AzureNative.ApplicationInsights.FavoriteType.Shared,
///         IsGeneratedFromTemplate = false,
///         Name = "Blah Blah Blah",
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "my-ai-component",
///         Tags = new[]
///         {
///             "TagSample01",
///             "TagSample02",
///         },
///         Version = "ME",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewFavorite(ctx, "favorite", &applicationinsights.FavoriteArgs{
/// 			Config:                  pulumi.String("{\"MEDataModelRawJSON\":\"{\\n  \\\"version\\\": \\\"1.4.1\\\",\\n  \\\"isCustomDataModel\\\": true,\\n  \\\"items\\\": [\\n    {\\n      \\\"id\\\": \\\"90a7134d-9a38-4c25-88d3-a495209873eb\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Sum\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"fail\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"0c289098-88e8-4010-b212-546815cddf70\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 2,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-j1\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"greenHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"cbdaab6f-a808-4f71-aca5-b3976cbb7345\\\",\\n      \\\"chartType\\\": \\\"Bar\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"magentaHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"1d5a6a3a-9fa1-4099-9cf9-05eff72d1b02\\\",\\n      \\\"grouping\\\": {\\n        \\\"kind\\\": \\\"ByDimension\\\",\\n        \\\"dimension\\\": \\\"context.application.version\\\"\\n      },\\n      \\\"chartType\\\": \\\"Grid\\\",\\n      \\\"chartHeight\\\": 1,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"basicException.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-g0\\\"\\n        },\\n        {\\n          \\\"id\\\": \\\"requestFailed.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-f0s2\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": true,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"blueHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    }\\n  ],\\n  \\\"currentFilter\\\": {\\n    \\\"eventTypes\\\": [\\n      1,\\n      2\\n    ],\\n    \\\"typeFacets\\\": {},\\n    \\\"isPermissive\\\": false\\n  },\\n  \\\"timeContext\\\": {\\n    \\\"durationMs\\\": 75600000,\\n    \\\"endTime\\\": \\\"2018-01-31T20:30:00.000Z\\\",\\n    \\\"createdTime\\\": \\\"2018-01-31T23:54:26.280Z\\\",\\n    \\\"isInitialTime\\\": false,\\n    \\\"grain\\\": 1,\\n    \\\"useDashboardTimeRange\\\": false\\n  },\\n  \\\"jsonUri\\\": \\\"Favorite_BlankChart\\\",\\n  \\\"timeSource\\\": 0\\n}\"}"),
/// 			FavoriteId:              pulumi.String("deadb33f-8bee-4d3b-a059-9be8dac93960"),
/// 			FavoriteType:            applicationinsights.FavoriteTypeShared,
/// 			IsGeneratedFromTemplate: pulumi.Bool(false),
/// 			Name:                    pulumi.String("Blah Blah Blah"),
/// 			ResourceGroupName:       pulumi.String("my-resource-group"),
/// 			ResourceName:            pulumi.String("my-ai-component"),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("TagSample01"),
/// 				pulumi.String("TagSample02"),
/// 			},
/// 			Version: pulumi.String("ME"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_applicationinsights_favorite" "favorite" {
///   config                     = "{\"MEDataModelRawJSON\":\"{\\n  \\\"version\\\": \\\"1.4.1\\\",\\n  \\\"isCustomDataModel\\\": true,\\n  \\\"items\\\": [\\n    {\\n      \\\"id\\\": \\\"90a7134d-9a38-4c25-88d3-a495209873eb\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Sum\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"fail\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"0c289098-88e8-4010-b212-546815cddf70\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 2,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-j1\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"greenHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"cbdaab6f-a808-4f71-aca5-b3976cbb7345\\\",\\n      \\\"chartType\\\": \\\"Bar\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"magentaHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"1d5a6a3a-9fa1-4099-9cf9-05eff72d1b02\\\",\\n      \\\"grouping\\\": {\\n        \\\"kind\\\": \\\"ByDimension\\\",\\n        \\\"dimension\\\": \\\"context.application.version\\\"\\n      },\\n      \\\"chartType\\\": \\\"Grid\\\",\\n      \\\"chartHeight\\\": 1,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"basicException.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-g0\\\"\\n        },\\n        {\\n          \\\"id\\\": \\\"requestFailed.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-f0s2\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": true,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"blueHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    }\\n  ],\\n  \\\"currentFilter\\\": {\\n    \\\"eventTypes\\\": [\\n      1,\\n      2\\n    ],\\n    \\\"typeFacets\\\": {},\\n    \\\"isPermissive\\\": false\\n  },\\n  \\\"timeContext\\\": {\\n    \\\"durationMs\\\": 75600000,\\n    \\\"endTime\\\": \\\"2018-01-31T20:30:00.000Z\\\",\\n    \\\"createdTime\\\": \\\"2018-01-31T23:54:26.280Z\\\",\\n    \\\"isInitialTime\\\": false,\\n    \\\"grain\\\": 1,\\n    \\\"useDashboardTimeRange\\\": false\\n  },\\n  \\\"jsonUri\\\": \\\"Favorite_BlankChart\\\",\\n  \\\"timeSource\\\": 0\\n}\"}"
///   favorite_id                = "deadb33f-8bee-4d3b-a059-9be8dac93960"
///   favorite_type              = "shared"
///   is_generated_from_template = false
///   name                       = "Blah Blah Blah"
///   resource_group_name        = "my-resource-group"
///   resource_name              = "my-ai-component"
///   tags                       = ["TagSample01", "TagSample02"]
///   version                    = "ME"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.applicationinsights.Favorite;
/// import com.pulumi.azurenative.applicationinsights.FavoriteArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var favorite = new Favorite("favorite", FavoriteArgs.builder()
///             .config("{\"MEDataModelRawJSON\":\"{\\n  \\\"version\\\": \\\"1.4.1\\\",\\n  \\\"isCustomDataModel\\\": true,\\n  \\\"items\\\": [\\n    {\\n      \\\"id\\\": \\\"90a7134d-9a38-4c25-88d3-a495209873eb\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Sum\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"fail\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"0c289098-88e8-4010-b212-546815cddf70\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 2,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-j1\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"greenHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"cbdaab6f-a808-4f71-aca5-b3976cbb7345\\\",\\n      \\\"chartType\\\": \\\"Bar\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"magentaHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"1d5a6a3a-9fa1-4099-9cf9-05eff72d1b02\\\",\\n      \\\"grouping\\\": {\\n        \\\"kind\\\": \\\"ByDimension\\\",\\n        \\\"dimension\\\": \\\"context.application.version\\\"\\n      },\\n      \\\"chartType\\\": \\\"Grid\\\",\\n      \\\"chartHeight\\\": 1,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"basicException.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-g0\\\"\\n        },\\n        {\\n          \\\"id\\\": \\\"requestFailed.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-f0s2\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": true,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"blueHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    }\\n  ],\\n  \\\"currentFilter\\\": {\\n    \\\"eventTypes\\\": [\\n      1,\\n      2\\n    ],\\n    \\\"typeFacets\\\": {},\\n    \\\"isPermissive\\\": false\\n  },\\n  \\\"timeContext\\\": {\\n    \\\"durationMs\\\": 75600000,\\n    \\\"endTime\\\": \\\"2018-01-31T20:30:00.000Z\\\",\\n    \\\"createdTime\\\": \\\"2018-01-31T23:54:26.280Z\\\",\\n    \\\"isInitialTime\\\": false,\\n    \\\"grain\\\": 1,\\n    \\\"useDashboardTimeRange\\\": false\\n  },\\n  \\\"jsonUri\\\": \\\"Favorite_BlankChart\\\",\\n  \\\"timeSource\\\": 0\\n}\"}")
///             .favoriteId("deadb33f-8bee-4d3b-a059-9be8dac93960")
///             .favoriteType("shared")
///             .isGeneratedFromTemplate(false)
///             .name("Blah Blah Blah")
///             .resourceGroupName("my-resource-group")
///             .resourceName("my-ai-component")
///             .tags(
///                 "TagSample01",
///                 "TagSample02")
///             .version("ME")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const favorite = new azure_native.applicationinsights.Favorite("favorite", {
///     config: "{\"MEDataModelRawJSON\":\"{\\n  \\\"version\\\": \\\"1.4.1\\\",\\n  \\\"isCustomDataModel\\\": true,\\n  \\\"items\\\": [\\n    {\\n      \\\"id\\\": \\\"90a7134d-9a38-4c25-88d3-a495209873eb\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Sum\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"fail\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"0c289098-88e8-4010-b212-546815cddf70\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 2,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-j1\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"greenHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"cbdaab6f-a808-4f71-aca5-b3976cbb7345\\\",\\n      \\\"chartType\\\": \\\"Bar\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"magentaHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"1d5a6a3a-9fa1-4099-9cf9-05eff72d1b02\\\",\\n      \\\"grouping\\\": {\\n        \\\"kind\\\": \\\"ByDimension\\\",\\n        \\\"dimension\\\": \\\"context.application.version\\\"\\n      },\\n      \\\"chartType\\\": \\\"Grid\\\",\\n      \\\"chartHeight\\\": 1,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"basicException.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-g0\\\"\\n        },\\n        {\\n          \\\"id\\\": \\\"requestFailed.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-f0s2\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": true,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"blueHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    }\\n  ],\\n  \\\"currentFilter\\\": {\\n    \\\"eventTypes\\\": [\\n      1,\\n      2\\n    ],\\n    \\\"typeFacets\\\": {},\\n    \\\"isPermissive\\\": false\\n  },\\n  \\\"timeContext\\\": {\\n    \\\"durationMs\\\": 75600000,\\n    \\\"endTime\\\": \\\"2018-01-31T20:30:00.000Z\\\",\\n    \\\"createdTime\\\": \\\"2018-01-31T23:54:26.280Z\\\",\\n    \\\"isInitialTime\\\": false,\\n    \\\"grain\\\": 1,\\n    \\\"useDashboardTimeRange\\\": false\\n  },\\n  \\\"jsonUri\\\": \\\"Favorite_BlankChart\\\",\\n  \\\"timeSource\\\": 0\\n}\"}",
///     favoriteId: "deadb33f-8bee-4d3b-a059-9be8dac93960",
///     favoriteType: azure_native.applicationinsights.FavoriteType.Shared,
///     isGeneratedFromTemplate: false,
///     name: "Blah Blah Blah",
///     resourceGroupName: "my-resource-group",
///     resourceName: "my-ai-component",
///     tags: [
///         "TagSample01",
///         "TagSample02",
///     ],
///     version: "ME",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// favorite = azure_native.applicationinsights.Favorite("favorite",
///     config="{\"MEDataModelRawJSON\":\"{\\n  \\\"version\\\": \\\"1.4.1\\\",\\n  \\\"isCustomDataModel\\\": true,\\n  \\\"items\\\": [\\n    {\\n      \\\"id\\\": \\\"90a7134d-9a38-4c25-88d3-a495209873eb\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Sum\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"fail\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"0c289098-88e8-4010-b212-546815cddf70\\\",\\n      \\\"chartType\\\": \\\"Area\\\",\\n      \\\"chartHeight\\\": 2,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-j1\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"greenHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"cbdaab6f-a808-4f71-aca5-b3976cbb7345\\\",\\n      \\\"chartType\\\": \\\"Bar\\\",\\n      \\\"chartHeight\\\": 4,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"preview/requests/duration\\\",\\n          \\\"metricAggregation\\\": \\\"Avg\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-d0\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": false,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"aggregation\\\": \\\"Avg\\\",\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"magentaHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    },\\n    {\\n      \\\"id\\\": \\\"1d5a6a3a-9fa1-4099-9cf9-05eff72d1b02\\\",\\n      \\\"grouping\\\": {\\n        \\\"kind\\\": \\\"ByDimension\\\",\\n        \\\"dimension\\\": \\\"context.application.version\\\"\\n      },\\n      \\\"chartType\\\": \\\"Grid\\\",\\n      \\\"chartHeight\\\": 1,\\n      \\\"metrics\\\": [\\n        {\\n          \\\"id\\\": \\\"basicException.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-g0\\\"\\n        },\\n        {\\n          \\\"id\\\": \\\"requestFailed.count\\\",\\n          \\\"metricAggregation\\\": \\\"Sum\\\",\\n          \\\"color\\\": \\\"msportalfx-bgcolor-f0s2\\\"\\n        }\\n      ],\\n      \\\"priorPeriod\\\": true,\\n      \\\"clickAction\\\": {\\n        \\\"defaultBlade\\\": \\\"SearchBlade\\\"\\n      },\\n      \\\"horizontalBars\\\": true,\\n      \\\"showOther\\\": true,\\n      \\\"percentage\\\": false,\\n      \\\"palette\\\": \\\"blueHues\\\",\\n      \\\"yAxisOption\\\": 0,\\n      \\\"title\\\": \\\"\\\"\\n    }\\n  ],\\n  \\\"currentFilter\\\": {\\n    \\\"eventTypes\\\": [\\n      1,\\n      2\\n    ],\\n    \\\"typeFacets\\\": {},\\n    \\\"isPermissive\\\": false\\n  },\\n  \\\"timeContext\\\": {\\n    \\\"durationMs\\\": 75600000,\\n    \\\"endTime\\\": \\\"2018-01-31T20:30:00.000Z\\\",\\n    \\\"createdTime\\\": \\\"2018-01-31T23:54:26.280Z\\\",\\n    \\\"isInitialTime\\\": false,\\n    \\\"grain\\\": 1,\\n    \\\"useDashboardTimeRange\\\": false\\n  },\\n  \\\"jsonUri\\\": \\\"Favorite_BlankChart\\\",\\n  \\\"timeSource\\\": 0\\n}\"}",
///     favorite_id="deadb33f-8bee-4d3b-a059-9be8dac93960",
///     favorite_type=azure_native.applicationinsights.FavoriteType.SHARED,
///     is_generated_from_template=False,
///     name="Blah Blah Blah",
///     resource_group_name="my-resource-group",
///     resource_name_="my-ai-component",
///     tags=[
///         "TagSample01",
///         "TagSample02",
///     ],
///     version="ME")
///
/// ```
///
/// ```yaml
/// resources:
///   favorite:
///     type: azure-native:applicationinsights:Favorite
///     properties:
///       config: '{"MEDataModelRawJSON":"{\n  \"version\": \"1.4.1\",\n  \"isCustomDataModel\": true,\n  \"items\": [\n    {\n      \"id\": \"90a7134d-9a38-4c25-88d3-a495209873eb\",\n      \"chartType\": \"Area\",\n      \"chartHeight\": 4,\n      \"metrics\": [\n        {\n          \"id\": \"preview/requests/count\",\n          \"metricAggregation\": \"Sum\",\n          \"color\": \"msportalfx-bgcolor-d0\"\n        }\n      ],\n      \"priorPeriod\": false,\n      \"clickAction\": {\n        \"defaultBlade\": \"SearchBlade\"\n      },\n      \"horizontalBars\": true,\n      \"showOther\": true,\n      \"aggregation\": \"Sum\",\n      \"percentage\": false,\n      \"palette\": \"fail\",\n      \"yAxisOption\": 0,\n      \"title\": \"\"\n    },\n    {\n      \"id\": \"0c289098-88e8-4010-b212-546815cddf70\",\n      \"chartType\": \"Area\",\n      \"chartHeight\": 2,\n      \"metrics\": [\n        {\n          \"id\": \"preview/requests/duration\",\n          \"metricAggregation\": \"Avg\",\n          \"color\": \"msportalfx-bgcolor-j1\"\n        }\n      ],\n      \"priorPeriod\": false,\n      \"clickAction\": {\n        \"defaultBlade\": \"SearchBlade\"\n      },\n      \"horizontalBars\": true,\n      \"showOther\": true,\n      \"aggregation\": \"Avg\",\n      \"percentage\": false,\n      \"palette\": \"greenHues\",\n      \"yAxisOption\": 0,\n      \"title\": \"\"\n    },\n    {\n      \"id\": \"cbdaab6f-a808-4f71-aca5-b3976cbb7345\",\n      \"chartType\": \"Bar\",\n      \"chartHeight\": 4,\n      \"metrics\": [\n        {\n          \"id\": \"preview/requests/duration\",\n          \"metricAggregation\": \"Avg\",\n          \"color\": \"msportalfx-bgcolor-d0\"\n        }\n      ],\n      \"priorPeriod\": false,\n      \"clickAction\": {\n        \"defaultBlade\": \"SearchBlade\"\n      },\n      \"horizontalBars\": true,\n      \"showOther\": true,\n      \"aggregation\": \"Avg\",\n      \"percentage\": false,\n      \"palette\": \"magentaHues\",\n      \"yAxisOption\": 0,\n      \"title\": \"\"\n    },\n    {\n      \"id\": \"1d5a6a3a-9fa1-4099-9cf9-05eff72d1b02\",\n      \"grouping\": {\n        \"kind\": \"ByDimension\",\n        \"dimension\": \"context.application.version\"\n      },\n      \"chartType\": \"Grid\",\n      \"chartHeight\": 1,\n      \"metrics\": [\n        {\n          \"id\": \"basicException.count\",\n          \"metricAggregation\": \"Sum\",\n          \"color\": \"msportalfx-bgcolor-g0\"\n        },\n        {\n          \"id\": \"requestFailed.count\",\n          \"metricAggregation\": \"Sum\",\n          \"color\": \"msportalfx-bgcolor-f0s2\"\n        }\n      ],\n      \"priorPeriod\": true,\n      \"clickAction\": {\n        \"defaultBlade\": \"SearchBlade\"\n      },\n      \"horizontalBars\": true,\n      \"showOther\": true,\n      \"percentage\": false,\n      \"palette\": \"blueHues\",\n      \"yAxisOption\": 0,\n      \"title\": \"\"\n    }\n  ],\n  \"currentFilter\": {\n    \"eventTypes\": [\n      1,\n      2\n    ],\n    \"typeFacets\": {},\n    \"isPermissive\": false\n  },\n  \"timeContext\": {\n    \"durationMs\": 75600000,\n    \"endTime\": \"2018-01-31T20:30:00.000Z\",\n    \"createdTime\": \"2018-01-31T23:54:26.280Z\",\n    \"isInitialTime\": false,\n    \"grain\": 1,\n    \"useDashboardTimeRange\": false\n  },\n  \"jsonUri\": \"Favorite_BlankChart\",\n  \"timeSource\": 0\n}"}'
///       favoriteId: deadb33f-8bee-4d3b-a059-9be8dac93960
///       favoriteType: shared
///       isGeneratedFromTemplate: false
///       name: Blah Blah Blah
///       resourceGroupName: my-resource-group
///       resourceName: my-ai-component
///       tags:
///         - TagSample01
///         - TagSample02
///       version: ME
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:applicationinsights:Favorite myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/components/{resourceName}/favorites/{favoriteId}
/// ```
class Favorite extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Favorite category, as defined by the user at creation time.
  late final pulumi.Output<String?> category;
  /// Configuration of this particular favorite, which are driven by the Azure portal UX. Configuration data is a string containing valid JSON
  late final pulumi.Output<String?> config;
  /// Internally assigned unique id of the favorite definition.
  late final pulumi.Output<String> favoriteId;
  /// Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  late final pulumi.Output<String?> favoriteType;
  /// Flag denoting wether or not this favorite was generated from a template.
  late final pulumi.Output<bool?> isGeneratedFromTemplate;
  /// The user-defined name of the favorite.
  late final pulumi.Output<String?> name;
  /// The source of the favorite definition.
  late final pulumi.Output<String?> sourceType;
  /// A list of 0 or more tags that are associated with this favorite definition
  late final pulumi.Output<List<String>?> tags;
  /// Date and time in UTC of the last modification that was made to this favorite definition.
  late final pulumi.Output<String> timeModified;
  /// Unique user id of the specific user that owns this favorite.
  late final pulumi.Output<String> userId;
  /// This instance's version of the data model. This can change as new features are added that can be marked favorite. Current examples include MetricsExplorer (ME) and Search.
  late final pulumi.Output<String?> version;

  /// Creates a new [Favorite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Favorite]. {@macro pulumi_applicationinsights_favorite_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Favorite(
    String name, {
    FavoriteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:Favorite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String?>('category');
    config = registerOutput<String?>('config');
    favoriteId = registerOutput<String>('favoriteId');
    favoriteType = registerOutput<String?>('favoriteType');
    isGeneratedFromTemplate = registerOutput<bool?>('isGeneratedFromTemplate');
    this.name = registerOutput<String?>('name');
    sourceType = registerOutput<String?>('sourceType');
    tags = registerOutput<List<String>?>('tags');
    timeModified = registerOutput<String>('timeModified');
    userId = registerOutput<String>('userId');
    version = registerOutput<String?>('version');
  }
}
