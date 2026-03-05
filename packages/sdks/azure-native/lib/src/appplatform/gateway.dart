import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'gateway_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Spring Cloud Gateway resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Gateways_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gateway = new AzureNative.AppPlatform.Gateway("gateway", new()
///     {
///         GatewayName = "default",
///         Properties = new AzureNative.AppPlatform.Inputs.GatewayPropertiesArgs
///         {
///             Apms = new[]
///             {
///                 new AzureNative.AppPlatform.Inputs.ApmReferenceArgs
///                 {
///                     ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///                 },
///             },
///             Public = true,
///             ResourceRequests = new AzureNative.AppPlatform.Inputs.GatewayResourceRequestsArgs
///             {
///                 Cpu = "1",
///                 Memory = "1G",
///             },
///             ResponseCacheProperties = new AzureNative.AppPlatform.Inputs.GatewayLocalResponseCachePerRoutePropertiesArgs
///             {
///                 ResponseCacheType = "LocalCachePerRoute",
///                 Size = "5MB",
///                 TimeToLive = "300s",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "E0",
///             Tier = "Enterprise",
///         },
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
/// 		_, err := appplatform.NewGateway(ctx, "gateway", &appplatform.GatewayArgs{
/// 			GatewayName: pulumi.String("default"),
/// 			Properties: &appplatform.GatewayPropertiesArgs{
/// 				Apms: appplatform.ApmReferenceArray{
/// 					&appplatform.ApmReferenceArgs{
/// 						ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights"),
/// 					},
/// 				},
/// 				Public: pulumi.Bool(true),
/// 				ResourceRequests: &appplatform.GatewayResourceRequestsArgs{
/// 					Cpu:    pulumi.String("1"),
/// 					Memory: pulumi.String("1G"),
/// 				},
/// 				ResponseCacheProperties: appplatform.GatewayLocalResponseCachePerRouteProperties{
/// 					ResponseCacheType: "LocalCachePerRoute",
/// 					Size:              "5MB",
/// 					TimeToLive:        "300s",
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String("E0"),
/// 				Tier:     pulumi.String("Enterprise"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.appplatform.Gateway;
/// import com.pulumi.azurenative.appplatform.GatewayArgs;
/// import com.pulumi.azurenative.appplatform.inputs.GatewayPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.GatewayResourceRequestsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.SkuArgs;
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
///         var gateway = new Gateway("gateway", GatewayArgs.builder()
///             .gatewayName("default")
///             .properties(GatewayPropertiesArgs.builder()
///                 .apms(ApmReferenceArgs.builder()
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights")
///                     .build())
///                 .public_(true)
///                 .resourceRequests(GatewayResourceRequestsArgs.builder()
///                     .cpu("1")
///                     .memory("1G")
///                     .build())
///                 .responseCacheProperties(GatewayLocalResponseCachePerRoutePropertiesArgs.builder()
///                     .responseCacheType("LocalCachePerRoute")
///                     .size("5MB")
///                     .timeToLive("300s")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .name("E0")
///                 .tier("Enterprise")
///                 .build())
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
/// const gateway = new azure_native.appplatform.Gateway("gateway", {
///     gatewayName: "default",
///     properties: {
///         apms: [{
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///         }],
///         "public": true,
///         resourceRequests: {
///             cpu: "1",
///             memory: "1G",
///         },
///         responseCacheProperties: {
///             responseCacheType: "LocalCachePerRoute",
///             size: "5MB",
///             timeToLive: "300s",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         capacity: 2,
///         name: "E0",
///         tier: "Enterprise",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gateway = azure_native.appplatform.Gateway("gateway",
///     gateway_name="default",
///     properties={
///         "apms": [{
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///         }],
///         "public": True,
///         "resource_requests": {
///             "cpu": "1",
///             "memory": "1G",
///         },
///         "response_cache_properties": {
///             "response_cache_type": "LocalCachePerRoute",
///             "size": "5MB",
///             "time_to_live": "300s",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "capacity": 2,
///         "name": "E0",
///         "tier": "Enterprise",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   gateway:
///     type: azure-native:appplatform:Gateway
///     properties:
///       gatewayName: default
///       properties:
///         apms:
///           - resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights
///         public: true
///         resourceRequests:
///           cpu: '1'
///           memory: 1G
///         responseCacheProperties:
///           responseCacheType: LocalCachePerRoute
///           size: 5MB
///           timeToLive: 300s
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         capacity: 2
///         name: E0
///         tier: Enterprise
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
/// $ pulumi import azure-native:appplatform:Gateway default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/gateways/{gatewayName}
/// ```
class Gateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// Spring Cloud Gateway properties payload
  late final pulumi.Output<GatewayPropertiesResponse> properties;

  /// Sku of the Spring Cloud Gateway resource
  late final pulumi.Output<SkuResponse?> sku;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_appplatform_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appplatform:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GatewayPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GatewayPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sku = registerOutput<SkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
