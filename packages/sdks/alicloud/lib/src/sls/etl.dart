import 'package:pulumi/pulumi.dart' as pulumi;
import 'etl_args.dart';
import 'etl_configuration.dart';
import 'etl_state.dart';

/// Provides a Log Service (SLS) Etl resource.
///
///
///
/// For information about Log Service (SLS) Etl and how to use it, see [What is Etl](https://next.api.alibabacloud.com/document/Sls/2020-12-30/CreateETL).
///
/// &gt; **NOTE:** Available since v1.248.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaulthhAPo6 = new alicloud.log.Project("defaulthhAPo6", {
///     description: "terraform-etl-example-813",
///     projectName: "terraform-etl-example-330",
/// });
/// const defaultzWKLkp = new alicloud.log.Store("defaultzWKLkp", {
///     hotTtl: 8,
///     retentionPeriod: 30,
///     shardCount: 2,
///     projectName: defaulthhAPo6.id,
///     logstoreName: "example",
/// });
/// const _default = new alicloud.sls.Etl("default", {
///     project: defaulthhAPo6.id,
///     description: "etl-1740472705-185721",
///     configuration: {
///         script: "* | extend a=1",
///         lang: "SPL",
///         roleArn: name,
///         sinks: [{
///             name: "11111",
///             endpoint: "cn-hangzhou-intranet.log.aliyuncs.com",
///             project: "gy-hangzhou-huolang-1",
///             logstore: "gy-rm2",
///             datasets: ["__UNNAMED__"],
///             roleArn: name,
///         }],
///         logstore: defaultzWKLkp.logstoreName,
///         fromTime: 1706771697,
///         toTime: 1738394097,
///     },
///     jobName: "etl-1740472705-185721",
///     displayName: "etl-1740472705-185721",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// defaulthh_a_po6 = alicloud.log.Project("defaulthhAPo6",
///     description="terraform-etl-example-813",
///     project_name="terraform-etl-example-330")
/// defaultz_wk_lkp = alicloud.log.Store("defaultzWKLkp",
///     hot_ttl=8,
///     retention_period=30,
///     shard_count=2,
///     project_name=defaulthh_a_po6.id,
///     logstore_name="example")
/// default = alicloud.sls.Etl("default",
///     project=defaulthh_a_po6.id,
///     description="etl-1740472705-185721",
///     configuration={
///         "script": "* | extend a=1",
///         "lang": "SPL",
///         "role_arn": name,
///         "sinks": [{
///             "name": "11111",
///             "endpoint": "cn-hangzhou-intranet.log.aliyuncs.com",
///             "project": "gy-hangzhou-huolang-1",
///             "logstore": "gy-rm2",
///             "datasets": ["__UNNAMED__"],
///             "role_arn": name,
///         }],
///         "logstore": defaultz_wk_lkp.logstore_name,
///         "from_time": 1706771697,
///         "to_time": 1738394097,
///     },
///     job_name="etl-1740472705-185721",
///     display_name="etl-1740472705-185721")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaulthhAPo6 = new AliCloud.Log.Project("defaulthhAPo6", new()
///     {
///         Description = "terraform-etl-example-813",
///         ProjectName = "terraform-etl-example-330",
///     });
///
///     var defaultzWKLkp = new AliCloud.Log.Store("defaultzWKLkp", new()
///     {
///         HotTtl = 8,
///         RetentionPeriod = 30,
///         ShardCount = 2,
///         ProjectName = defaulthhAPo6.Id,
///         LogstoreName = "example",
///     });
///
///     var @default = new AliCloud.Sls.Etl("default", new()
///     {
///         Project = defaulthhAPo6.Id,
///         Description = "etl-1740472705-185721",
///         Configuration = new AliCloud.Sls.Inputs.EtlConfigurationArgs
///         {
///             Script = "* | extend a=1",
///             Lang = "SPL",
///             RoleArn = name,
///             Sinks = new[]
///             {
///                 new AliCloud.Sls.Inputs.EtlConfigurationSinkArgs
///                 {
///                     Name = "11111",
///                     Endpoint = "cn-hangzhou-intranet.log.aliyuncs.com",
///                     Project = "gy-hangzhou-huolang-1",
///                     Logstore = "gy-rm2",
///                     Datasets = new[]
///                     {
///                         "__UNNAMED__",
///                     },
///                     RoleArn = name,
///                 },
///             },
///             Logstore = defaultzWKLkp.LogstoreName,
///             FromTime = 1706771697,
///             ToTime = 1738394097,
///         },
///         JobName = "etl-1740472705-185721",
///         DisplayName = "etl-1740472705-185721",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sls"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaulthhAPo6, err := log.NewProject(ctx, "defaulthhAPo6", &log.ProjectArgs{
/// 			Description: pulumi.String("terraform-etl-example-813"),
/// 			ProjectName: pulumi.String("terraform-etl-example-330"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultzWKLkp, err := log.NewStore(ctx, "defaultzWKLkp", &log.StoreArgs{
/// 			HotTtl:          pulumi.Int(8),
/// 			RetentionPeriod: pulumi.Int(30),
/// 			ShardCount:      pulumi.Int(2),
/// 			ProjectName:     defaulthhAPo6.ID(),
/// 			LogstoreName:    pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sls.NewEtl(ctx, "default", &sls.EtlArgs{
/// 			Project:     defaulthhAPo6.ID(),
/// 			Description: pulumi.String("etl-1740472705-185721"),
/// 			Configuration: &sls.EtlConfigurationArgs{
/// 				Script:  pulumi.String("* | extend a=1"),
/// 				Lang:    pulumi.String("SPL"),
/// 				RoleArn: pulumi.String(name),
/// 				Sinks: sls.EtlConfigurationSinkArray{
/// 					&sls.EtlConfigurationSinkArgs{
/// 						Name:     pulumi.String("11111"),
/// 						Endpoint: pulumi.String("cn-hangzhou-intranet.log.aliyuncs.com"),
/// 						Project:  pulumi.String("gy-hangzhou-huolang-1"),
/// 						Logstore: pulumi.String("gy-rm2"),
/// 						Datasets: pulumi.StringArray{
/// 							pulumi.String("__UNNAMED__"),
/// 						},
/// 						RoleArn: pulumi.String(name),
/// 					},
/// 				},
/// 				Logstore: defaultzWKLkp.LogstoreName,
/// 				FromTime: pulumi.Int(1706771697),
/// 				ToTime:   pulumi.Int(1738394097),
/// 			},
/// 			JobName:     pulumi.String("etl-1740472705-185721"),
/// 			DisplayName: pulumi.String("etl-1740472705-185721"),
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
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.sls.Etl;
/// import com.pulumi.alicloud.sls.EtlArgs;
/// import com.pulumi.alicloud.sls.inputs.EtlConfigurationArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var defaulthhAPo6 = new Project("defaulthhAPo6", ProjectArgs.builder()
///             .description("terraform-etl-example-813")
///             .projectName("terraform-etl-example-330")
///             .build());
///
///         var defaultzWKLkp = new Store("defaultzWKLkp", StoreArgs.builder()
///             .hotTtl(8)
///             .retentionPeriod(30)
///             .shardCount(2)
///             .projectName(defaulthhAPo6.id())
///             .logstoreName("example")
///             .build());
///
///         var default_ = new Etl("default", EtlArgs.builder()
///             .project(defaulthhAPo6.id())
///             .description("etl-1740472705-185721")
///             .configuration(EtlConfigurationArgs.builder()
///                 .script("* | extend a=1")
///                 .lang("SPL")
///                 .roleArn(name)
///                 .sinks(EtlConfigurationSinkArgs.builder()
///                     .name("11111")
///                     .endpoint("cn-hangzhou-intranet.log.aliyuncs.com")
///                     .project("gy-hangzhou-huolang-1")
///                     .logstore("gy-rm2")
///                     .datasets("__UNNAMED__")
///                     .roleArn(name)
///                     .build())
///                 .logstore(defaultzWKLkp.logstoreName())
///                 .fromTime(1706771697)
///                 .toTime(1738394097)
///                 .build())
///             .jobName("etl-1740472705-185721")
///             .displayName("etl-1740472705-185721")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaulthhAPo6:
///     type: alicloud:log:Project
///     properties:
///       description: terraform-etl-example-813
///       projectName: terraform-etl-example-330
///   defaultzWKLkp:
///     type: alicloud:log:Store
///     properties:
///       hotTtl: '8'
///       retentionPeriod: '30'
///       shardCount: '2'
///       projectName: ${defaulthhAPo6.id}
///       logstoreName: example
///   default:
///     type: alicloud:sls:Etl
///     properties:
///       project: ${defaulthhAPo6.id}
///       description: etl-1740472705-185721
///       configuration:
///         script: '* | extend a=1'
///         lang: SPL
///         roleArn: ${name}
///         sinks:
///           - name: '11111'
///             endpoint: cn-hangzhou-intranet.log.aliyuncs.com
///             project: gy-hangzhou-huolang-1
///             logstore: gy-rm2
///             datasets:
///               - __UNNAMED__
///             roleArn: ${name}
///         logstore: ${defaultzWKLkp.logstoreName}
///         fromTime: '1706771697'
///         toTime: '1738394097'
///       jobName: etl-1740472705-185721
///       displayName: etl-1740472705-185721
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log Service (SLS) Etl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sls/etl:Etl example <project>:<job_name>
/// ```
class Etl extends pulumi.CustomResource {
  /// Detailed configuration of the data processing task.   See `configuration` below.
  late final pulumi.Output<EtlConfiguration> configuration;

  /// The time when the task was created.
  late final pulumi.Output<int> createTime;

  /// Description of the data processing task.
  late final pulumi.Output<String?> description;

  /// The display name of the data processing task.
  late final pulumi.Output<String> displayName;

  /// The job name. Naming rules are as follows:
  /// - Job names must be unique within the same project.
  /// - Can only contain lowercase letters, digits, hyphens (-), and underscores (_).
  /// - Must start and end with a lowercase letter or digit.
  /// - Must be 2 to 64 characters in length.
  late final pulumi.Output<String> jobName;

  /// Project name.
  late final pulumi.Output<String> project;

  /// Task status.
  late final pulumi.Output<String> status;

  /// Creates a new [Etl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Etl]. {@macro pulumi_sls_etl_etl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Etl(String name, {EtlArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:sls/etl:Etl',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    configuration = registerOutput<EtlConfiguration>('configuration');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    jobName = registerOutput<String>('jobName');
    project = registerOutput<String>('project');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Etl] resource's state with the given [name] and [id].
  static Etl get(String name, pulumi.Input<String> id, {EtlState? state}) {
    return Etl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Etl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:sls/etl:Etl',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configuration = registerOutput<EtlConfiguration>('configuration');
    createTime = registerOutput<int>('createTime');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    jobName = registerOutput<String>('jobName');
    project = registerOutput<String>('project');
    status = registerOutput<String>('status');
  }
}
