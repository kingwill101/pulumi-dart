import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';

/// The dashboard is a real-time data analysis platform provided by the log service. You can display frequently used query and analysis statements in the form of charts and save statistical charts to the dashboard.
/// [Refer to details](https://www.alibabacloud.com/help/doc-detail/102530.htm).
///
/// > **NOTE:** Available since v1.86.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: example.projectName,
///     logstoreName: "example-store",
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleDashboard = new alicloud.log.Dashboard("example", {
///     projectName: example.projectName,
///     dashboardName: "terraform-example",
///     displayName: "terraform-example",
///     attribute: `  {
///     \\"type\\":\\"grid\\"
///   }
/// `,
///     charList: `  [
///     {
///       \\"action\\": {},
///       \\"title\\":\\"new_title\\",
///       \\"type\\":\\"map\\",
///       \\"search\\":{
///         \\"logstore\\":\\"example-store\\",
///         \\"topic\\":\\"new_topic\\",
///         \\"query\\":\\"* | SELECT COUNT(name) as ct_name, COUNT(product) as ct_product, name,product GROUP BY name,product\\",
///         \\"start\\":\\"-86400s\\",
///         \\"end\\":\\"now\\"
///       },
///       \\"display\\":{
///         \\"xAxis\\":[
///           \\"ct_name\\"
///         ],
///         \\"yAxis\\":[
///           \\"ct_product\\"
///         ],
///         \\"xPos\\":0,
///         \\"yPos\\":0,
///         \\"width\\":10,
///         \\"height\\":12,
///         \\"displayName\\":\\"terraform-example\\"
///       }
///     }
///   ]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project_name=example.project_name,
///     logstore_name="example-store",
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_dashboard = alicloud.log.Dashboard("example",
///     project_name=example.project_name,
///     dashboard_name="terraform-example",
///     display_name="terraform-example",
///     attribute="""  {
///     \"type\":\"grid\"
///   }
/// """,
///     char_list="""  [
///     {
///       \"action\": {},
///       \"title\":\"new_title\",
///       \"type\":\"map\",
///       \"search\":{
///         \"logstore\":\"example-store\",
///         \"topic\":\"new_topic\",
///         \"query\":\"* | SELECT COUNT(name) as ct_name, COUNT(product) as ct_product, name,product GROUP BY name,product\",
///         \"start\":\"-86400s\",
///         \"end\":\"now\"
///       },
///       \"display\":{
///         \"xAxis\":[
///           \"ct_name\"
///         ],
///         \"yAxis\":[
///           \"ct_product\"
///         ],
///         \"xPos\":0,
///         \"yPos\":0,
///         \"width\":10,
///         \"height\":12,
///         \"displayName\":\"terraform-example\"
///       }
///     }
///   ]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store",
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleDashboard = new AliCloud.Log.Dashboard("example", new()
///     {
///         ProjectName = example.ProjectName,
///         DashboardName = "terraform-example",
///         DisplayName = "terraform-example",
///         Attribute = @"  {
///     \""type\"":\""grid\""
///   }
/// ",
///         CharList = @"  [
///     {
///       \""action\"": {},
///       \""title\"":\""new_title\"",
///       \""type\"":\""map\"",
///       \""search\"":{
///         \""logstore\"":\""example-store\"",
///         \""topic\"":\""new_topic\"",
///         \""query\"":\""* | SELECT COUNT(name) as ct_name, COUNT(product) as ct_product, name,product GROUP BY name,product\"",
///         \""start\"":\""-86400s\"",
///         \""end\"":\""now\""
///       },
///       \""display\"":{
///         \""xAxis\"":[
///           \""ct_name\""
///         ],
///         \""yAxis\"":[
///           \""ct_product\""
///         ],
///         \""xPos\"":0,
///         \""yPos\"":0,
///         \""width\"":10,
///         \""height\"":12,
///         \""displayName\"":\""terraform-example\""
///       }
///     }
///   ]
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewDashboard(ctx, "example", &log.DashboardArgs{
/// 			ProjectName:   example.ProjectName,
/// 			DashboardName: pulumi.String("terraform-example"),
/// 			DisplayName:   pulumi.String("terraform-example"),
/// 			Attribute:     pulumi.String("  {\n    \\\"type\\\":\\\"grid\\\"\n  }\n"),
/// 			CharList: pulumi.String(`  [
///     {
///       \"action\": {},
///       \"title\":\"new_title\",
///       \"type\":\"map\",
///       \"search\":{
///         \"logstore\":\"example-store\",
///         \"topic\":\"new_topic\",
///         \"query\":\"* | SELECT COUNT(name) as ct_name, COUNT(product) as ct_product, name,product GROUP BY name,product\",
///         \"start\":\"-86400s\",
///         \"end\":\"now\"
///       },
///       \"display\":{
///         \"xAxis\":[
///           \"ct_name\"
///         ],
///         \"yAxis\":[
///           \"ct_product\"
///         ],
///         \"xPos\":0,
///         \"yPos\":0,
///         \"width\":10,
///         \"height\":12,
///         \"displayName\":\"terraform-example\"
///       }
///     }
///   ]
/// `),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.log.Dashboard;
/// import com.pulumi.alicloud.log.DashboardArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store")
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleDashboard = new Dashboard("exampleDashboard", DashboardArgs.builder()
///             .projectName(example.projectName())
///             .dashboardName("terraform-example")
///             .displayName("terraform-example")
///             .attribute("""
///   {
///     \"type\":\"grid\"
///   }
///             """)
///             .charList("""
///   [
///     {
///       \"action\": {},
///       \"title\":\"new_title\",
///       \"type\":\"map\",
///       \"search\":{
///         \"logstore\":\"example-store\",
///         \"topic\":\"new_topic\",
///         \"query\":\"* | SELECT COUNT(name) as ct_name, COUNT(product) as ct_product, name,product GROUP BY name,product\",
///         \"start\":\"-86400s\",
///         \"end\":\"now\"
///       },
///       \"display\":{
///         \"xAxis\":[
///           \"ct_name\"
///         ],
///         \"yAxis\":[
///           \"ct_product\"
///         ],
///         \"xPos\":0,
///         \"yPos\":0,
///         \"width\":10,
///         \"height\":12,
///         \"displayName\":\"terraform-example\"
///       }
///     }
///   ]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleDashboard:
///     type: alicloud:log:Dashboard
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       dashboardName: terraform-example
///       displayName: terraform-example
///       attribute: |2
///           {
///             \"type\":\"grid\"
///           }
///       charList: |2
///           [
///             {
///               \"action\": {},
///               \"title\":\"new_title\",
///               \"type\":\"map\",
///               \"search\":{
///                 \"logstore\":\"example-store\",
///                 \"topic\":\"new_topic\",
///                 \"query\":\"* | SELECT COUNT(name) as ct_name, COUNT(product) as ct_product, name,product GROUP BY name,product\",
///                 \"start\":\"-86400s\",
///                 \"end\":\"now\"
///               },
///               \"display\":{
///                 \"xAxis\":[
///                   \"ct_name\"
///                 ],
///                 \"yAxis\":[
///                   \"ct_product\"
///                 ],
///                 \"xPos\":0,
///                 \"yPos\":0,
///                 \"width\":10,
///                 \"height\":12,
///                 \"displayName\":\"terraform-example\"
///               }
///             }
///           ]
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Dashboard can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/dashboard:Dashboard example <project_name>:<dashboard_name>
/// ```
class Dashboard extends pulumi.CustomResource {
  /// Dashboard attribute.
  late final pulumi.Output<String> attribute;
  /// Configuration of charts in the dashboard.
  /// **Note:** From version 1.164.0, `char_list` can set parameter "action".
  late final pulumi.Output<String> charList;
  /// The name of the Log Dashboard.
  late final pulumi.Output<String> dashboardName;
  /// Dashboard alias.
  late final pulumi.Output<String?> displayName;
  /// The name of the log project. It is the only in one Alicloud account.
  late final pulumi.Output<String> projectName;

  /// Creates a new [Dashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dashboard]. {@macro pulumi_log_dashboard_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attribute = registerOutput<String>('attribute');
    this.charList = registerOutput<String>('charList');
    this.dashboardName = registerOutput<String>('dashboardName');
    this.displayName = registerOutput<String?>('displayName');
    this.projectName = registerOutput<String>('projectName');
  }
}
