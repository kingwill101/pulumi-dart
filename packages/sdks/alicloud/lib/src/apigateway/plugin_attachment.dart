import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_attachment_args.dart';
import 'plugin_attachment_state.dart';

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
/// const example = new alicloud.apigateway.Group("example", {
///     name: name,
///     description: name,
/// });
/// const exampleApi = new alicloud.apigateway.Api("example", {
///     groupId: example.id,
///     name: name,
///     description: name,
///     authType: "APP",
///     forceNonceCheck: false,
///     requestConfig: {
///         protocol: "HTTP",
///         method: "GET",
///         path: "/example/path",
///         mode: "MAPPING",
///     },
///     serviceType: "HTTP",
///     httpServiceConfig: {
///         address: "http://apigateway-backend.alicloudapi.com:8080",
///         method: "GET",
///         path: "/web/cloudapi",
///         timeout: 12,
///         aoneName: "cloudapi-openapi",
///     },
///     requestParameters: [{
///         name: "example",
///         type: "STRING",
///         required: "OPTIONAL",
///         "in": "QUERY",
///         inService: "QUERY",
///         nameService: "exampleservice",
///     }],
///     stageNames: [
///         "RELEASE",
///         "TEST",
///     ],
/// });
/// const examplePlugin = new alicloud.apigateway.Plugin("example", {
///     description: "tf_example",
///     pluginName: "tf_example",
///     pluginData: JSON.stringify({
///         allowOrigins: "api.foo.com",
///         allowMethods: "GET,POST,PUT,DELETE,HEAD,OPTIONS,PATCH",
///         allowHeaders: "Authorization,Accept,Accept-Ranges,Cache-Control,Range,Date,Content-Type,Content-Length,Content-MD5,User-Agent,X-Ca-Signature,X-Ca-Signature-Headers,X-Ca-Signature-Method,X-Ca-Key,X-Ca-Timestamp,X-Ca-Nonce,X-Ca-Stage,X-Ca-Request-Mode,x-ca-deviceid",
///         exposeHeaders: "Content-MD5,Server,Date,Latency,X-Ca-Request-Id,X-Ca-Error-Code,X-Ca-Error-Message",
///         maxAge: 172800,
///         allowCredentials: true,
///     }),
///     pluginType: "cors",
/// });
/// const examplePluginAttachment = new alicloud.apigateway.PluginAttachment("example", {
///     apiId: exampleApi.apiId,
///     groupId: example.id,
///     pluginId: examplePlugin.id,
///     stageName: "RELEASE",
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
/// example = alicloud.apigateway.Group("example",
///     name=name,
///     description=name)
/// example_api = alicloud.apigateway.Api("example",
///     group_id=example.id,
///     name=name,
///     description=name,
///     auth_type="APP",
///     force_nonce_check=False,
///     request_config={
///         "protocol": "HTTP",
///         "method": "GET",
///         "path": "/example/path",
///         "mode": "MAPPING",
///     },
///     service_type="HTTP",
///     http_service_config={
///         "address": "http://apigateway-backend.alicloudapi.com:8080",
///         "method": "GET",
///         "path": "/web/cloudapi",
///         "timeout": 12,
///         "aone_name": "cloudapi-openapi",
///     },
///     request_parameters=[{
///         "name": "example",
///         "type": "STRING",
///         "required": "OPTIONAL",
///         "in_": "QUERY",
///         "in_service": "QUERY",
///         "name_service": "exampleservice",
///     }],
///     stage_names=[
///         "RELEASE",
///         "TEST",
///     ])
/// example_plugin = alicloud.apigateway.Plugin("example",
///     description="tf_example",
///     plugin_name="tf_example",
///     plugin_data=json.dumps({
///         "allowOrigins": "api.foo.com",
///         "allowMethods": "GET,POST,PUT,DELETE,HEAD,OPTIONS,PATCH",
///         "allowHeaders": "Authorization,Accept,Accept-Ranges,Cache-Control,Range,Date,Content-Type,Content-Length,Content-MD5,User-Agent,X-Ca-Signature,X-Ca-Signature-Headers,X-Ca-Signature-Method,X-Ca-Key,X-Ca-Timestamp,X-Ca-Nonce,X-Ca-Stage,X-Ca-Request-Mode,x-ca-deviceid",
///         "exposeHeaders": "Content-MD5,Server,Date,Latency,X-Ca-Request-Id,X-Ca-Error-Code,X-Ca-Error-Message",
///         "maxAge": 172800,
///         "allowCredentials": True,
///     }),
///     plugin_type="cors")
/// example_plugin_attachment = alicloud.apigateway.PluginAttachment("example",
///     api_id=example_api.api_id,
///     group_id=example.id,
///     plugin_id=example_plugin.id,
///     stage_name="RELEASE")
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
///     var example = new AliCloud.ApiGateway.Group("example", new()
///     {
///         Name = name,
///         Description = name,
///     });
///
///     var exampleApi = new AliCloud.ApiGateway.Api("example", new()
///     {
///         GroupId = example.Id,
///         Name = name,
///         Description = name,
///         AuthType = "APP",
///         ForceNonceCheck = false,
///         RequestConfig = new AliCloud.ApiGateway.Inputs.ApiRequestConfigArgs
///         {
///             Protocol = "HTTP",
///             Method = "GET",
///             Path = "/example/path",
///             Mode = "MAPPING",
///         },
///         ServiceType = "HTTP",
///         HttpServiceConfig = new AliCloud.ApiGateway.Inputs.ApiHttpServiceConfigArgs
///         {
///             Address = "http://apigateway-backend.alicloudapi.com:8080",
///             Method = "GET",
///             Path = "/web/cloudapi",
///             Timeout = 12,
///             AoneName = "cloudapi-openapi",
///         },
///         RequestParameters = new[]
///         {
///             new AliCloud.ApiGateway.Inputs.ApiRequestParameterArgs
///             {
///                 Name = "example",
///                 Type = "STRING",
///                 Required = "OPTIONAL",
///                 In = "QUERY",
///                 InService = "QUERY",
///                 NameService = "exampleservice",
///             },
///         },
///         StageNames = new[]
///         {
///             "RELEASE",
///             "TEST",
///         },
///     });
///
///     var examplePlugin = new AliCloud.ApiGateway.Plugin("example", new()
///     {
///         Description = "tf_example",
///         PluginName = "tf_example",
///         PluginData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["allowOrigins"] = "api.foo.com",
///             ["allowMethods"] = "GET,POST,PUT,DELETE,HEAD,OPTIONS,PATCH",
///             ["allowHeaders"] = "Authorization,Accept,Accept-Ranges,Cache-Control,Range,Date,Content-Type,Content-Length,Content-MD5,User-Agent,X-Ca-Signature,X-Ca-Signature-Headers,X-Ca-Signature-Method,X-Ca-Key,X-Ca-Timestamp,X-Ca-Nonce,X-Ca-Stage,X-Ca-Request-Mode,x-ca-deviceid",
///             ["exposeHeaders"] = "Content-MD5,Server,Date,Latency,X-Ca-Request-Id,X-Ca-Error-Code,X-Ca-Error-Message",
///             ["maxAge"] = 172800,
///             ["allowCredentials"] = true,
///         }),
///         PluginType = "cors",
///     });
///
///     var examplePluginAttachment = new AliCloud.ApiGateway.PluginAttachment("example", new()
///     {
///         ApiId = exampleApi.ApiId,
///         GroupId = example.Id,
///         PluginId = examplePlugin.Id,
///         StageName = "RELEASE",
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
/// 		example, err := apigateway.NewGroup(ctx, "example", &apigateway.GroupArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApi, err := apigateway.NewApi(ctx, "example", &apigateway.ApiArgs{
/// 			GroupId:         example.ID(),
/// 			Name:            pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 			AuthType:        pulumi.String("APP"),
/// 			ForceNonceCheck: pulumi.Bool(false),
/// 			RequestConfig: &apigateway.ApiRequestConfigArgs{
/// 				Protocol: pulumi.String("HTTP"),
/// 				Method:   pulumi.String("GET"),
/// 				Path:     pulumi.String("/example/path"),
/// 				Mode:     pulumi.String("MAPPING"),
/// 			},
/// 			ServiceType: pulumi.String("HTTP"),
/// 			HttpServiceConfig: &apigateway.ApiHttpServiceConfigArgs{
/// 				Address:  pulumi.String("http://apigateway-backend.alicloudapi.com:8080"),
/// 				Method:   pulumi.String("GET"),
/// 				Path:     pulumi.String("/web/cloudapi"),
/// 				Timeout:  pulumi.Int(12),
/// 				AoneName: pulumi.String("cloudapi-openapi"),
/// 			},
/// 			RequestParameters: apigateway.ApiRequestParameterArray{
/// 				&apigateway.ApiRequestParameterArgs{
/// 					Name:        pulumi.String("example"),
/// 					Type:        pulumi.String("STRING"),
/// 					Required:    pulumi.String("OPTIONAL"),
/// 					In:          pulumi.String("QUERY"),
/// 					InService:   pulumi.String("QUERY"),
/// 					NameService: pulumi.String("exampleservice"),
/// 				},
/// 			},
/// 			StageNames: pulumi.StringArray{
/// 				pulumi.String("RELEASE"),
/// 				pulumi.String("TEST"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"allowOrigins":     "api.foo.com",
/// 			"allowMethods":     "GET,POST,PUT,DELETE,HEAD,OPTIONS,PATCH",
/// 			"allowHeaders":     "Authorization,Accept,Accept-Ranges,Cache-Control,Range,Date,Content-Type,Content-Length,Content-MD5,User-Agent,X-Ca-Signature,X-Ca-Signature-Headers,X-Ca-Signature-Method,X-Ca-Key,X-Ca-Timestamp,X-Ca-Nonce,X-Ca-Stage,X-Ca-Request-Mode,x-ca-deviceid",
/// 			"exposeHeaders":    "Content-MD5,Server,Date,Latency,X-Ca-Request-Id,X-Ca-Error-Code,X-Ca-Error-Message",
/// 			"maxAge":           172800,
/// 			"allowCredentials": true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		examplePlugin, err := apigateway.NewPlugin(ctx, "example", &apigateway.PluginArgs{
/// 			Description: pulumi.String("tf_example"),
/// 			PluginName:  pulumi.String("tf_example"),
/// 			PluginData:  pulumi.String(json0),
/// 			PluginType:  pulumi.String("cors"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewPluginAttachment(ctx, "example", &apigateway.PluginAttachmentArgs{
/// 			ApiId:     exampleApi.ApiId,
/// 			GroupId:   example.ID(),
/// 			PluginId:  examplePlugin.ID(),
/// 			StageName: pulumi.String("RELEASE"),
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
/// import com.pulumi.alicloud.apigateway.Group;
/// import com.pulumi.alicloud.apigateway.GroupArgs;
/// import com.pulumi.alicloud.apigateway.Api;
/// import com.pulumi.alicloud.apigateway.ApiArgs;
/// import com.pulumi.alicloud.apigateway.inputs.ApiRequestConfigArgs;
/// import com.pulumi.alicloud.apigateway.inputs.ApiHttpServiceConfigArgs;
/// import com.pulumi.alicloud.apigateway.inputs.ApiRequestParameterArgs;
/// import com.pulumi.alicloud.apigateway.Plugin;
/// import com.pulumi.alicloud.apigateway.PluginArgs;
/// import com.pulumi.alicloud.apigateway.PluginAttachment;
/// import com.pulumi.alicloud.apigateway.PluginAttachmentArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .name(name)
///             .description(name)
///             .build());
///
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .groupId(example.id())
///             .name(name)
///             .description(name)
///             .authType("APP")
///             .forceNonceCheck(false)
///             .requestConfig(ApiRequestConfigArgs.builder()
///                 .protocol("HTTP")
///                 .method("GET")
///                 .path("/example/path")
///                 .mode("MAPPING")
///                 .build())
///             .serviceType("HTTP")
///             .httpServiceConfig(ApiHttpServiceConfigArgs.builder()
///                 .address("http://apigateway-backend.alicloudapi.com:8080")
///                 .method("GET")
///                 .path("/web/cloudapi")
///                 .timeout(12)
///                 .aoneName("cloudapi-openapi")
///                 .build())
///             .requestParameters(ApiRequestParameterArgs.builder()
///                 .name("example")
///                 .type("STRING")
///                 .required("OPTIONAL")
///                 .in("QUERY")
///                 .inService("QUERY")
///                 .nameService("exampleservice")
///                 .build())
///             .stageNames(
///                 "RELEASE",
///                 "TEST")
///             .build());
///
///         var examplePlugin = new Plugin("examplePlugin", PluginArgs.builder()
///             .description("tf_example")
///             .pluginName("tf_example")
///             .pluginData(serializeJson(
///                 jsonObject(
///                     jsonProperty("allowOrigins", "api.foo.com"),
///                     jsonProperty("allowMethods", "GET,POST,PUT,DELETE,HEAD,OPTIONS,PATCH"),
///                     jsonProperty("allowHeaders", "Authorization,Accept,Accept-Ranges,Cache-Control,Range,Date,Content-Type,Content-Length,Content-MD5,User-Agent,X-Ca-Signature,X-Ca-Signature-Headers,X-Ca-Signature-Method,X-Ca-Key,X-Ca-Timestamp,X-Ca-Nonce,X-Ca-Stage,X-Ca-Request-Mode,x-ca-deviceid"),
///                     jsonProperty("exposeHeaders", "Content-MD5,Server,Date,Latency,X-Ca-Request-Id,X-Ca-Error-Code,X-Ca-Error-Message"),
///                     jsonProperty("maxAge", 172800),
///                     jsonProperty("allowCredentials", true)
///                 )))
///             .pluginType("cors")
///             .build());
///
///         var examplePluginAttachment = new PluginAttachment("examplePluginAttachment", PluginAttachmentArgs.builder()
///             .apiId(exampleApi.apiId())
///             .groupId(example.id())
///             .pluginId(examplePlugin.id())
///             .stageName("RELEASE")
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
///   example:
///     type: alicloud:apigateway:Group
///     properties:
///       name: ${name}
///       description: ${name}
///   exampleApi:
///     type: alicloud:apigateway:Api
///     name: example
///     properties:
///       groupId: ${example.id}
///       name: ${name}
///       description: ${name}
///       authType: APP
///       forceNonceCheck: false
///       requestConfig:
///         protocol: HTTP
///         method: GET
///         path: /example/path
///         mode: MAPPING
///       serviceType: HTTP
///       httpServiceConfig:
///         address: http://apigateway-backend.alicloudapi.com:8080
///         method: GET
///         path: /web/cloudapi
///         timeout: 12
///         aoneName: cloudapi-openapi
///       requestParameters:
///         - name: example
///           type: STRING
///           required: OPTIONAL
///           in: QUERY
///           inService: QUERY
///           nameService: exampleservice
///       stageNames:
///         - RELEASE
///         - TEST
///   examplePlugin:
///     type: alicloud:apigateway:Plugin
///     name: example
///     properties:
///       description: tf_example
///       pluginName: tf_example
///       pluginData:
///         fn::toJSON:
///           allowOrigins: api.foo.com
///           allowMethods: GET,POST,PUT,DELETE,HEAD,OPTIONS,PATCH
///           allowHeaders: Authorization,Accept,Accept-Ranges,Cache-Control,Range,Date,Content-Type,Content-Length,Content-MD5,User-Agent,X-Ca-Signature,X-Ca-Signature-Headers,X-Ca-Signature-Method,X-Ca-Key,X-Ca-Timestamp,X-Ca-Nonce,X-Ca-Stage,X-Ca-Request-Mode,x-ca-deviceid
///           exposeHeaders: Content-MD5,Server,Date,Latency,X-Ca-Request-Id,X-Ca-Error-Code,X-Ca-Error-Message
///           maxAge: 172800
///           allowCredentials: true
///       pluginType: cors
///   examplePluginAttachment:
///     type: alicloud:apigateway:PluginAttachment
///     name: example
///     properties:
///       apiId: ${exampleApi.apiId}
///       groupId: ${example.id}
///       pluginId: ${examplePlugin.id}
///       stageName: RELEASE
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class PluginAttachment extends pulumi.CustomResource {
  /// The api_id that plugin attaches to.
  late final pulumi.Output<String> apiId;

  /// The group that the api belongs to.
  late final pulumi.Output<String> groupId;

  /// The plugin that attaches to the api.
  late final pulumi.Output<String> pluginId;

  /// Stage that the plugin attaches to.
  late final pulumi.Output<String> stageName;

  /// Creates a new [PluginAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PluginAttachment]. {@macro pulumi_apigateway_plugin_attachment_plugin_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PluginAttachment(
    String name, {
    PluginAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:apigateway/pluginAttachment:PluginAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiId = registerOutput<String>('apiId');
    groupId = registerOutput<String>('groupId');
    pluginId = registerOutput<String>('pluginId');
    stageName = registerOutput<String>('stageName');
  }

  /// Gets an existing [PluginAttachment] resource's state with the given [name] and [id].
  static PluginAttachment get(
    String name,
    pulumi.Input<String> id, {
    PluginAttachmentState? state,
  }) {
    return PluginAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PluginAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:apigateway/pluginAttachment:PluginAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiId = registerOutput<String>('apiId');
    groupId = registerOutput<String>('groupId');
    pluginId = registerOutput<String>('pluginId');
    stageName = registerOutput<String>('stageName');
  }
}
