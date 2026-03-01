import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_args.dart';
import 'log_config_state.dart';

/// Provides a Api Gateway Log Config resource.
///
/// For information about Api Gateway Log Config and how to use it, see [What is Log Config](https://www.alibabacloud.com/help/en/api-gateway/latest/api-cloudapi-2016-07-14-createlogconfig).
///
/// > **NOTE:** Available since v1.185.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `${name}-${_default.result}`,
///     description: name,
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: example.projectName,
///     logstoreName: `${name}-${_default.result}`,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleLogConfig = new alicloud.apigateway.LogConfig("example", {
///     slsProject: example.projectName,
///     slsLogStore: exampleStore.logstoreName,
///     logType: "PROVIDER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"{name}-{default['result']}",
///     description=name)
/// example_store = alicloud.log.Store("example",
///     project_name=example.project_name,
///     logstore_name=f"{name}-{default['result']}",
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_log_config = alicloud.apigateway.LogConfig("example",
///     sls_project=example.project_name,
///     sls_log_store=example_store.logstore_name,
///     log_type="PROVIDER")
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
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"{name}-{@default.Result}",
///         Description = name,
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = $"{name}-{@default.Result}",
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleLogConfig = new AliCloud.ApiGateway.LogConfig("example", new()
///     {
///         SlsProject = example.ProjectName,
///         SlsLogStore = exampleStore.LogstoreName,
///         LogType = "PROVIDER",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewLogConfig(ctx, "example", &apigateway.LogConfigArgs{
/// 			SlsProject:  example.ProjectName,
/// 			SlsLogStore: exampleStore.LogstoreName,
/// 			LogType:     pulumi.String("PROVIDER"),
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
/// import com.pulumi.alicloud.apigateway.LogConfig;
/// import com.pulumi.alicloud.apigateway.LogConfigArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName(String.format("%s-%s", name,default_.result()))
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleLogConfig = new LogConfig("exampleLogConfig", LogConfigArgs.builder()
///             .slsProject(example.projectName())
///             .slsLogStore(exampleStore.logstoreName())
///             .logType("PROVIDER")
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
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: ${name}-${default.result}
///       description: ${name}
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: ${name}-${default.result}
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleLogConfig:
///     type: alicloud:apigateway:LogConfig
///     name: example
///     properties:
///       slsProject: ${example.projectName}
///       slsLogStore: ${exampleStore.logstoreName}
///       logType: PROVIDER
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Log Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/logConfig:LogConfig example <log_type>
/// ```
class LogConfig extends pulumi.CustomResource {
  /// The type the of log. Valid values: `PROVIDER`.
  late final pulumi.Output<String> logType;
  /// The name of the Log Store.
  late final pulumi.Output<String> slsLogStore;
  /// The name of the Project.
  late final pulumi.Output<String> slsProject;

  /// Creates a new [LogConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogConfig]. {@macro pulumi_apigateway_log_config_log_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogConfig(
    String name, {
    LogConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/logConfig:LogConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logType = registerOutput<String>('logType');
    this.slsLogStore = registerOutput<String>('slsLogStore');
    this.slsProject = registerOutput<String>('slsProject');
  }

  /// Gets an existing [LogConfig] resource's state with the given [name] and [id].
  static LogConfig get(
    String name,
    pulumi.Input<String> id, {
    LogConfigState? state,
  }) {
    return LogConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/logConfig:LogConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logType = registerOutput<String>('logType');
    this.slsLogStore = registerOutput<String>('slsLogStore');
    this.slsProject = registerOutput<String>('slsProject');
  }
}
