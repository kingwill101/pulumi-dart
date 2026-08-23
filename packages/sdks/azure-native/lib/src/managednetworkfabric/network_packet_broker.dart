import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_packet_broker_args.dart';
import 'system_data_response.dart';

/// The NetworkPacketBroker resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkPacketBrokers_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkPacketBroker = new AzureNative.ManagedNetworkFabric.NetworkPacketBroker("networkPacketBroker", new()
///     {
///         Location = "eastuseuap",
///         NetworkFabricId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric",
///         NetworkPacketBrokerName = "example-networkPacketBroker",
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "key2806", "key" },
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
/// 		_, err := managednetworkfabric.NewNetworkPacketBroker(ctx, "networkPacketBroker", &managednetworkfabric.NetworkPacketBrokerArgs{
/// 			Location:                pulumi.String("eastuseuap"),
/// 			NetworkFabricId:         pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric"),
/// 			NetworkPacketBrokerName: pulumi.String("example-networkPacketBroker"),
/// 			ResourceGroupName:       pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key2806": pulumi.String("key"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_managednetworkfabric_networkpacketbroker" "networkPacketBroker" {
///   location                   = "eastuseuap"
///   network_fabric_id          = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric"
///   network_packet_broker_name = "example-networkPacketBroker"
///   resource_group_name        = "example-rg"
///   tags = {
///     "key2806" = "key"
///   }
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkPacketBroker;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkPacketBrokerArgs;
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
///         var networkPacketBroker = new NetworkPacketBroker("networkPacketBroker", NetworkPacketBrokerArgs.builder()
///             .location("eastuseuap")
///             .networkFabricId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric")
///             .networkPacketBrokerName("example-networkPacketBroker")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("key2806", "key"))
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
/// const networkPacketBroker = new azure_native.managednetworkfabric.NetworkPacketBroker("networkPacketBroker", {
///     location: "eastuseuap",
///     networkFabricId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric",
///     networkPacketBrokerName: "example-networkPacketBroker",
///     resourceGroupName: "example-rg",
///     tags: {
///         key2806: "key",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_packet_broker = azure_native.managednetworkfabric.NetworkPacketBroker("networkPacketBroker",
///     location="eastuseuap",
///     network_fabric_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric",
///     network_packet_broker_name="example-networkPacketBroker",
///     resource_group_name="example-rg",
///     tags={
///         "key2806": "key",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkPacketBroker:
///     type: azure-native:managednetworkfabric:NetworkPacketBroker
///     properties:
///       location: eastuseuap
///       networkFabricId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric
///       networkPacketBrokerName: example-networkPacketBroker
///       resourceGroupName: example-rg
///       tags:
///         key2806: key
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkPacketBroker example-networkPacketBroker /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkPacketBrokers/{networkPacketBrokerName}
/// ```
class NetworkPacketBroker extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of neighbor group IDs configured on NPB.
  late final pulumi.Output<List<String>> neighborGroupIds;
  /// List of ARM resource IDs of Network Devices [NPB].
  late final pulumi.Output<List<String>> networkDeviceIds;
  /// ARM resource ID of the Network Fabric.
  late final pulumi.Output<String> networkFabricId;
  /// List of network Tap IDs configured on NPB.
  late final pulumi.Output<List<String>> networkTapIds;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// List of network interfaces across NPB devices that are used to mirror source traffic.
  late final pulumi.Output<List<String>> sourceInterfaceIds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkPacketBroker].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPacketBroker]. {@macro pulumi_managednetworkfabric_network_packet_broker_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPacketBroker(
    String name, {
    NetworkPacketBrokerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:NetworkPacketBroker',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    neighborGroupIds = registerOutput<List<String>>('neighborGroupIds');
    networkDeviceIds = registerOutput<List<String>>('networkDeviceIds');
    networkFabricId = registerOutput<String>('networkFabricId');
    networkTapIds = registerOutput<List<String>>('networkTapIds');
    provisioningState = registerOutput<String>('provisioningState');
    sourceInterfaceIds = registerOutput<List<String>>('sourceInterfaceIds');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
