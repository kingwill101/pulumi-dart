import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_tail_config_args.dart';
import 'log_tail_config_state.dart';

/// The Logtail access service is a log collection agent provided by Log Service.
/// You can use Logtail to collect logs from servers such as Alibaba Cloud Elastic
/// Compute Service (ECS) instances in real time in the Log Service console. [Refer to details](https://www.alibabacloud.com/help/doc-detail/29058.htm
/// )
///
/// > **NOTE:** Available since v1.93.0.
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
/// 		_, err = log.NewLogTailConfig(ctx, "example", &log.LogTailConfigArgs{
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing sls-logtail module
/// to create logtail config, machine group, install logtail on ECS instances and join instances into machine group one-click.
///
/// ## Import
///
/// Logtial config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/logTailConfig:LogTailConfig example tf-log:tf-log-store:tf-log-config
/// ```
class LogTailConfig extends pulumi.CustomResource {
  /// The logtail configure the required JSON files. ([Refer to details](https://www.alibabacloud.com/help/doc-detail/29058.htm))
  late final pulumi.Output<String> inputDetail;
  /// The input type. Currently only two types of files and plugin are supported.
  late final pulumi.Output<String> inputType;
  /// This parameter is auto generated by server, please do not fill in.
  late final pulumi.Output<String> lastModifyTime;
  /// The log sample of the Logtail configuration. The log size cannot exceed 1,000 bytes.
  late final pulumi.Output<String?> logSample;
  /// The log store name to the query index belongs.
  late final pulumi.Output<String> logstore;
  /// The Logtail configuration name, which is unique in the same project.
  late final pulumi.Output<String> name;
  /// The output type. Currently, only LogService is supported.
  late final pulumi.Output<String> outputType;
  /// The project name to the log store belongs.
  late final pulumi.Output<String> project;

  /// Creates a new [LogTailConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogTailConfig]. {@macro pulumi_log_log_tail_config_log_tail_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogTailConfig(
    String name, {
    LogTailConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/logTailConfig:LogTailConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.inputDetail = registerOutput<String>('inputDetail');
    this.inputType = registerOutput<String>('inputType');
    this.lastModifyTime = registerOutput<String>('lastModifyTime');
    this.logSample = registerOutput<String?>('logSample');
    this.logstore = registerOutput<String>('logstore');
    this.name = registerOutput<String>('name');
    this.outputType = registerOutput<String>('outputType');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [LogTailConfig] resource's state with the given [name] and [id].
  static LogTailConfig get(
    String name,
    pulumi.Input<String> id, {
    LogTailConfigState? state,
  }) {
    return LogTailConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogTailConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/logTailConfig:LogTailConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.inputDetail = registerOutput<String>('inputDetail');
    this.inputType = registerOutput<String>('inputType');
    this.lastModifyTime = registerOutput<String>('lastModifyTime');
    this.logSample = registerOutput<String?>('logSample');
    this.logstore = registerOutput<String>('logstore');
    this.name = registerOutput<String>('name');
    this.outputType = registerOutput<String>('outputType');
    this.project = registerOutput<String>('project');
  }
}
