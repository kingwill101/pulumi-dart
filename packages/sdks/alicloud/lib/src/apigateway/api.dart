import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';
import 'api_constant_parameter.dart';
import 'api_fc_service_config.dart';
import 'api_http_service_config.dart';
import 'api_http_vpc_service_config.dart';
import 'api_mock_service_config.dart';
import 'api_request_config.dart';
import 'api_request_parameter.dart';
import 'api_state.dart';
import 'api_system_parameter.dart';

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
/// const example = new alicloud.apigateway.Group("example", {
///     name: "tf-example",
///     description: "tf-example",
///     basePath: "/",
/// });
/// const exampleApi = new alicloud.apigateway.Api("example", {
///     groupId: example.id,
///     name: "tf-example",
///     description: "tf-example",
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.apigateway.Group("example",
///     name="tf-example",
///     description="tf-example",
///     base_path="/")
/// example_api = alicloud.apigateway.Api("example",
///     group_id=example.id,
///     name="tf-example",
///     description="tf-example",
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
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.ApiGateway.Group("example", new()
///     {
///         Name = "tf-example",
///         Description = "tf-example",
///         BasePath = "/",
///     });
///
///     var exampleApi = new AliCloud.ApiGateway.Api("example", new()
///     {
///         GroupId = example.Id,
///         Name = "tf-example",
///         Description = "tf-example",
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apigateway.NewGroup(ctx, "example", &apigateway.GroupArgs{
/// 			Name:        pulumi.String("tf-example"),
/// 			Description: pulumi.String("tf-example"),
/// 			BasePath:    pulumi.String("/"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewApi(ctx, "example", &apigateway.ApiArgs{
/// 			GroupId:         example.ID(),
/// 			Name:            pulumi.String("tf-example"),
/// 			Description:     pulumi.String("tf-example"),
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
///         var example = new Group("example", GroupArgs.builder()
///             .name("tf-example")
///             .description("tf-example")
///             .basePath("/")
///             .build());
///
///         var exampleApi = new Api("exampleApi", ApiArgs.builder()
///             .groupId(example.id())
///             .name("tf-example")
///             .description("tf-example")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:apigateway:Group
///     properties:
///       name: tf-example
///       description: tf-example
///       basePath: /
///   exampleApi:
///     type: alicloud:apigateway:Api
///     name: example
///     properties:
///       groupId: ${example.id}
///       name: tf-example
///       description: tf-example
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api gateway api can be imported using the id.Format to `<API Group Id>:<API Id>` e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/api:Api example "ab2351f2ce904edaa8d92a0510832b91:e4f728fca5a94148b023b99a3e5d0b62"
/// ```
class Api extends pulumi.CustomResource {
  /// The ID of the api of api gateway.
  late final pulumi.Output<String> apiId;
  /// The authorization Type including APP and ANONYMOUS. Defaults to null.
  late final pulumi.Output<String> authType;
  /// constant_parameters defines the constant parameters of the api. See `constant_parameters` below.
  late final pulumi.Output<List<ApiConstantParameter>?> constantParameters;
  /// The description of the api. Defaults to null.
  late final pulumi.Output<String> description;
  /// fc_service_config defines the config when service_type selected 'FunctionCompute'. See `fc_service_config` below.
  late final pulumi.Output<ApiFcServiceConfig?> fcServiceConfig;
  /// Whether to prevent API replay attack. Default value: `false`.
  late final pulumi.Output<bool> forceNonceCheck;
  /// The api gateway that the api belongs to. Defaults to null.
  late final pulumi.Output<String> groupId;
  /// http_service_config defines the config when service_type selected 'HTTP'. See `http_service_config` below.
  late final pulumi.Output<ApiHttpServiceConfig?> httpServiceConfig;
  /// http_vpc_service_config defines the config when service_type selected 'HTTP-VPC'. See `http_vpc_service_config` below.
  late final pulumi.Output<ApiHttpVpcServiceConfig?> httpVpcServiceConfig;
  /// http_service_config defines the config when service_type selected 'MOCK'. See `mock_service_config` below.
  late final pulumi.Output<ApiMockServiceConfig?> mockServiceConfig;
  /// The name of the api gateway api. Defaults to null.
  late final pulumi.Output<String> name;
  /// Request_config defines how users can send requests to your API. See `request_config` below.
  late final pulumi.Output<ApiRequestConfig> requestConfig;
  /// request_parameters defines the request parameters of the api. See `request_parameters` below.
  late final pulumi.Output<List<ApiRequestParameter>?> requestParameters;
  /// The type of backend service. Type including HTTP, VPC, FunctionCompute and MOCK. Defaults to null.
  late final pulumi.Output<String> serviceType;
  /// Stages that the api need to be deployed. Valid value: `RELEASE`,`PRE`,`TEST`.
  late final pulumi.Output<List<String>?> stageNames;
  /// system_parameters defines the system parameters of the api. See `system_parameters` below.
  late final pulumi.Output<List<ApiSystemParameter>?> systemParameters;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apigateway_api_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(
    String name, {
    ApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/api:Api',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.authType = registerOutput<String>('authType');
    this.constantParameters = registerOutput<List<ApiConstantParameter>?>('constantParameters');
    this.description = registerOutput<String>('description');
    this.fcServiceConfig = registerOutput<ApiFcServiceConfig?>('fcServiceConfig');
    this.forceNonceCheck = registerOutput<bool>('forceNonceCheck');
    this.groupId = registerOutput<String>('groupId');
    this.httpServiceConfig = registerOutput<ApiHttpServiceConfig?>('httpServiceConfig');
    this.httpVpcServiceConfig = registerOutput<ApiHttpVpcServiceConfig?>('httpVpcServiceConfig');
    this.mockServiceConfig = registerOutput<ApiMockServiceConfig?>('mockServiceConfig');
    this.name = registerOutput<String>('name');
    this.requestConfig = registerOutput<ApiRequestConfig>('requestConfig');
    this.requestParameters = registerOutput<List<ApiRequestParameter>?>('requestParameters');
    this.serviceType = registerOutput<String>('serviceType');
    this.stageNames = registerOutput<List<String>?>('stageNames');
    this.systemParameters = registerOutput<List<ApiSystemParameter>?>('systemParameters');
  }

  /// Gets an existing [Api] resource's state with the given [name] and [id].
  static Api get(
    String name,
    pulumi.Input<String> id, {
    ApiState? state,
  }) {
    return Api._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Api._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/api:Api',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.authType = registerOutput<String>('authType');
    this.constantParameters = registerOutput<List<ApiConstantParameter>?>('constantParameters');
    this.description = registerOutput<String>('description');
    this.fcServiceConfig = registerOutput<ApiFcServiceConfig?>('fcServiceConfig');
    this.forceNonceCheck = registerOutput<bool>('forceNonceCheck');
    this.groupId = registerOutput<String>('groupId');
    this.httpServiceConfig = registerOutput<ApiHttpServiceConfig?>('httpServiceConfig');
    this.httpVpcServiceConfig = registerOutput<ApiHttpVpcServiceConfig?>('httpVpcServiceConfig');
    this.mockServiceConfig = registerOutput<ApiMockServiceConfig?>('mockServiceConfig');
    this.name = registerOutput<String>('name');
    this.requestConfig = registerOutput<ApiRequestConfig>('requestConfig');
    this.requestParameters = registerOutput<List<ApiRequestParameter>?>('requestParameters');
    this.serviceType = registerOutput<String>('serviceType');
    this.stageNames = registerOutput<List<String>?>('stageNames');
    this.systemParameters = registerOutput<List<ApiSystemParameter>?>('systemParameters');
  }
}
