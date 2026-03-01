import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';

/// Provides a PAI Service resource.
///
/// Eas service instance.
///
/// For information about PAI Service and how to use it, see [What is Service](https://www.alibabacloud.com/help/en/pai/developer-reference/api-eas-2021-07-01-createservice).
///
/// > **NOTE:** Field `labels` has been removed since version 1.245.0. Please use new field `tags`.
///
/// > **NOTE:** Available since v1.238.0.
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
/// const _default = new alicloud.pai.Service("default", {
///     develop: "false",
///     serviceConfig: JSON.stringify({
///         metadata: {
///             cpu: 1,
///             gpu: 0,
///             instance: 1,
///             memory: 2000,
///             name: "tfexample",
///             rpc: {
///                 keepalive: 70000,
///             },
///         },
///         model_path: "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
///         processor_entry: "libecho.so",
///         processor_path: "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
///         processor_type: "cpp",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.pai.Service("default",
///     develop="false",
///     service_config=json.dumps({
///         "metadata": {
///             "cpu": 1,
///             "gpu": 0,
///             "instance": 1,
///             "memory": 2000,
///             "name": "tfexample",
///             "rpc": {
///                 "keepalive": 70000,
///             },
///         },
///         "model_path": "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
///         "processor_entry": "libecho.so",
///         "processor_path": "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
///         "processor_type": "cpp",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Pai.Service("default", new()
///     {
///         Develop = "false",
///         ServiceConfig = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["metadata"] = new Dictionary<string, object?>
///             {
///                 ["cpu"] = 1,
///                 ["gpu"] = 0,
///                 ["instance"] = 1,
///                 ["memory"] = 2000,
///                 ["name"] = "tfexample",
///                 ["rpc"] = new Dictionary<string, object?>
///                 {
///                     ["keepalive"] = 70000,
///                 },
///             },
///             ["model_path"] = "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
///             ["processor_entry"] = "libecho.so",
///             ["processor_path"] = "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
///             ["processor_type"] = "cpp",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
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
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"metadata": map[string]interface{}{
/// 				"cpu":      1,
/// 				"gpu":      0,
/// 				"instance": 1,
/// 				"memory":   2000,
/// 				"name":     "tfexample",
/// 				"rpc": map[string]interface{}{
/// 					"keepalive": 70000,
/// 				},
/// 			},
/// 			"model_path":      "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
/// 			"processor_entry": "libecho.so",
/// 			"processor_path":  "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz",
/// 			"processor_type":  "cpp",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = pai.NewService(ctx, "default", &pai.ServiceArgs{
/// 			Develop:       pulumi.String("false"),
/// 			ServiceConfig: pulumi.String(json0),
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
/// import com.pulumi.alicloud.pai.Service;
/// import com.pulumi.alicloud.pai.ServiceArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .develop("false")
///             .serviceConfig(serializeJson(
///                 jsonObject(
///                     jsonProperty("metadata", jsonObject(
///                         jsonProperty("cpu", 1),
///                         jsonProperty("gpu", 0),
///                         jsonProperty("instance", 1),
///                         jsonProperty("memory", 2000),
///                         jsonProperty("name", "tfexample"),
///                         jsonProperty("rpc", jsonObject(
///                             jsonProperty("keepalive", 70000)
///                         ))
///                     )),
///                     jsonProperty("model_path", "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz"),
///                     jsonProperty("processor_entry", "libecho.so"),
///                     jsonProperty("processor_path", "http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz"),
///                     jsonProperty("processor_type", "cpp")
///                 )))
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
///     type: alicloud:pai:Service
///     properties:
///       develop: 'false'
///       serviceConfig:
///         fn::toJSON:
///           metadata:
///             cpu: 1
///             gpu: 0
///             instance: 1
///             memory: 2000
///             name: tfexample
///             rpc:
///               keepalive: 70000
///           model_path: http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz
///           processor_entry: libecho.so
///           processor_path: http://eas-data.oss-cn-shanghai.aliyuncs.com/processors/echo_processor_release.tar.gz
///           processor_type: cpp
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/service:Service example <id>
/// ```
class Service extends pulumi.CustomResource {
  /// Creation time of the service
  late final pulumi.Output<String> createTime;
  /// Whether to enter the development mode.
  late final pulumi.Output<String?> develop;
  /// The region ID of the resource
  late final pulumi.Output<String> regionId;
  /// Service configuration information. Please refer to https://www.alibabacloud.com/help/en/pai/user-guide/parameters-of-model-services
  late final pulumi.Output<String> serviceConfig;
  /// Service Current Status.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Workspace id
  late final pulumi.Output<String?> workspaceId;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_pai_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pai/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.develop = registerOutput<String?>('develop');
    this.regionId = registerOutput<String>('regionId');
    this.serviceConfig = registerOutput<String>('serviceConfig');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.workspaceId = registerOutput<String?>('workspaceId');
  }
}
