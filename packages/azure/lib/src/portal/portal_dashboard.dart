import 'package:pulumi/pulumi.dart' as pulumi;
import 'portal_dashboard_args.dart';

/// Manages a shared dashboard in the Azure Portal.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const config = new pulumi.Config();
/// // Content for the MD tile
/// const mdContent = config.get("mdContent") || "# Hello all :)";
/// // Link to a video
/// const videoLink = config.get("videoLink") || "https://www.youtube.com/watch?v=......";
/// const current = azure.core.getSubscription({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "mygroup",
///     location: "West Europe",
/// });
/// const my_board = new azure.portal.PortalDashboard("my-board", {
///     name: "my-cool-dashboard",
///     resourceGroupName: example.name,
///     location: example.location,
///     tags: {
///         source: "terraform",
///     },
///     dashboardProperties: current.then(current => `{
///    \"lenses\": {
///         \"0\": {
///             \"order\": 0,
///             \"parts\": {
///                 \"0\": {
///                     \"position\": {
///                         \"x\": 0,
///                         \"y\": 0,
///                         \"rowSpan\": 2,
///                         \"colSpan\": 3
///                     },
///                     \"metadata\": {
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/MarkdownPart\",
///                         \"settings\": {
///                             \"content\": {
///                                 \"settings\": {
///                                     \"content\": \"${mdContent}\",
///                                     \"subtitle\": \"\",
///                                     \"title\": \"\"
///                                 }
///                             }
///                         }
///                     }
///                 },
///                 \"1\": {
///                     \"position\": {
///                         \"x\": 5,
///                         \"y\": 0,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     },
///                     \"metadata\": {
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/VideoPart\",
///                         \"settings\": {
///                             \"content\": {
///                                 \"settings\": {
///                                     \"title\": \"Important Information\",
///                                     \"subtitle\": \"\",
///                                     \"src\": \"${videoLink}\",
///                                     \"autoplay\": true
///                                 }
///                             }
///                         }
///                     }
///                 },
///                 \"2\": {
///                     \"position\": {
///                         \"x\": 0,
///                         \"y\": 4,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     },
///                     \"metadata\": {
///                         \"inputs\": [
///                             {
///                                 \"name\": \"ComponentId\",
///                                 \"value\": \"/subscriptions/${current.subscriptionId}/resourceGroups/myRG/providers/microsoft.insights/components/myWebApp\"
///                             }
///                         ],
///                         \"type\": \"Extension/AppInsightsExtension/PartType/AppMapGalPt\",
///                         \"settings\": {},
///                         \"asset\": {
///                             \"idInputName\": \"ComponentId\",
///                             \"type\": \"ApplicationInsights\"
///                         }
///                     }
///                 }
///             }
///         }
///     },
///     \"metadata\": {
///         \"model\": {
///             \"timeRange\": {
///                 \"value\": {
///                     \"relative\": {
///                         \"duration\": 24,
///                         \"timeUnit\": 1
///                     }
///                 },
///                 \"type\": \"MsPortalFx.Composition.Configuration.ValueTypes.TimeRange\"
///             },
///             \"filterLocale\": {
///                 \"value\": \"en-us\"
///             },
///             \"filters\": {
///                 \"value\": {
///                     \"MsPortalFx_TimeRange\": {
///                         \"model\": {
///                             \"format\": \"utc\",
///                             \"granularity\": \"auto\",
///                             \"relative\": \"24h\"
///                         },
///                         \"displayCache\": {
///                             \"name\": \"UTC Time\",
///                             \"value\": \"Past 24 hours\"
///                         },
///                         \"filteredPartIds\": [
///                             \"StartboardPart-UnboundPart-ae44fef5-76b8-46b0-86f0-2b3f47bad1c7\"
///                         ]
///                     }
///                 }
///             }
///         }
///     }
/// }
/// `),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// config = pulumi.Config()
/// # Content for the MD tile
/// md_content = config.get("mdContent")
/// if md_content is None:
///     md_content = "# Hello all :)"
/// # Link to a video
/// video_link = config.get("videoLink")
/// if video_link is None:
///     video_link = "https://www.youtube.com/watch?v=......"
/// current = azure.core.get_subscription()
/// example = azure.core.ResourceGroup("example",
///     name="mygroup",
///     location="West Europe")
/// my_board = azure.portal.PortalDashboard("my-board",
///     name="my-cool-dashboard",
///     resource_group_name=example.name,
///     location=example.location,
///     tags={
///         "source": "terraform",
///     },
///     dashboard_properties=f"""{{
///    \"lenses\": {{
///         \"0\": {{
///             \"order\": 0,
///             \"parts\": {{
///                 \"0\": {{
///                     \"position\": {{
///                         \"x\": 0,
///                         \"y\": 0,
///                         \"rowSpan\": 2,
///                         \"colSpan\": 3
///                     }},
///                     \"metadata\": {{
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/MarkdownPart\",
///                         \"settings\": {{
///                             \"content\": {{
///                                 \"settings\": {{
///                                     \"content\": \"{md_content}\",
///                                     \"subtitle\": \"\",
///                                     \"title\": \"\"
///                                 }}
///                             }}
///                         }}
///                     }}
///                 }},
///                 \"1\": {{
///                     \"position\": {{
///                         \"x\": 5,
///                         \"y\": 0,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     }},
///                     \"metadata\": {{
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/VideoPart\",
///                         \"settings\": {{
///                             \"content\": {{
///                                 \"settings\": {{
///                                     \"title\": \"Important Information\",
///                                     \"subtitle\": \"\",
///                                     \"src\": \"{video_link}\",
///                                     \"autoplay\": true
///                                 }}
///                             }}
///                         }}
///                     }}
///                 }},
///                 \"2\": {{
///                     \"position\": {{
///                         \"x\": 0,
///                         \"y\": 4,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     }},
///                     \"metadata\": {{
///                         \"inputs\": [
///                             {{
///                                 \"name\": \"ComponentId\",
///                                 \"value\": \"/subscriptions/{current.subscription_id}/resourceGroups/myRG/providers/microsoft.insights/components/myWebApp\"
///                             }}
///                         ],
///                         \"type\": \"Extension/AppInsightsExtension/PartType/AppMapGalPt\",
///                         \"settings\": {{}},
///                         \"asset\": {{
///                             \"idInputName\": \"ComponentId\",
///                             \"type\": \"ApplicationInsights\"
///                         }}
///                     }}
///                 }}
///             }}
///         }}
///     }},
///     \"metadata\": {{
///         \"model\": {{
///             \"timeRange\": {{
///                 \"value\": {{
///                     \"relative\": {{
///                         \"duration\": 24,
///                         \"timeUnit\": 1
///                     }}
///                 }},
///                 \"type\": \"MsPortalFx.Composition.Configuration.ValueTypes.TimeRange\"
///             }},
///             \"filterLocale\": {{
///                 \"value\": \"en-us\"
///             }},
///             \"filters\": {{
///                 \"value\": {{
///                     \"MsPortalFx_TimeRange\": {{
///                         \"model\": {{
///                             \"format\": \"utc\",
///                             \"granularity\": \"auto\",
///                             \"relative\": \"24h\"
///                         }},
///                         \"displayCache\": {{
///                             \"name\": \"UTC Time\",
///                             \"value\": \"Past 24 hours\"
///                         }},
///                         \"filteredPartIds\": [
///                             \"StartboardPart-UnboundPart-ae44fef5-76b8-46b0-86f0-2b3f47bad1c7\"
///                         ]
///                     }}
///                 }}
///             }}
///         }}
///     }}
/// }}
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     // Content for the MD tile
///     var mdContent = config.Get("mdContent") ?? "# Hello all :)";
///     // Link to a video
///     var videoLink = config.Get("videoLink") ?? "https://www.youtube.com/watch?v=......";
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "mygroup",
///         Location = "West Europe",
///     });
///
///     var my_board = new Azure.Portal.PortalDashboard("my-board", new()
///     {
///         Name = "my-cool-dashboard",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Tags =
///         {
///             { "source", "terraform" },
///         },
///         DashboardProperties = @$"{{
///    \""lenses\"": {{
///         \""0\"": {{
///             \""order\"": 0,
///             \""parts\"": {{
///                 \""0\"": {{
///                     \""position\"": {{
///                         \""x\"": 0,
///                         \""y\"": 0,
///                         \""rowSpan\"": 2,
///                         \""colSpan\"": 3
///                     }},
///                     \""metadata\"": {{
///                         \""inputs\"": [],
///                         \""type\"": \""Extension/HubsExtension/PartType/MarkdownPart\"",
///                         \""settings\"": {{
///                             \""content\"": {{
///                                 \""settings\"": {{
///                                     \""content\"": \""{mdContent}\"",
///                                     \""subtitle\"": \""\"",
///                                     \""title\"": \""\""
///                                 }}
///                             }}
///                         }}
///                     }}
///                 }},
///                 \""1\"": {{
///                     \""position\"": {{
///                         \""x\"": 5,
///                         \""y\"": 0,
///                         \""rowSpan\"": 4,
///                         \""colSpan\"": 6
///                     }},
///                     \""metadata\"": {{
///                         \""inputs\"": [],
///                         \""type\"": \""Extension/HubsExtension/PartType/VideoPart\"",
///                         \""settings\"": {{
///                             \""content\"": {{
///                                 \""settings\"": {{
///                                     \""title\"": \""Important Information\"",
///                                     \""subtitle\"": \""\"",
///                                     \""src\"": \""{videoLink}\"",
///                                     \""autoplay\"": true
///                                 }}
///                             }}
///                         }}
///                     }}
///                 }},
///                 \""2\"": {{
///                     \""position\"": {{
///                         \""x\"": 0,
///                         \""y\"": 4,
///                         \""rowSpan\"": 4,
///                         \""colSpan\"": 6
///                     }},
///                     \""metadata\"": {{
///                         \""inputs\"": [
///                             {{
///                                 \""name\"": \""ComponentId\"",
///                                 \""value\"": \""/subscriptions/{current.Apply(getSubscriptionResult => getSubscriptionResult.SubscriptionId)}/resourceGroups/myRG/providers/microsoft.insights/components/myWebApp\""
///                             }}
///                         ],
///                         \""type\"": \""Extension/AppInsightsExtension/PartType/AppMapGalPt\"",
///                         \""settings\"": {{}},
///                         \""asset\"": {{
///                             \""idInputName\"": \""ComponentId\"",
///                             \""type\"": \""ApplicationInsights\""
///                         }}
///                     }}
///                 }}
///             }}
///         }}
///     }},
///     \""metadata\"": {{
///         \""model\"": {{
///             \""timeRange\"": {{
///                 \""value\"": {{
///                     \""relative\"": {{
///                         \""duration\"": 24,
///                         \""timeUnit\"": 1
///                     }}
///                 }},
///                 \""type\"": \""MsPortalFx.Composition.Configuration.ValueTypes.TimeRange\""
///             }},
///             \""filterLocale\"": {{
///                 \""value\"": \""en-us\""
///             }},
///             \""filters\"": {{
///                 \""value\"": {{
///                     \""MsPortalFx_TimeRange\"": {{
///                         \""model\"": {{
///                             \""format\"": \""utc\"",
///                             \""granularity\"": \""auto\"",
///                             \""relative\"": \""24h\""
///                         }},
///                         \""displayCache\"": {{
///                             \""name\"": \""UTC Time\"",
///                             \""value\"": \""Past 24 hours\""
///                         }},
///                         \""filteredPartIds\"": [
///                             \""StartboardPart-UnboundPart-ae44fef5-76b8-46b0-86f0-2b3f47bad1c7\""
///                         ]
///                     }}
///                 }}
///             }}
///         }}
///     }}
/// }}
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/portal"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		// Content for the MD tile
/// 		mdContent := "# Hello all :)"
/// 		if param := cfg.Get("mdContent"); param != "" {
/// 			mdContent = param
/// 		}
/// 		// Link to a video
/// 		videoLink := "https://www.youtube.com/watch?v=......"
/// 		if param := cfg.Get("videoLink"); param != "" {
/// 			videoLink = param
/// 		}
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("mygroup"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = portal.NewPortalDashboard(ctx, "my-board", &portal.PortalDashboardArgs{
/// 			Name:              pulumi.String("my-cool-dashboard"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("terraform"),
/// 			},
/// 			DashboardProperties: pulumi.Sprintf(`{
///    \"lenses\": {
///         \"0\": {
///             \"order\": 0,
///             \"parts\": {
///                 \"0\": {
///                     \"position\": {
///                         \"x\": 0,
///                         \"y\": 0,
///                         \"rowSpan\": 2,
///                         \"colSpan\": 3
///                     },
///                     \"metadata\": {
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/MarkdownPart\",
///                         \"settings\": {
///                             \"content\": {
///                                 \"settings\": {
///                                     \"content\": \"%v\",
///                                     \"subtitle\": \"\",
///                                     \"title\": \"\"
///                                 }
///                             }
///                         }
///                     }
///                 },
///                 \"1\": {
///                     \"position\": {
///                         \"x\": 5,
///                         \"y\": 0,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     },
///                     \"metadata\": {
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/VideoPart\",
///                         \"settings\": {
///                             \"content\": {
///                                 \"settings\": {
///                                     \"title\": \"Important Information\",
///                                     \"subtitle\": \"\",
///                                     \"src\": \"%v\",
///                                     \"autoplay\": true
///                                 }
///                             }
///                         }
///                     }
///                 },
///                 \"2\": {
///                     \"position\": {
///                         \"x\": 0,
///                         \"y\": 4,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     },
///                     \"metadata\": {
///                         \"inputs\": [
///                             {
///                                 \"name\": \"ComponentId\",
///                                 \"value\": \"/subscriptions/%v/resourceGroups/myRG/providers/microsoft.insights/components/myWebApp\"
///                             }
///                         ],
///                         \"type\": \"Extension/AppInsightsExtension/PartType/AppMapGalPt\",
///                         \"settings\": {},
///                         \"asset\": {
///                             \"idInputName\": \"ComponentId\",
///                             \"type\": \"ApplicationInsights\"
///                         }
///                     }
///                 }
///             }
///         }
///     },
///     \"metadata\": {
///         \"model\": {
///             \"timeRange\": {
///                 \"value\": {
///                     \"relative\": {
///                         \"duration\": 24,
///                         \"timeUnit\": 1
///                     }
///                 },
///                 \"type\": \"MsPortalFx.Composition.Configuration.ValueTypes.TimeRange\"
///             },
///             \"filterLocale\": {
///                 \"value\": \"en-us\"
///             },
///             \"filters\": {
///                 \"value\": {
///                     \"MsPortalFx_TimeRange\": {
///                         \"model\": {
///                             \"format\": \"utc\",
///                             \"granularity\": \"auto\",
///                             \"relative\": \"24h\"
///                         },
///                         \"displayCache\": {
///                             \"name\": \"UTC Time\",
///                             \"value\": \"Past 24 hours\"
///                         },
///                         \"filteredPartIds\": [
///                             \"StartboardPart-UnboundPart-ae44fef5-76b8-46b0-86f0-2b3f47bad1c7\"
///                         ]
///                     }
///                 }
///             }
///         }
///     }
/// }
/// `, mdContent, videoLink, current.SubscriptionId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.portal.PortalDashboard;
/// import com.pulumi.azure.portal.PortalDashboardArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var config = ctx.config();
///         final var mdContent = config.get("mdContent").orElse("# Hello all :)");
///         final var videoLink = config.get("videoLink").orElse("https://www.youtube.com/watch?v=......");
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("mygroup")
///             .location("West Europe")
///             .build());
///
///         var my_board = new PortalDashboard("my-board", PortalDashboardArgs.builder()
///             .name("my-cool-dashboard")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .tags(Map.of("source", "terraform"))
///             .dashboardProperties("""
/// {
///    \"lenses\": {
///         \"0\": {
///             \"order\": 0,
///             \"parts\": {
///                 \"0\": {
///                     \"position\": {
///                         \"x\": 0,
///                         \"y\": 0,
///                         \"rowSpan\": 2,
///                         \"colSpan\": 3
///                     },
///                     \"metadata\": {
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/MarkdownPart\",
///                         \"settings\": {
///                             \"content\": {
///                                 \"settings\": {
///                                     \"content\": \"%s\",
///                                     \"subtitle\": \"\",
///                                     \"title\": \"\"
///                                 }
///                             }
///                         }
///                     }
///                 },
///                 \"1\": {
///                     \"position\": {
///                         \"x\": 5,
///                         \"y\": 0,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     },
///                     \"metadata\": {
///                         \"inputs\": [],
///                         \"type\": \"Extension/HubsExtension/PartType/VideoPart\",
///                         \"settings\": {
///                             \"content\": {
///                                 \"settings\": {
///                                     \"title\": \"Important Information\",
///                                     \"subtitle\": \"\",
///                                     \"src\": \"%s\",
///                                     \"autoplay\": true
///                                 }
///                             }
///                         }
///                     }
///                 },
///                 \"2\": {
///                     \"position\": {
///                         \"x\": 0,
///                         \"y\": 4,
///                         \"rowSpan\": 4,
///                         \"colSpan\": 6
///                     },
///                     \"metadata\": {
///                         \"inputs\": [
///                             {
///                                 \"name\": \"ComponentId\",
///                                 \"value\": \"/subscriptions/%s/resourceGroups/myRG/providers/microsoft.insights/components/myWebApp\"
///                             }
///                         ],
///                         \"type\": \"Extension/AppInsightsExtension/PartType/AppMapGalPt\",
///                         \"settings\": {},
///                         \"asset\": {
///                             \"idInputName\": \"ComponentId\",
///                             \"type\": \"ApplicationInsights\"
///                         }
///                     }
///                 }
///             }
///         }
///     },
///     \"metadata\": {
///         \"model\": {
///             \"timeRange\": {
///                 \"value\": {
///                     \"relative\": {
///                         \"duration\": 24,
///                         \"timeUnit\": 1
///                     }
///                 },
///                 \"type\": \"MsPortalFx.Composition.Configuration.ValueTypes.TimeRange\"
///             },
///             \"filterLocale\": {
///                 \"value\": \"en-us\"
///             },
///             \"filters\": {
///                 \"value\": {
///                     \"MsPortalFx_TimeRange\": {
///                         \"model\": {
///                             \"format\": \"utc\",
///                             \"granularity\": \"auto\",
///                             \"relative\": \"24h\"
///                         },
///                         \"displayCache\": {
///                             \"name\": \"UTC Time\",
///                             \"value\": \"Past 24 hours\"
///                         },
///                         \"filteredPartIds\": [
///                             \"StartboardPart-UnboundPart-ae44fef5-76b8-46b0-86f0-2b3f47bad1c7\"
///                         ]
///                     }
///                 }
///             }
///         }
///     }
/// }
/// ", mdContent,videoLink,current.subscriptionId()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   mdContent:
///     type: string
///     default: '# Hello all :)'
///   videoLink:
///     type: string
///     default: https://www.youtube.com/watch?v=......
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: mygroup
///       location: West Europe
///   my-board:
///     type: azure:portal:PortalDashboard
///     properties:
///       name: my-cool-dashboard
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       tags:
///         source: terraform
///       dashboardProperties: "{\n   \\\"lenses\\\": {\n        \\\"0\\\": {\n            \\\"order\\\": 0,\n            \\\"parts\\\": {\n                \\\"0\\\": {\n                    \\\"position\\\": {\n                        \\\"x\\\": 0,\n                        \\\"y\\\": 0,\n                        \\\"rowSpan\\\": 2,\n                        \\\"colSpan\\\": 3\n                    },\n                    \\\"metadata\\\": {\n                        \\\"inputs\\\": [],\n                        \\\"type\\\": \\\"Extension/HubsExtension/PartType/MarkdownPart\\\",\n                        \\\"settings\\\": {\n                            \\\"content\\\": {\n                                \\\"settings\\\": {\n                                    \\\"content\\\": \\\"${mdContent}\\\",\n                                    \\\"subtitle\\\": \\\"\\\",\n                                    \\\"title\\\": \\\"\\\"\n                                }\n                            }\n                        }\n                    }\n                },               \n                \\\"1\\\": {\n                    \\\"position\\\": {\n                        \\\"x\\\": 5,\n                        \\\"y\\\": 0,\n                        \\\"rowSpan\\\": 4,\n                        \\\"colSpan\\\": 6\n                    },\n                    \\\"metadata\\\": {\n                        \\\"inputs\\\": [],\n                        \\\"type\\\": \\\"Extension/HubsExtension/PartType/VideoPart\\\",\n                        \\\"settings\\\": {\n                            \\\"content\\\": {\n                                \\\"settings\\\": {\n                                    \\\"title\\\": \\\"Important Information\\\",\n                                    \\\"subtitle\\\": \\\"\\\",\n                                    \\\"src\\\": \\\"${videoLink}\\\",\n                                    \\\"autoplay\\\": true\n                                }\n                            }\n                        }\n                    }\n                },\n                \\\"2\\\": {\n                    \\\"position\\\": {\n                        \\\"x\\\": 0,\n                        \\\"y\\\": 4,\n                        \\\"rowSpan\\\": 4,\n                        \\\"colSpan\\\": 6\n                    },\n                    \\\"metadata\\\": {\n                        \\\"inputs\\\": [\n                            {\n                                \\\"name\\\": \\\"ComponentId\\\",\n                                \\\"value\\\": \\\"/subscriptions/${current.subscriptionId}/resourceGroups/myRG/providers/microsoft.insights/components/myWebApp\\\"\n                            }\n                        ],\n                        \\\"type\\\": \\\"Extension/AppInsightsExtension/PartType/AppMapGalPt\\\",\n                        \\\"settings\\\": {},\n                        \\\"asset\\\": {\n                            \\\"idInputName\\\": \\\"ComponentId\\\",\n                            \\\"type\\\": \\\"ApplicationInsights\\\"\n                        }\n                    }\n                }              \n            }\n        }\n    },\n    \\\"metadata\\\": {\n        \\\"model\\\": {\n            \\\"timeRange\\\": {\n                \\\"value\\\": {\n                    \\\"relative\\\": {\n                        \\\"duration\\\": 24,\n                        \\\"timeUnit\\\": 1\n                    }\n                },\n                \\\"type\\\": \\\"MsPortalFx.Composition.Configuration.ValueTypes.TimeRange\\\"\n            },\n            \\\"filterLocale\\\": {\n                \\\"value\\\": \\\"en-us\\\"\n            },\n            \\\"filters\\\": {\n                \\\"value\\\": {\n                    \\\"MsPortalFx_TimeRange\\\": {\n                        \\\"model\\\": {\n                            \\\"format\\\": \\\"utc\\\",\n                            \\\"granularity\\\": \\\"auto\\\",\n                            \\\"relative\\\": \\\"24h\\\"\n                        },\n                        \\\"displayCache\\\": {\n                            \\\"name\\\": \\\"UTC Time\\\",\n                            \\\"value\\\": \\\"Past 24 hours\\\"\n                        },\n                        \\\"filteredPartIds\\\": [\n                            \\\"StartboardPart-UnboundPart-ae44fef5-76b8-46b0-86f0-2b3f47bad1c7\\\"\n                        ]\n                    }\n                }\n            }\n        }\n    }\n}\n"
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
/// It is recommended to follow the steps outlined
/// [here](https://docs.microsoft.com/azure/azure-portal/azure-portal-dashboards-create-programmatically#fetch-the-json-representation-of-the-dashboard) to create a Dashboard in the Portal and extract the relevant JSON to use in this resource. From the extracted JSON, the contents of the `properties: {}` object can used. Variables can be injected as needed - see above example.
///
/// ### Using a `template_file` data source or the `templatefile` function
///
/// Since the contents of the dashboard JSON can be quite lengthy, use a template file to improve readability:
///
/// `dash.tpl`:
///
/// ```JSON
/// {
///     "lenses": {
///          "0": {
///              "order": 0,
///              "parts": {
///                  "0": {
///                      "position": {
///                          "x": 0,
///                          "y": 0,
///                          "rowSpan": 2,
///                          "colSpan": 3
///                      },
///                      "metadata": {
///                          "inputs": [],
///                          "type": "Extension/HubsExtension/PartType/MarkdownPart",
///                          "settings": {
///                              "content": {
///                                  "settings": {
///                                      "content": "${md_content}", // <-- note the 'var.' is dropped
///                                      "subtitle": "",
///                                      "title": ""
///                                  }
///                              }
///                          }
///                      }
///                  },
///                  ...
///                  ...
/// ```
///
/// This is then referenced in the `.tf` file by using a `template_file` data source (terraform 0.11 or earlier), or the `templatefile` function (terraform 0.12+).
///
/// `main.tf` (terraform 0.11 or earlier):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azurerm from "@pulumi/azurerm";
///
/// function notImplemented(message: string) {
///     throw new Error(message);
/// }
///
/// const dash_template = notImplemented("The template_file data resource is not yet supported.");
/// //...
/// const my_board = new azurerm.index.Dashboard("my-board", {
///     name: "my-cool-dashboard",
///     resourceGroupName: example.name,
///     location: example.location,
///     tags: {
///         source: "terraform",
///     },
///     dashboardProperties: dash_template.rendered,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azurerm as azurerm
///
///
/// def not_implemented(msg):
///     raise NotImplementedError(msg)
///
/// dash_template = not_implemented("The template_file data resource is not yet supported.")
/// #...
/// my_board = azurerm.index.Dashboard("my-board",
///     name=my-cool-dashboard,
///     resource_group_name=example.name,
///     location=example.location,
///     tags={
///         source: terraform,
///     },
///     dashboard_properties=dash_template.rendered)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azurerm = Pulumi.Azurerm;
///
///
/// object NotImplemented(string errorMessage)
/// {
///     throw new System.NotImplementedException(errorMessage);
/// }
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dash_template = NotImplemented("The template_file data resource is not yet supported.");
///
///     //...
///     var my_board = new Azurerm.Index.Dashboard("my-board", new()
///     {
///         Name = "my-cool-dashboard",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Tags =
///         {
///             { "source", "terraform" },
///         },
///         DashboardProperties = dash_template.Rendered,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func notImplemented(message string) pulumi.AnyOutput {
/// 	panic(message)
/// }
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dash_template := notImplemented("The template_file data resource is not yet supported.")
/// 		// ...
/// 		_, err := azurerm.NewDashboard(ctx, "my-board", &azurerm.DashboardArgs{
/// 			Name:              "my-cool-dashboard",
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Tags: map[string]interface{}{
/// 				"source": "terraform",
/// 			},
/// 			DashboardProperties: dash_template.Rendered,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
///
///
/// `main.tf` (terraform 0.12+)
///
/// ## Import
///
/// Dashboards can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:portal/portalDashboard:PortalDashboard my-board /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Portal/dashboards/00000000-0000-0000-0000-000000000000
/// ```
///
/// Note the URI in the above sample can be found using the Resource Explorer tool in the Azure Portal.
class PortalDashboard extends pulumi.CustomResource {
  /// JSON data representing dashboard body. See above for details on how to obtain this from the Portal.
  late final pulumi.Output<String> dashboardProperties;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Shared Dashboard. Changing this forces a new resource to be created.
  ///
  /// > **Note:** You can specify a tag with the key `hidden-title` to set a more user-friendly title for this Dashboard.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the dashboard. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PortalDashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PortalDashboard]. {@macro pulumi_portal_portal_dashboard_portal_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PortalDashboard(
    String name, {
    PortalDashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:portal/portalDashboard:PortalDashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dashboardProperties = registerOutput<String>('dashboardProperties');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
