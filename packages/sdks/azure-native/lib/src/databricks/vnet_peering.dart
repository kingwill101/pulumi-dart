import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'virtual_network_peering_properties_format_response_databricks_virtual_network.dart';
import 'virtual_network_peering_properties_format_response_remote_virtual_network.dart';
import 'vnet_peering_args.dart';

/// Peerings in a VirtualNetwork resource
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-02-01, 2023-09-15-preview, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create vNet Peering for Workspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vNetPeering = new AzureNative.Databricks.VNetPeering("vNetPeering", new()
///     {
///         AllowForwardedTraffic = false,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         PeeringName = "vNetPeeringTest",
///         RemoteVirtualNetwork = new AzureNative.Databricks.Inputs.VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetworkArgs
///         {
///             Id = "/subscriptions/0140911e-1040-48da-8bc9-b99fb3dd88a6/resourceGroups/subramantest/providers/Microsoft.Network/virtualNetworks/subramanvnet",
///         },
///         ResourceGroupName = "subramantest",
///         UseRemoteGateways = false,
///         WorkspaceName = "adbworkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewVNetPeering(ctx, "vNetPeering", &databricks.VNetPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(false),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			PeeringName:               pulumi.String("vNetPeeringTest"),
/// 			RemoteVirtualNetwork: &databricks.VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetworkArgs{
/// 				Id: pulumi.String("/subscriptions/0140911e-1040-48da-8bc9-b99fb3dd88a6/resourceGroups/subramantest/providers/Microsoft.Network/virtualNetworks/subramanvnet"),
/// 			},
/// 			ResourceGroupName: pulumi.String("subramantest"),
/// 			UseRemoteGateways: pulumi.Bool(false),
/// 			WorkspaceName:     pulumi.String("adbworkspace"),
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
/// import com.pulumi.azurenative.databricks.VNetPeering;
/// import com.pulumi.azurenative.databricks.VNetPeeringArgs;
/// import com.pulumi.azurenative.databricks.inputs.VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetworkArgs;
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
///         var vNetPeering = new VNetPeering("vNetPeering", VNetPeeringArgs.builder()
///             .allowForwardedTraffic(false)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .peeringName("vNetPeeringTest")
///             .remoteVirtualNetwork(VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetworkArgs.builder()
///                 .id("/subscriptions/0140911e-1040-48da-8bc9-b99fb3dd88a6/resourceGroups/subramantest/providers/Microsoft.Network/virtualNetworks/subramanvnet")
///                 .build())
///             .resourceGroupName("subramantest")
///             .useRemoteGateways(false)
///             .workspaceName("adbworkspace")
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
/// const vNetPeering = new azure_native.databricks.VNetPeering("vNetPeering", {
///     allowForwardedTraffic: false,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     peeringName: "vNetPeeringTest",
///     remoteVirtualNetwork: {
///         id: "/subscriptions/0140911e-1040-48da-8bc9-b99fb3dd88a6/resourceGroups/subramantest/providers/Microsoft.Network/virtualNetworks/subramanvnet",
///     },
///     resourceGroupName: "subramantest",
///     useRemoteGateways: false,
///     workspaceName: "adbworkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// v_net_peering = azure_native.databricks.VNetPeering("vNetPeering",
///     allow_forwarded_traffic=False,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     peering_name="vNetPeeringTest",
///     remote_virtual_network={
///         "id": "/subscriptions/0140911e-1040-48da-8bc9-b99fb3dd88a6/resourceGroups/subramantest/providers/Microsoft.Network/virtualNetworks/subramanvnet",
///     },
///     resource_group_name="subramantest",
///     use_remote_gateways=False,
///     workspace_name="adbworkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   vNetPeering:
///     type: azure-native:databricks:VNetPeering
///     properties:
///       allowForwardedTraffic: false
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       peeringName: vNetPeeringTest
///       remoteVirtualNetwork:
///         id: /subscriptions/0140911e-1040-48da-8bc9-b99fb3dd88a6/resourceGroups/subramantest/providers/Microsoft.Network/virtualNetworks/subramanvnet
///       resourceGroupName: subramantest
///       useRemoteGateways: false
///       workspaceName: adbworkspace
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
/// $ pulumi import azure-native:databricks:VNetPeering vNetPeeringTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Databricks/workspaces/{workspaceName}/virtualNetworkPeerings/{peeringName}
/// ```
class VNetPeering extends pulumi.CustomResource {
  /// Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  late final pulumi.Output<bool?> allowForwardedTraffic;
  /// If gateway links can be used in remote virtual networking to link to this virtual network.
  late final pulumi.Output<bool?> allowGatewayTransit;
  /// Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  late final pulumi.Output<bool?> allowVirtualNetworkAccess;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The reference to the databricks virtual network address space.
  late final pulumi.Output<AddressSpaceResponse?> databricksAddressSpace;
  /// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  late final pulumi.Output<VirtualNetworkPeeringPropertiesFormatResponseDatabricksVirtualNetwork?> databricksVirtualNetwork;
  /// Name of the virtual network peering resource
  late final pulumi.Output<String> name;
  /// The status of the virtual network peering.
  late final pulumi.Output<String> peeringState;
  /// The provisioning state of the virtual network peering resource.
  late final pulumi.Output<String> provisioningState;
  /// The reference to the remote virtual network address space.
  late final pulumi.Output<AddressSpaceResponse?> remoteAddressSpace;
  /// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  late final pulumi.Output<VirtualNetworkPeeringPropertiesFormatResponseRemoteVirtualNetwork> remoteVirtualNetwork;
  /// type of the virtual network peering resource
  late final pulumi.Output<String> type;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  late final pulumi.Output<bool?> useRemoteGateways;

  /// Creates a new [VNetPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VNetPeering]. {@macro pulumi_databricks_vnet_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VNetPeering(
    String name, {
    VNetPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databricks:VNetPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowForwardedTraffic = registerOutput<bool?>('allowForwardedTraffic');
    allowGatewayTransit = registerOutput<bool?>('allowGatewayTransit');
    allowVirtualNetworkAccess = registerOutput<bool?>('allowVirtualNetworkAccess');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databricksAddressSpace = registerOutput<AddressSpaceResponse?>('databricksAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databricksVirtualNetwork = registerOutput<VirtualNetworkPeeringPropertiesFormatResponseDatabricksVirtualNetwork?>('databricksVirtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkPeeringPropertiesFormatResponseDatabricksVirtualNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    peeringState = registerOutput<String>('peeringState');
    provisioningState = registerOutput<String>('provisioningState');
    remoteAddressSpace = registerOutput<AddressSpaceResponse?>('remoteAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteVirtualNetwork = registerOutput<VirtualNetworkPeeringPropertiesFormatResponseRemoteVirtualNetwork>('remoteVirtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkPeeringPropertiesFormatResponseRemoteVirtualNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    useRemoteGateways = registerOutput<bool?>('useRemoteGateways');
  }
}
