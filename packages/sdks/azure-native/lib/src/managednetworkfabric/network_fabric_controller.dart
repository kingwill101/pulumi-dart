import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_services_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'network_fabric_controller_args.dart';
import 'system_data_response.dart';

/// The Network Fabric Controller resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkFabricControllers_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkFabricController = new AzureNative.ManagedNetworkFabric.NetworkFabricController("networkFabricController", new()
///     {
///         Annotation = "annotation",
///         InfrastructureExpressRouteConnections = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.ExpressRouteConnectionInformationArgs
///             {
///                 ExpressRouteAuthorizationKey = "1234ABCD-0A1B-1234-5678-123456ABCDEF",
///                 ExpressRouteCircuitId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName",
///             },
///         },
///         Ipv4AddressSpace = "172.253.0.0/19",
///         Ipv6AddressSpace = "::/60",
///         IsWorkloadManagementNetworkEnabled = AzureNative.ManagedNetworkFabric.IsWorkloadManagementNetworkEnabled.True,
///         Location = "eastus",
///         ManagedResourceGroupConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.ManagedResourceGroupConfigurationArgs
///         {
///             Location = "eastus",
///             Name = "managedResourceGroupName",
///         },
///         NetworkFabricControllerName = "example-networkController",
///         NfcSku = AzureNative.ManagedNetworkFabric.NfcSku.Standard,
///         ResourceGroupName = "example-rg",
///         WorkloadExpressRouteConnections = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.ExpressRouteConnectionInformationArgs
///             {
///                 ExpressRouteAuthorizationKey = "xxxxx",
///                 ExpressRouteCircuitId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName",
///             },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewNetworkFabricController(ctx, "networkFabricController", &managednetworkfabric.NetworkFabricControllerArgs{
/// 			Annotation: pulumi.String("annotation"),
/// 			InfrastructureExpressRouteConnections: managednetworkfabric.ExpressRouteConnectionInformationArray{
/// 				&managednetworkfabric.ExpressRouteConnectionInformationArgs{
/// 					ExpressRouteAuthorizationKey: pulumi.String("1234ABCD-0A1B-1234-5678-123456ABCDEF"),
/// 					ExpressRouteCircuitId:        pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName"),
/// 				},
/// 			},
/// 			Ipv4AddressSpace:                   pulumi.String("172.253.0.0/19"),
/// 			Ipv6AddressSpace:                   pulumi.String("::/60"),
/// 			IsWorkloadManagementNetworkEnabled: pulumi.String(managednetworkfabric.IsWorkloadManagementNetworkEnabledTrue),
/// 			Location:                           pulumi.String("eastus"),
/// 			ManagedResourceGroupConfiguration: &managednetworkfabric.ManagedResourceGroupConfigurationArgs{
/// 				Location: pulumi.String("eastus"),
/// 				Name:     pulumi.String("managedResourceGroupName"),
/// 			},
/// 			NetworkFabricControllerName: pulumi.String("example-networkController"),
/// 			NfcSku:                      pulumi.String(managednetworkfabric.NfcSkuStandard),
/// 			ResourceGroupName:           pulumi.String("example-rg"),
/// 			WorkloadExpressRouteConnections: managednetworkfabric.ExpressRouteConnectionInformationArray{
/// 				&managednetworkfabric.ExpressRouteConnectionInformationArgs{
/// 					ExpressRouteAuthorizationKey: pulumi.String("xxxxx"),
/// 					ExpressRouteCircuitId:        pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName"),
/// 				},
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkFabricController;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkFabricControllerArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ExpressRouteConnectionInformationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ManagedResourceGroupConfigurationArgs;
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
///         var networkFabricController = new NetworkFabricController("networkFabricController", NetworkFabricControllerArgs.builder()
///             .annotation("annotation")
///             .infrastructureExpressRouteConnections(ExpressRouteConnectionInformationArgs.builder()
///                 .expressRouteAuthorizationKey("1234ABCD-0A1B-1234-5678-123456ABCDEF")
///                 .expressRouteCircuitId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName")
///                 .build())
///             .ipv4AddressSpace("172.253.0.0/19")
///             .ipv6AddressSpace("::/60")
///             .isWorkloadManagementNetworkEnabled("True")
///             .location("eastus")
///             .managedResourceGroupConfiguration(ManagedResourceGroupConfigurationArgs.builder()
///                 .location("eastus")
///                 .name("managedResourceGroupName")
///                 .build())
///             .networkFabricControllerName("example-networkController")
///             .nfcSku("Standard")
///             .resourceGroupName("example-rg")
///             .workloadExpressRouteConnections(ExpressRouteConnectionInformationArgs.builder()
///                 .expressRouteAuthorizationKey("xxxxx")
///                 .expressRouteCircuitId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName")
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
/// const networkFabricController = new azure_native.managednetworkfabric.NetworkFabricController("networkFabricController", {
///     annotation: "annotation",
///     infrastructureExpressRouteConnections: [{
///         expressRouteAuthorizationKey: "1234ABCD-0A1B-1234-5678-123456ABCDEF",
///         expressRouteCircuitId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName",
///     }],
///     ipv4AddressSpace: "172.253.0.0/19",
///     ipv6AddressSpace: "::/60",
///     isWorkloadManagementNetworkEnabled: azure_native.managednetworkfabric.IsWorkloadManagementNetworkEnabled.True,
///     location: "eastus",
///     managedResourceGroupConfiguration: {
///         location: "eastus",
///         name: "managedResourceGroupName",
///     },
///     networkFabricControllerName: "example-networkController",
///     nfcSku: azure_native.managednetworkfabric.NfcSku.Standard,
///     resourceGroupName: "example-rg",
///     workloadExpressRouteConnections: [{
///         expressRouteAuthorizationKey: "xxxxx",
///         expressRouteCircuitId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_fabric_controller = azure_native.managednetworkfabric.NetworkFabricController("networkFabricController",
///     annotation="annotation",
///     infrastructure_express_route_connections=[{
///         "express_route_authorization_key": "1234ABCD-0A1B-1234-5678-123456ABCDEF",
///         "express_route_circuit_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName",
///     }],
///     ipv4_address_space="172.253.0.0/19",
///     ipv6_address_space="::/60",
///     is_workload_management_network_enabled=azure_native.managednetworkfabric.IsWorkloadManagementNetworkEnabled.TRUE,
///     location="eastus",
///     managed_resource_group_configuration={
///         "location": "eastus",
///         "name": "managedResourceGroupName",
///     },
///     network_fabric_controller_name="example-networkController",
///     nfc_sku=azure_native.managednetworkfabric.NfcSku.STANDARD,
///     resource_group_name="example-rg",
///     workload_express_route_connections=[{
///         "express_route_authorization_key": "xxxxx",
///         "express_route_circuit_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   networkFabricController:
///     type: azure-native:managednetworkfabric:NetworkFabricController
///     properties:
///       annotation: annotation
///       infrastructureExpressRouteConnections:
///         - expressRouteAuthorizationKey: 1234ABCD-0A1B-1234-5678-123456ABCDEF
///           expressRouteCircuitId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName
///       ipv4AddressSpace: 172.253.0.0/19
///       ipv6AddressSpace: ::/60
///       isWorkloadManagementNetworkEnabled: True
///       location: eastus
///       managedResourceGroupConfiguration:
///         location: eastus
///         name: managedResourceGroupName
///       networkFabricControllerName: example-networkController
///       nfcSku: Standard
///       resourceGroupName: example-rg
///       workloadExpressRouteConnections:
///         - expressRouteAuthorizationKey: xxxxx
///           expressRouteCircuitId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.Network/expressRouteCircuits/expressRouteCircuitName
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkFabricController example-networkController /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/{networkFabricControllerName}
/// ```
class NetworkFabricController extends pulumi.CustomResource {
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// As part of an update, the Infrastructure ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Infrastructure services. (This is a Mandatory attribute)
  late final pulumi.Output<List<Map<String, dynamic>>?> infrastructureExpressRouteConnections;
  /// InfrastructureServices IP ranges.
  late final pulumi.Output<ControllerServicesResponse> infrastructureServices;
  /// IPv4 Network Fabric Controller Address Space.
  late final pulumi.Output<String?> ipv4AddressSpace;
  /// IPv6 Network Fabric Controller Address Space.
  late final pulumi.Output<String?> ipv6AddressSpace;
  /// A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints.
  late final pulumi.Output<String?> isWorkloadManagementNetworkEnabled;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Managed Resource Group configuration properties.
  late final pulumi.Output<ManagedResourceGroupConfigurationResponse?> managedResourceGroupConfiguration;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The NF-ID will be an input parameter used by the NF to link and get associated with the parent NFC Service.
  late final pulumi.Output<List<String>> networkFabricIds;
  /// Network Fabric Controller SKU.
  late final pulumi.Output<String?> nfcSku;
  /// Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of NFC provisioning.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// List of tenant InternetGateway resource IDs
  late final pulumi.Output<List<String>> tenantInternetGatewayIds;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// As part of an update, the workload ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Workload services. (This is a Mandatory attribute).
  late final pulumi.Output<List<Map<String, dynamic>>?> workloadExpressRouteConnections;
  /// A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints. This is used for the backward compatibility.
  late final pulumi.Output<bool> workloadManagementNetwork;
  /// WorkloadServices IP ranges.
  late final pulumi.Output<ControllerServicesResponse> workloadServices;

  /// Creates a new [NetworkFabricController].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkFabricController]. {@macro pulumi_managednetworkfabric_network_fabric_controller_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkFabricController(
    String name, {
    NetworkFabricControllerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:NetworkFabricController',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    infrastructureExpressRouteConnections = registerOutput<List<Map<String, dynamic>>?>('infrastructureExpressRouteConnections');
    infrastructureServices = registerOutput<ControllerServicesResponse>('infrastructureServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControllerServicesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipv4AddressSpace = registerOutput<String?>('ipv4AddressSpace');
    ipv6AddressSpace = registerOutput<String?>('ipv6AddressSpace');
    isWorkloadManagementNetworkEnabled = registerOutput<String?>('isWorkloadManagementNetworkEnabled');
    location = registerOutput<String>('location');
    managedResourceGroupConfiguration = registerOutput<ManagedResourceGroupConfigurationResponse?>('managedResourceGroupConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedResourceGroupConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkFabricIds = registerOutput<List<String>>('networkFabricIds');
    nfcSku = registerOutput<String?>('nfcSku');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tenantInternetGatewayIds = registerOutput<List<String>>('tenantInternetGatewayIds');
    type = registerOutput<String>('type');
    workloadExpressRouteConnections = registerOutput<List<Map<String, dynamic>>?>('workloadExpressRouteConnections');
    workloadManagementNetwork = registerOutput<bool>('workloadManagementNetwork');
    workloadServices = registerOutput<ControllerServicesResponse>('workloadServices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ControllerServicesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
