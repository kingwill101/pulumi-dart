import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_config_args.dart';
import 'gateway_route_config_properties_response.dart';
import 'system_data_response.dart';

/// Spring Cloud Gateway route config resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GatewayRouteConfigs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gatewayRouteConfig = new AzureNative.AppPlatform.GatewayRouteConfig("gatewayRouteConfig", new()
///     {
///         GatewayName = "default",
///         Properties = new AzureNative.AppPlatform.Inputs.GatewayRouteConfigPropertiesArgs
///         {
///             AppResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apps/myApp",
///             OpenApi = new AzureNative.AppPlatform.Inputs.GatewayRouteConfigOpenApiPropertiesArgs
///             {
///                 Uri = "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json",
///             },
///             Protocol = AzureNative.AppPlatform.GatewayRouteConfigProtocol.HTTPS,
///             Routes = new[]
///             {
///                 new AzureNative.AppPlatform.Inputs.GatewayApiRouteArgs
///                 {
///                     Filters = new[]
///                     {
///                         "StripPrefix=2",
///                         "RateLimit=1,1s",
///                     },
///                     Predicates = new[]
///                     {
///                         "Path=/api5/customer/**",
///                     },
///                     SsoEnabled = true,
///                     Title = "myApp route config",
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         RouteConfigName = "myRouteConfig",
///         ServiceName = "myservice",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewGatewayRouteConfig(ctx, "gatewayRouteConfig", &appplatform.GatewayRouteConfigArgs{
/// 			GatewayName: pulumi.String("default"),
/// 			Properties: &appplatform.GatewayRouteConfigPropertiesArgs{
/// 				AppResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apps/myApp"),
/// 				OpenApi: &appplatform.GatewayRouteConfigOpenApiPropertiesArgs{
/// 					Uri: pulumi.String("https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json"),
/// 				},
/// 				Protocol: pulumi.String(appplatform.GatewayRouteConfigProtocolHTTPS),
/// 				Routes: appplatform.GatewayApiRouteArray{
/// 					&appplatform.GatewayApiRouteArgs{
/// 						Filters: pulumi.StringArray{
/// 							pulumi.String("StripPrefix=2"),
/// 							pulumi.String("RateLimit=1,1s"),
/// 						},
/// 						Predicates: pulumi.StringArray{
/// 							pulumi.String("Path=/api5/customer/**"),
/// 						},
/// 						SsoEnabled: pulumi.Bool(true),
/// 						Title:      pulumi.String("myApp route config"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			RouteConfigName:   pulumi.String("myRouteConfig"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_appplatform_gatewayrouteconfig" "gatewayRouteConfig" {
///   gateway_name = "default"
///   properties = {
///     app_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apps/myApp"
///     open_api = {
///       uri = "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json"
///     }
///     protocol = "HTTPS"
///     routes = [{
///       "filters"    = ["StripPrefix=2", "RateLimit=1,1s"]
///       "predicates" = ["Path=/api5/customer/**"]
///       "ssoEnabled" = true
///       "title"      = "myApp route config"
///     }]
///   }
///   resource_group_name = "myResourceGroup"
///   route_config_name   = "myRouteConfig"
///   service_name        = "myservice"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.appplatform.GatewayRouteConfig;
/// import com.pulumi.azurenative.appplatform.GatewayRouteConfigArgs;
/// import com.pulumi.azurenative.appplatform.inputs.GatewayRouteConfigPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.GatewayRouteConfigOpenApiPropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var gatewayRouteConfig = new GatewayRouteConfig("gatewayRouteConfig", GatewayRouteConfigArgs.builder()
///             .gatewayName("default")
///             .properties(GatewayRouteConfigPropertiesArgs.builder()
///                 .appResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apps/myApp")
///                 .openApi(GatewayRouteConfigOpenApiPropertiesArgs.builder()
///                     .uri("https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json")
///                     .build())
///                 .protocol("HTTPS")
///                 .routes(GatewayApiRouteArgs.builder()
///                     .filters(
///                         "StripPrefix=2",
///                         "RateLimit=1,1s")
///                     .predicates("Path=/api5/customer/**")
///                     .ssoEnabled(true)
///                     .title("myApp route config")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .routeConfigName("myRouteConfig")
///             .serviceName("myservice")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const gatewayRouteConfig = new azure_native.appplatform.GatewayRouteConfig("gatewayRouteConfig", {
///     gatewayName: "default",
///     properties: {
///         appResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apps/myApp",
///         openApi: {
///             uri: "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json",
///         },
///         protocol: azure_native.appplatform.GatewayRouteConfigProtocol.HTTPS,
///         routes: [{
///             filters: [
///                 "StripPrefix=2",
///                 "RateLimit=1,1s",
///             ],
///             predicates: ["Path=/api5/customer/**"],
///             ssoEnabled: true,
///             title: "myApp route config",
///         }],
///     },
///     resourceGroupName: "myResourceGroup",
///     routeConfigName: "myRouteConfig",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway_route_config = azure_native.appplatform.GatewayRouteConfig("gatewayRouteConfig",
///     gateway_name="default",
///     properties={
///         "app_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apps/myApp",
///         "open_api": {
///             "uri": "https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json",
///         },
///         "protocol": azure_native.appplatform.GatewayRouteConfigProtocol.HTTPS,
///         "routes": [{
///             "filters": [
///                 "StripPrefix=2",
///                 "RateLimit=1,1s",
///             ],
///             "predicates": ["Path=/api5/customer/**"],
///             "sso_enabled": True,
///             "title": "myApp route config",
///         }],
///     },
///     resource_group_name="myResourceGroup",
///     route_config_name="myRouteConfig",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   gatewayRouteConfig:
///     type: azure-native:appplatform:GatewayRouteConfig
///     properties:
///       gatewayName: default
///       properties:
///         appResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apps/myApp
///         openApi:
///           uri: https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v3.0/petstore.json
///         protocol: HTTPS
///         routes:
///           - filters:
///               - StripPrefix=2
///               - RateLimit=1,1s
///             predicates:
///               - Path=/api5/customer/**
///             ssoEnabled: true
///             title: myApp route config
///       resourceGroupName: myResourceGroup
///       routeConfigName: myRouteConfig
///       serviceName: myservice
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:appplatform:GatewayRouteConfig myRouteConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/gateways/{gatewayName}/routeConfigs/{routeConfigName}
/// ```
class GatewayRouteConfig extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// API route config of the Spring Cloud Gateway
  late final pulumi.Output<GatewayRouteConfigPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [GatewayRouteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayRouteConfig]. {@macro pulumi_appplatform_gateway_route_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayRouteConfig(
    String name, {
    GatewayRouteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:GatewayRouteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GatewayRouteConfigPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayRouteConfigPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [GatewayRouteConfig] resource.
  GatewayRouteConfig.reference(String urn)
    : super(
        'azure-native:appplatform:GatewayRouteConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GatewayRouteConfigPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayRouteConfigPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
