import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_attachment_args.dart';
import 'app_attachment_state.dart';

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
/// const exampleApp = new alicloud.apigateway.App("example", {
///     name: name,
///     description: name,
/// });
/// const exampleAppAttachment = new alicloud.apigateway.AppAttachment("example", {
///     apiId: exampleApi.apiId,
///     groupId: example.id,
///     appId: exampleApp.id,
///     stageName: "PRE",
/// });
/// ```
/// ```python
/// import pulumi
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
/// example_app = alicloud.apigateway.App("example",
///     name=name,
///     description=name)
/// example_app_attachment = alicloud.apigateway.AppAttachment("example",
///     api_id=example_api.api_id,
///     group_id=example.id,
///     app_id=example_app.id,
///     stage_name="PRE")
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
///     var exampleApp = new AliCloud.ApiGateway.App("example", new()
///     {
///         Name = name,
///         Description = name,
///     });
///
///     var exampleAppAttachment = new AliCloud.ApiGateway.AppAttachment("example", new()
///     {
///         ApiId = exampleApi.ApiId,
///         GroupId = example.Id,
///         AppId = exampleApp.Id,
///         StageName = "PRE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		exampleApp, err := apigateway.NewApp(ctx, "example", &apigateway.AppArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewAppAttachment(ctx, "example", &apigateway.AppAttachmentArgs{
/// 			ApiId:     exampleApi.ApiId,
/// 			GroupId:   example.ID(),
/// 			AppId:     exampleApp.ID(),
/// 			StageName: pulumi.String("PRE"),
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
/// import com.pulumi.alicloud.apigateway.App;
/// import com.pulumi.alicloud.apigateway.AppArgs;
/// import com.pulumi.alicloud.apigateway.AppAttachment;
/// import com.pulumi.alicloud.apigateway.AppAttachmentArgs;
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
///         var exampleApp = new App("exampleApp", AppArgs.builder()
///             .name(name)
///             .description(name)
///             .build());
///
///         var exampleAppAttachment = new AppAttachment("exampleAppAttachment", AppAttachmentArgs.builder()
///             .apiId(exampleApi.apiId())
///             .groupId(example.id())
///             .appId(exampleApp.id())
///             .stageName("PRE")
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
///   exampleApp:
///     type: alicloud:apigateway:App
///     name: example
///     properties:
///       name: ${name}
///       description: ${name}
///   exampleAppAttachment:
///     type: alicloud:apigateway:AppAttachment
///     name: example
///     properties:
///       apiId: ${exampleApi.apiId}
///       groupId: ${example.id}
///       appId: ${exampleApp.id}
///       stageName: PRE
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class AppAttachment extends pulumi.CustomResource {
  /// The api_id that app apply to access.
  late final pulumi.Output<String> apiId;
  /// The app that apply to the authorization.
  late final pulumi.Output<String> appId;
  /// The group that the api belongs to.
  late final pulumi.Output<String> groupId;
  /// Stage that the app apply to access.
  late final pulumi.Output<String> stageName;

  /// Creates a new [AppAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppAttachment]. {@macro pulumi_apigateway_app_attachment_app_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppAttachment(
    String name, {
    AppAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/appAttachment:AppAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    appId = registerOutput<String>('appId');
    groupId = registerOutput<String>('groupId');
    stageName = registerOutput<String>('stageName');
  }

  /// Gets an existing [AppAttachment] resource's state with the given [name] and [id].
  static AppAttachment get(
    String name,
    pulumi.Input<String> id, {
    AppAttachmentState? state,
  }) {
    return AppAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/appAttachment:AppAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    appId = registerOutput<String>('appId');
    groupId = registerOutput<String>('groupId');
    stageName = registerOutput<String>('stageName');
  }
}
