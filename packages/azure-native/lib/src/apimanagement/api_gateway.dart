import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_gateway_args.dart';
import 'api_management_gateway_sku_properties_response.dart';
import 'backend_configuration_response.dart';
import 'frontend_configuration_response.dart';
import 'gateway_configuration_api_response.dart';
import 'system_data_response.dart';

/// A single API Management gateway resource in List or Get response.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-09-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-05-01, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateStandardGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiGateway = new AzureNative.ApiManagement.ApiGateway("apiGateway", new()
///     {
///         Backend = new AzureNative.ApiManagement.Inputs.BackendConfigurationArgs
///         {
///             Subnet = new AzureNative.ApiManagement.Inputs.BackendSubnetConfigurationArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1",
///             },
///         },
///         GatewayName = "apimGateway1",
///         Location = "South Central US",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementGatewaySkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.ApiGatewaySkuType.Standard,
///         },
///         Tags =
///         {
///             { "Name", "Contoso" },
///             { "Test", "User" },
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiGateway(ctx, "apiGateway", &apimanagement.ApiGatewayArgs{
/// 			Backend: &apimanagement.BackendConfigurationArgs{
/// 				Subnet: &apimanagement.BackendSubnetConfigurationArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1"),
/// 				},
/// 			},
/// 			GatewayName:       pulumi.String("apimGateway1"),
/// 			Location:          pulumi.String("South Central US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &apimanagement.ApiManagementGatewaySkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.ApiGatewaySkuTypeStandard),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Contoso"),
/// 				"Test": pulumi.String("User"),
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
/// import com.pulumi.azurenative.apimanagement.ApiGateway;
/// import com.pulumi.azurenative.apimanagement.ApiGatewayArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendConfigurationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendSubnetConfigurationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementGatewaySkuPropertiesArgs;
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
///         var apiGateway = new ApiGateway("apiGateway", ApiGatewayArgs.builder()
///             .backend(BackendConfigurationArgs.builder()
///                 .subnet(BackendSubnetConfigurationArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1")
///                     .build())
///                 .build())
///             .gatewayName("apimGateway1")
///             .location("South Central US")
///             .resourceGroupName("rg1")
///             .sku(ApiManagementGatewaySkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("Standard")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Contoso"),
///                 Map.entry("Test", "User")
///             ))
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
/// const apiGateway = new azure_native.apimanagement.ApiGateway("apiGateway", {
///     backend: {
///         subnet: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1",
///         },
///     },
///     gatewayName: "apimGateway1",
///     location: "South Central US",
///     resourceGroupName: "rg1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.ApiGatewaySkuType.Standard,
///     },
///     tags: {
///         Name: "Contoso",
///         Test: "User",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_gateway = azure_native.apimanagement.ApiGateway("apiGateway",
///     backend={
///         "subnet": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1",
///         },
///     },
///     gateway_name="apimGateway1",
///     location="South Central US",
///     resource_group_name="rg1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.ApiGatewaySkuType.STANDARD,
///     },
///     tags={
///         "Name": "Contoso",
///         "Test": "User",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   apiGateway:
///     type: azure-native:apimanagement:ApiGateway
///     properties:
///       backend:
///         subnet:
///           id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1
///       gatewayName: apimGateway1
///       location: South Central US
///       resourceGroupName: rg1
///       sku:
///         capacity: 1
///         name: Standard
///       tags:
///         Name: Contoso
///         Test: User
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateWorkspacePremiumGateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiGateway = new AzureNative.ApiManagement.ApiGateway("apiGateway", new()
///     {
///         Backend = new AzureNative.ApiManagement.Inputs.BackendConfigurationArgs
///         {
///             Subnet = new AzureNative.ApiManagement.Inputs.BackendSubnetConfigurationArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1",
///             },
///         },
///         GatewayName = "apimGateway1",
///         Location = "South Central US",
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.ApiManagement.Inputs.ApiManagementGatewaySkuPropertiesArgs
///         {
///             Capacity = 1,
///             Name = AzureNative.ApiManagement.ApiGatewaySkuType.WorkspaceGatewayPremium,
///         },
///         Tags =
///         {
///             { "Name", "Contoso" },
///             { "Test", "User" },
///         },
///         VirtualNetworkType = AzureNative.ApiManagement.VirtualNetworkType.External,
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewApiGateway(ctx, "apiGateway", &apimanagement.ApiGatewayArgs{
/// 			Backend: &apimanagement.BackendConfigurationArgs{
/// 				Subnet: &apimanagement.BackendSubnetConfigurationArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1"),
/// 				},
/// 			},
/// 			GatewayName:       pulumi.String("apimGateway1"),
/// 			Location:          pulumi.String("South Central US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &apimanagement.ApiManagementGatewaySkuPropertiesArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String(apimanagement.ApiGatewaySkuTypeWorkspaceGatewayPremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Contoso"),
/// 				"Test": pulumi.String("User"),
/// 			},
/// 			VirtualNetworkType: pulumi.String(apimanagement.VirtualNetworkTypeExternal),
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
/// import com.pulumi.azurenative.apimanagement.ApiGateway;
/// import com.pulumi.azurenative.apimanagement.ApiGatewayArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendConfigurationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.BackendSubnetConfigurationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ApiManagementGatewaySkuPropertiesArgs;
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
///         var apiGateway = new ApiGateway("apiGateway", ApiGatewayArgs.builder()
///             .backend(BackendConfigurationArgs.builder()
///                 .subnet(BackendSubnetConfigurationArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1")
///                     .build())
///                 .build())
///             .gatewayName("apimGateway1")
///             .location("South Central US")
///             .resourceGroupName("rg1")
///             .sku(ApiManagementGatewaySkuPropertiesArgs.builder()
///                 .capacity(1)
///                 .name("WorkspaceGatewayPremium")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "Contoso"),
///                 Map.entry("Test", "User")
///             ))
///             .virtualNetworkType("External")
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
/// const apiGateway = new azure_native.apimanagement.ApiGateway("apiGateway", {
///     backend: {
///         subnet: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1",
///         },
///     },
///     gatewayName: "apimGateway1",
///     location: "South Central US",
///     resourceGroupName: "rg1",
///     sku: {
///         capacity: 1,
///         name: azure_native.apimanagement.ApiGatewaySkuType.WorkspaceGatewayPremium,
///     },
///     tags: {
///         Name: "Contoso",
///         Test: "User",
///     },
///     virtualNetworkType: azure_native.apimanagement.VirtualNetworkType.External,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_gateway = azure_native.apimanagement.ApiGateway("apiGateway",
///     backend={
///         "subnet": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1",
///         },
///     },
///     gateway_name="apimGateway1",
///     location="South Central US",
///     resource_group_name="rg1",
///     sku={
///         "capacity": 1,
///         "name": azure_native.apimanagement.ApiGatewaySkuType.WORKSPACE_GATEWAY_PREMIUM,
///     },
///     tags={
///         "Name": "Contoso",
///         "Test": "User",
///     },
///     virtual_network_type=azure_native.apimanagement.VirtualNetworkType.EXTERNAL)
///
/// ```
///
/// ```yaml
/// resources:
///   apiGateway:
///     type: azure-native:apimanagement:ApiGateway
///     properties:
///       backend:
///         subnet:
///           id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vn1/subnets/sn1
///       gatewayName: apimGateway1
///       location: South Central US
///       resourceGroupName: rg1
///       sku:
///         capacity: 1
///         name: WorkspaceGatewayPremium
///       tags:
///         Name: Contoso
///         Test: User
///       virtualNetworkType: External
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
/// $ pulumi import azure-native:apimanagement:ApiGateway apimGateway1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/gateways/{gatewayName}
/// ```
class ApiGateway extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Information regarding how the gateway should integrate with backend systems.
  late final pulumi.Output<BackendConfigurationResponse?> backend;
  /// Information regarding the Configuration API of the API Management gateway. This is only applicable for API gateway with Standard SKU.
  late final pulumi.Output<GatewayConfigurationApiResponse?> configurationApi;
  /// Creation UTC date of the API Management gateway.The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String> createdAtUtc;
  /// ETag of the resource.
  late final pulumi.Output<String> etag;
  /// Information regarding how the gateway should be exposed.
  late final pulumi.Output<FrontendConfigurationResponse?> frontend;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The current provisioning state of the API Management gateway which can be one of the following: Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
  late final pulumi.Output<String> provisioningState;
  /// SKU properties of the API Management gateway.
  late final pulumi.Output<ApiManagementGatewaySkuPropertiesResponse> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The provisioning state of the API Management gateway, which is targeted by the long running operation started on the gateway.
  late final pulumi.Output<String> targetProvisioningState;
  /// Resource type for API Management resource is set to Microsoft.ApiManagement.
  late final pulumi.Output<String> type;
  /// The type of VPN in which API Management gateway needs to be configured in.
  late final pulumi.Output<String?> virtualNetworkType;

  /// Creates a new [ApiGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiGateway]. {@macro pulumi_apimanagement_api_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiGateway(
    String name, {
    ApiGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ApiGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.backend = registerOutput<BackendConfigurationResponse?>('backend');
    this.configurationApi = registerOutput<GatewayConfigurationApiResponse?>('configurationApi');
    this.createdAtUtc = registerOutput<String>('createdAtUtc');
    this.etag = registerOutput<String>('etag');
    this.frontend = registerOutput<FrontendConfigurationResponse?>('frontend');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sku = registerOutput<ApiManagementGatewaySkuPropertiesResponse>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetProvisioningState = registerOutput<String>('targetProvisioningState');
    this.type = registerOutput<String>('type');
    this.virtualNetworkType = registerOutput<String?>('virtualNetworkType');
  }
}
