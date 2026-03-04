import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_portal_args.dart';
import 'api_portal_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// API portal resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiPortals_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiPortal = new AzureNative.AppPlatform.ApiPortal("apiPortal", new()
///     {
///         ApiPortalName = "default",
///         Properties = new AzureNative.AppPlatform.Inputs.ApiPortalPropertiesArgs
///         {
///             ApiTryOutEnabledState = AzureNative.AppPlatform.ApiPortalApiTryOutEnabledState.Enabled,
///             GatewayIds = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/gateways/default",
///             },
///             Public = true,
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
/// 		_, err := appplatform.NewApiPortal(ctx, "apiPortal", &appplatform.ApiPortalArgs{
/// 			ApiPortalName: pulumi.String("default"),
/// 			Properties: &appplatform.ApiPortalPropertiesArgs{
/// 				ApiTryOutEnabledState: pulumi.String(appplatform.ApiPortalApiTryOutEnabledStateEnabled),
/// 				GatewayIds: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/gateways/default"),
/// 				},
/// 				Public: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.appplatform.ApiPortal;
/// import com.pulumi.azurenative.appplatform.ApiPortalArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ApiPortalPropertiesArgs;
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
///         var apiPortal = new ApiPortal("apiPortal", ApiPortalArgs.builder()
///             .apiPortalName("default")
///             .properties(ApiPortalPropertiesArgs.builder()
///                 .apiTryOutEnabledState("Enabled")
///                 .gatewayIds("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/gateways/default")
///                 .public_(true)
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
/// const apiPortal = new azure_native.appplatform.ApiPortal("apiPortal", {
///     apiPortalName: "default",
///     properties: {
///         apiTryOutEnabledState: azure_native.appplatform.ApiPortalApiTryOutEnabledState.Enabled,
///         gatewayIds: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/gateways/default"],
///         "public": true,
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
/// api_portal = azure_native.appplatform.ApiPortal("apiPortal",
///     api_portal_name="default",
///     properties={
///         "api_try_out_enabled_state": azure_native.appplatform.ApiPortalApiTryOutEnabledState.ENABLED,
///         "gateway_ids": ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/gateways/default"],
///         "public": True,
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
///   apiPortal:
///     type: azure-native:appplatform:ApiPortal
///     properties:
///       apiPortalName: default
///       properties:
///         apiTryOutEnabledState: Enabled
///         gatewayIds:
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/gateways/default
///         public: true
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
/// $ pulumi import azure-native:appplatform:ApiPortal default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/apiPortals/{apiPortalName}
/// ```
class ApiPortal extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// API portal properties payload
  late final pulumi.Output<ApiPortalPropertiesResponse> properties;

  /// Sku of the API portal resource
  late final pulumi.Output<SkuResponse?> sku;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ApiPortal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiPortal]. {@macro pulumi_appplatform_api_portal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiPortal(
    String name, {
    ApiPortalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appplatform:ApiPortal',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiPortalPropertiesResponse>('properties');
    sku = registerOutput<SkuResponse?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
