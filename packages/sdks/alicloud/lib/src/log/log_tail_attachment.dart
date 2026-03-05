import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_tail_attachment_args.dart';
import 'log_tail_attachment_state.dart';

/// The Logtail access service is a log collection agent provided by Log Service.
/// You can use Logtail to collect logs from servers such as Alibaba Cloud Elastic
/// Compute Service (ECS) instances in real time in the Log Service console. [Refer to details](https://www.alibabacloud.com/help/doc-detail/29058.htm)
///
/// This resource amis to attach one logtail configure to a machine group.
///
/// &gt; **NOTE:** One logtail configure can be attached to multiple machine groups and one machine group can attach several logtail configures.
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
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleLogTailConfig = new alicloud.log.LogTailConfig("example", {
///     project: example.projectName,
///     logstore: exampleStore.logstoreName,
///     inputType: "file",
///     name: "terraform-example",
///     outputType: "LogService",
///     inputDetail: `  \\t{
/// \\t\\t\\"logPath\\": \\"/logPath\\",
/// \\t\\t\\"filePattern\\": \\"access.log\\",
/// \\t\\t\\"logType\\": \\"json_log\\",
/// \\t\\t\\"topicFormat\\": \\"default\\",
/// \\t\\t\\"discardUnmatch\\": false,
/// \\t\\t\\"enableRawLog\\": true,
/// \\t\\t\\"fileEncoding\\": \\"gbk\\",
/// \\t\\t\\"maxDepth\\": 10
/// \\t}
/// `,
/// });
/// const exampleMachineGroup = new alicloud.log.MachineGroup("example", {
///     project: example.projectName,
///     name: "terraform-example",
///     identifyType: "ip",
///     topic: "terraform",
///     identifyLists: [
///         "10.0.0.1",
///         "10.0.0.2",
///     ],
/// });
/// const exampleLogTailAttachment = new alicloud.log.LogTailAttachment("example", {
///     project: example.projectName,
///     logtailConfigName: exampleLogTailConfig.name,
///     machineGroupName: exampleMachineGroup.name,
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
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_log_tail_config = alicloud.log.LogTailConfig("example",
///     project=example.project_name,
///     logstore=example_store.logstore_name,
///     input_type="file",
///     name="terraform-example",
///     output_type="LogService",
///     input_detail="""  \t{
/// \t\t\"logPath\": \"/logPath\",
/// \t\t\"filePattern\": \"access.log\",
/// \t\t\"logType\": \"json_log\",
/// \t\t\"topicFormat\": \"default\",
/// \t\t\"discardUnmatch\": false,
/// \t\t\"enableRawLog\": true,
/// \t\t\"fileEncoding\": \"gbk\",
/// \t\t\"maxDepth\": 10
/// \t}
/// """)
/// example_machine_group = alicloud.log.MachineGroup("example",
///     project=example.project_name,
///     name="terraform-example",
///     identify_type="ip",
///     topic="terraform",
///     identify_lists=[
///         "10.0.0.1",
///         "10.0.0.2",
///     ])
/// example_log_tail_attachment = alicloud.log.LogTailAttachment("example",
///     project=example.project_name,
///     logtail_config_name=example_log_tail_config.name,
///     machine_group_name=example_machine_group.name)
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
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleLogTailConfig = new AliCloud.Log.LogTailConfig("example", new()
///     {
///         Project = example.ProjectName,
///         Logstore = exampleStore.LogstoreName,
///         InputType = "file",
///         Name = "terraform-example",
///         OutputType = "LogService",
///         InputDetail = @"  \t{
/// \t\t\""logPath\"": \""/logPath\"",
/// \t\t\""filePattern\"": \""access.log\"",
/// \t\t\""logType\"": \""json_log\"",
/// \t\t\""topicFormat\"": \""default\"",
/// \t\t\""discardUnmatch\"": false,
/// \t\t\""enableRawLog\"": true,
/// \t\t\""fileEncoding\"": \""gbk\"",
/// \t\t\""maxDepth\"": 10
/// \t}
/// ",
///     });
///
///     var exampleMachineGroup = new AliCloud.Log.MachineGroup("example", new()
///     {
///         Project = example.ProjectName,
///         Name = "terraform-example",
///         IdentifyType = "ip",
///         Topic = "terraform",
///         IdentifyLists = new[]
///         {
///             "10.0.0.1",
///             "10.0.0.2",
///         },
///     });
///
///     var exampleLogTailAttachment = new AliCloud.Log.LogTailAttachment("example", new()
///     {
///         Project = example.ProjectName,
///         LogtailConfigName = exampleLogTailConfig.Name,
///         MachineGroupName = exampleMachineGroup.Name,
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
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogTailConfig, err := log.NewLogTailConfig(ctx, "example", &log.LogTailConfigArgs{
/// 			Project:    example.ProjectName,
/// 			Logstore:   exampleStore.LogstoreName,
/// 			InputType:  pulumi.String("file"),
/// 			Name:       pulumi.String("terraform-example"),
/// 			OutputType: pulumi.String("LogService"),
/// 			InputDetail: pulumi.String(`  \t{
/// \t\t\"logPath\": \"/logPath\",
/// \t\t\"filePattern\": \"access.log\",
/// \t\t\"logType\": \"json_log\",
/// \t\t\"topicFormat\": \"default\",
/// \t\t\"discardUnmatch\": false,
/// \t\t\"enableRawLog\": true,
/// \t\t\"fileEncoding\": \"gbk\",
/// \t\t\"maxDepth\": 10
/// \t}
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMachineGroup, err := log.NewMachineGroup(ctx, "example", &log.MachineGroupArgs{
/// 			Project:      example.ProjectName,
/// 			Name:         pulumi.String("terraform-example"),
/// 			IdentifyType: pulumi.String("ip"),
/// 			Topic:        pulumi.String("terraform"),
/// 			IdentifyLists: pulumi.StringArray{
/// 				pulumi.String("10.0.0.1"),
/// 				pulumi.String("10.0.0.2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewLogTailAttachment(ctx, "example", &log.LogTailAttachmentArgs{
/// 			Project:           example.ProjectName,
/// 			LogtailConfigName: exampleLogTailConfig.Name,
/// 			MachineGroupName:  exampleMachineGroup.Name,
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
/// import com.pulumi.alicloud.log.LogTailConfig;
/// import com.pulumi.alicloud.log.LogTailConfigArgs;
/// import com.pulumi.alicloud.log.MachineGroup;
/// import com.pulumi.alicloud.log.MachineGroupArgs;
/// import com.pulumi.alicloud.log.LogTailAttachment;
/// import com.pulumi.alicloud.log.LogTailAttachmentArgs;
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
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleLogTailConfig = new LogTailConfig("exampleLogTailConfig", LogTailConfigArgs.builder()
///             .project(example.projectName())
///             .logstore(exampleStore.logstoreName())
///             .inputType("file")
///             .name("terraform-example")
///             .outputType("LogService")
///             .inputDetail("""
///   \t{
/// \t\t\"logPath\": \"/logPath\",
/// \t\t\"filePattern\": \"access.log\",
/// \t\t\"logType\": \"json_log\",
/// \t\t\"topicFormat\": \"default\",
/// \t\t\"discardUnmatch\": false,
/// \t\t\"enableRawLog\": true,
/// \t\t\"fileEncoding\": \"gbk\",
/// \t\t\"maxDepth\": 10
/// \t}
///             """)
///             .build());
///
///         var exampleMachineGroup = new MachineGroup("exampleMachineGroup", MachineGroupArgs.builder()
///             .project(example.projectName())
///             .name("terraform-example")
///             .identifyType("ip")
///             .topic("terraform")
///             .identifyLists(
///                 "10.0.0.1",
///                 "10.0.0.2")
///             .build());
///
///         var exampleLogTailAttachment = new LogTailAttachment("exampleLogTailAttachment", LogTailAttachmentArgs.builder()
///             .project(example.projectName())
///             .logtailConfigName(exampleLogTailConfig.name())
///             .machineGroupName(exampleMachineGroup.name())
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
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleLogTailConfig:
///     type: alicloud:log:LogTailConfig
///     name: example
///     properties:
///       project: ${example.projectName}
///       logstore: ${exampleStore.logstoreName}
///       inputType: file
///       name: terraform-example
///       outputType: LogService
///       inputDetail: |2
///           \t{
///         \t\t\"logPath\": \"/logPath\",
///         \t\t\"filePattern\": \"access.log\",
///         \t\t\"logType\": \"json_log\",
///         \t\t\"topicFormat\": \"default\",
///         \t\t\"discardUnmatch\": false,
///         \t\t\"enableRawLog\": true,
///         \t\t\"fileEncoding\": \"gbk\",
///         \t\t\"maxDepth\": 10
///         \t}
///   exampleMachineGroup:
///     type: alicloud:log:MachineGroup
///     name: example
///     properties:
///       project: ${example.projectName}
///       name: terraform-example
///       identifyType: ip
///       topic: terraform
///       identifyLists:
///         - 10.0.0.1
///         - 10.0.0.2
///   exampleLogTailAttachment:
///     type: alicloud:log:LogTailAttachment
///     name: example
///     properties:
///       project: ${example.projectName}
///       logtailConfigName: ${exampleLogTailConfig.name}
///       machineGroupName: ${exampleMachineGroup.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Logtial to machine group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/logTailAttachment:LogTailAttachment example tf-log:tf-log-config:tf-log-machine-group
/// ```
class LogTailAttachment extends pulumi.CustomResource {
  /// The Logtail configuration name, which is unique in the same project.
  late final pulumi.Output<String> logtailConfigName;
  /// The machine group name, which is unique in the same project.
  late final pulumi.Output<String> machineGroupName;
  /// The project name to the log store belongs.
  late final pulumi.Output<String> project;

  /// Creates a new [LogTailAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogTailAttachment]. {@macro pulumi_log_log_tail_attachment_log_tail_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogTailAttachment(
    String name, {
    LogTailAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/logTailAttachment:LogTailAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logtailConfigName = registerOutput<String>('logtailConfigName');
    machineGroupName = registerOutput<String>('machineGroupName');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [LogTailAttachment] resource's state with the given [name] and [id].
  static LogTailAttachment get(
    String name,
    pulumi.Input<String> id, {
    LogTailAttachmentState? state,
  }) {
    return LogTailAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogTailAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/logTailAttachment:LogTailAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logtailConfigName = registerOutput<String>('logtailConfigName');
    machineGroupName = registerOutput<String>('machineGroupName');
    project = registerOutput<String>('project');
  }
}
