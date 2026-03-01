import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_args.dart';
import 'plugin_state.dart';

/// Provides a Api Gateway Plugin resource.
///
/// For information about Api Gateway Plugin and how to use it, see [What is Plugin](https://www.alibabacloud.com/help/en/api-gateway/developer-reference/api-cloudapi-2016-07-14-createplugin).
///
/// > **NOTE:** Available since v1.187.0.
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
/// const name = config.get("name") || "terraform_example";
/// const _default = new alicloud.apigateway.Plugin("default", {
///     description: name,
///     pluginName: name,
///     pluginData: JSON.stringify({
///         routes: [
///             {
///                 name: "Vip",
///                 condition: "$CaAppId = 123456",
///                 backend: {
///                     type: "HTTP-VPC",
///                     vpcAccessName: "slbAccessForVip",
///                 },
///             },
///             {
///                 name: "MockForOldClient",
///                 condition: "$ClientVersion < '2.0.5'",
///                 backend: {
///                     type: "MOCK",
///                     statusCode: 400,
///                     mockBody: "This version is not supported!!!",
///                 },
///             },
///             {
///                 name: "BlueGreenPercent05",
///                 condition: "1 = 1",
///                 backend: {
///                     type: "HTTP",
///                     address: "https://beta-version.api.foo.com",
///                 },
///                 "constant-parameters": [{
///                     name: "x-route-blue-green",
///                     location: "header",
///                     value: "route-blue-green",
///                 }],
///             },
///         ],
///     }),
///     pluginType: "routing",
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
///     name = "terraform_example"
/// default = alicloud.apigateway.Plugin("default",
///     description=name,
///     plugin_name=name,
///     plugin_data=json.dumps({
///         "routes": [
///             {
///                 "name": "Vip",
///                 "condition": "$CaAppId = 123456",
///                 "backend": {
///                     "type": "HTTP-VPC",
///                     "vpcAccessName": "slbAccessForVip",
///                 },
///             },
///             {
///                 "name": "MockForOldClient",
///                 "condition": "$ClientVersion < '2.0.5'",
///                 "backend": {
///                     "type": "MOCK",
///                     "statusCode": 400,
///                     "mockBody": "This version is not supported!!!",
///                 },
///             },
///             {
///                 "name": "BlueGreenPercent05",
///                 "condition": "1 = 1",
///                 "backend": {
///                     "type": "HTTP",
///                     "address": "https://beta-version.api.foo.com",
///                 },
///                 "constant-parameters": [{
///                     "name": "x-route-blue-green",
///                     "location": "header",
///                     "value": "route-blue-green",
///                 }],
///             },
///         ],
///     }),
///     plugin_type="routing")
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
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new AliCloud.ApiGateway.Plugin("default", new()
///     {
///         Description = name,
///         PluginName = name,
///         PluginData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["routes"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "Vip",
///                     ["condition"] = "$CaAppId = 123456",
///                     ["backend"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "HTTP-VPC",
///                         ["vpcAccessName"] = "slbAccessForVip",
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "MockForOldClient",
///                     ["condition"] = "$ClientVersion < '2.0.5'",
///                     ["backend"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "MOCK",
///                         ["statusCode"] = 400,
///                         ["mockBody"] = "This version is not supported!!!",
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "BlueGreenPercent05",
///                     ["condition"] = "1 = 1",
///                     ["backend"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "HTTP",
///                         ["address"] = "https://beta-version.api.foo.com",
///                     },
///                     ["constant-parameters"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["name"] = "x-route-blue-green",
///                             ["location"] = "header",
///                             ["value"] = "route-blue-green",
///                         },
///                     },
///                 },
///             },
///         }),
///         PluginType = "routing",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"routes": []interface{}{
/// 				map[string]interface{}{
/// 					"name":      "Vip",
/// 					"condition": "$CaAppId = 123456",
/// 					"backend": map[string]interface{}{
/// 						"type":          "HTTP-VPC",
/// 						"vpcAccessName": "slbAccessForVip",
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"name":      "MockForOldClient",
/// 					"condition": "$ClientVersion < '2.0.5'",
/// 					"backend": map[string]interface{}{
/// 						"type":       "MOCK",
/// 						"statusCode": 400,
/// 						"mockBody":   "This version is not supported!!!",
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"name":      "BlueGreenPercent05",
/// 					"condition": "1 = 1",
/// 					"backend": map[string]interface{}{
/// 						"type":    "HTTP",
/// 						"address": "https://beta-version.api.foo.com",
/// 					},
/// 					"constant-parameters": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"name":     "x-route-blue-green",
/// 							"location": "header",
/// 							"value":    "route-blue-green",
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = apigateway.NewPlugin(ctx, "default", &apigateway.PluginArgs{
/// 			Description: pulumi.String(name),
/// 			PluginName:  pulumi.String(name),
/// 			PluginData:  pulumi.String(json0),
/// 			PluginType:  pulumi.String("routing"),
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
/// import com.pulumi.alicloud.apigateway.Plugin;
/// import com.pulumi.alicloud.apigateway.PluginArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var default_ = new Plugin("default", PluginArgs.builder()
///             .description(name)
///             .pluginName(name)
///             .pluginData(serializeJson(
///                 jsonObject(
///                     jsonProperty("routes", jsonArray(
///                         jsonObject(
///                             jsonProperty("name", "Vip"),
///                             jsonProperty("condition", "$CaAppId = 123456"),
///                             jsonProperty("backend", jsonObject(
///                                 jsonProperty("type", "HTTP-VPC"),
///                                 jsonProperty("vpcAccessName", "slbAccessForVip")
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("name", "MockForOldClient"),
///                             jsonProperty("condition", "$ClientVersion < '2.0.5'"),
///                             jsonProperty("backend", jsonObject(
///                                 jsonProperty("type", "MOCK"),
///                                 jsonProperty("statusCode", 400),
///                                 jsonProperty("mockBody", "This version is not supported!!!")
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("name", "BlueGreenPercent05"),
///                             jsonProperty("condition", "1 = 1"),
///                             jsonProperty("backend", jsonObject(
///                                 jsonProperty("type", "HTTP"),
///                                 jsonProperty("address", "https://beta-version.api.foo.com")
///                             )),
///                             jsonProperty("constant-parameters", jsonArray(jsonObject(
///                                 jsonProperty("name", "x-route-blue-green"),
///                                 jsonProperty("location", "header"),
///                                 jsonProperty("value", "route-blue-green")
///                             )))
///                         )
///                     ))
///                 )))
///             .pluginType("routing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   default:
///     type: alicloud:apigateway:Plugin
///     properties:
///       description: ${name}
///       pluginName: ${name}
///       pluginData:
///         fn::toJSON:
///           routes:
///             - name: Vip
///               condition: $CaAppId = 123456
///               backend:
///                 type: HTTP-VPC
///                 vpcAccessName: slbAccessForVip
///             - name: MockForOldClient
///               condition: $ClientVersion < '2.0.5'
///               backend:
///                 type: MOCK
///                 statusCode: 400
///                 mockBody: This version is not supported!!!
///             - name: BlueGreenPercent05
///               condition: 1 = 1
///               backend:
///                 type: HTTP
///                 address: https://beta-version.api.foo.com
///               constant-parameters:
///                 - name: x-route-blue-green
///                   location: header
///                   value: route-blue-green
///       pluginType: routing
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Plugin can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/plugin:Plugin example <id>
/// ```
class Plugin extends pulumi.CustomResource {
  /// Create time.
  late final pulumi.Output<String> createTime;
  /// The description of the plug-in, which cannot exceed 200 characters.
  late final pulumi.Output<String?> description;
  /// The definition statement of the plug-in. Plug-in definition statements in the JSON and YAML formats are supported.
  late final pulumi.Output<String> pluginData;
  /// The name of the plug-in that you want to create. It can contain uppercase English letters, lowercase English letters, Chinese characters, numbers, and underscores (_). It must be 4 to 50 characters in length and cannot start with an underscore (_).
  late final pulumi.Output<String> pluginName;
  /// The type of the plug-in. Valid values:
  /// - "trafficControl"
  /// - "ipControl"
  /// - "backendSignature"
  /// - "jwtAuth"
  /// - "basicAuth"
  /// - "cors"
  /// - "caching"
  /// - "routing"
  /// - "accessControl"
  /// - "errorMapping"
  /// - "circuitBreaker"
  /// - "remoteAuth"
  /// - "logMask"
  /// - "transformer".
  late final pulumi.Output<String> pluginType;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Plugin].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Plugin]. {@macro pulumi_apigateway_plugin_plugin_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Plugin(
    String name, {
    PluginArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/plugin:Plugin',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.pluginData = registerOutput<String>('pluginData');
    this.pluginName = registerOutput<String>('pluginName');
    this.pluginType = registerOutput<String>('pluginType');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Plugin] resource's state with the given [name] and [id].
  static Plugin get(
    String name,
    pulumi.Input<String> id, {
    PluginState? state,
  }) {
    return Plugin._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Plugin._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/plugin:Plugin',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.pluginData = registerOutput<String>('pluginData');
    this.pluginName = registerOutput<String>('pluginName');
    this.pluginType = registerOutput<String>('pluginType');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
