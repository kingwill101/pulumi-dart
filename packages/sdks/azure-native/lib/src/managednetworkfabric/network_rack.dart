import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_rack_args.dart';
import 'system_data_response.dart';

/// The Network Rack resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkRacks_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkRack = new AzureNative.ManagedNetworkFabric.NetworkRack("networkRack", new()
///     {
///         Annotation = "annotation",
///         Location = "eastuseuap",
///         NetworkFabricId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric",
///         NetworkRackName = "example-rack",
///         NetworkRackType = AzureNative.ManagedNetworkFabric.NetworkRackType.Aggregate,
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyID", "keyValue" },
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
/// 		_, err := managednetworkfabric.NewNetworkRack(ctx, "networkRack", &managednetworkfabric.NetworkRackArgs{
/// 			Annotation:        pulumi.String("annotation"),
/// 			Location:          pulumi.String("eastuseuap"),
/// 			NetworkFabricId:   pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric"),
/// 			NetworkRackName:   pulumi.String("example-rack"),
/// 			NetworkRackType:   pulumi.String(managednetworkfabric.NetworkRackTypeAggregate),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("keyValue"),
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
/// resource "azure-native_managednetworkfabric_networkrack" "networkRack" {
///   annotation          = "annotation"
///   location            = "eastuseuap"
///   network_fabric_id   = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric"
///   network_rack_name   = "example-rack"
///   network_rack_type   = "Aggregate"
///   resource_group_name = "example-rg"
///   tags = {
///     "keyID" = "keyValue"
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkRack;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkRackArgs;
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
///         var networkRack = new NetworkRack("networkRack", NetworkRackArgs.builder()
///             .annotation("annotation")
///             .location("eastuseuap")
///             .networkFabricId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric")
///             .networkRackName("example-rack")
///             .networkRackType("Aggregate")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyID", "keyValue"))
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
/// const networkRack = new azure_native.managednetworkfabric.NetworkRack("networkRack", {
///     annotation: "annotation",
///     location: "eastuseuap",
///     networkFabricId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric",
///     networkRackName: "example-rack",
///     networkRackType: azure_native.managednetworkfabric.NetworkRackType.Aggregate,
///     resourceGroupName: "example-rg",
///     tags: {
///         keyID: "keyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_rack = azure_native.managednetworkfabric.NetworkRack("networkRack",
///     annotation="annotation",
///     location="eastuseuap",
///     network_fabric_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric",
///     network_rack_name="example-rack",
///     network_rack_type=azure_native.managednetworkfabric.NetworkRackType.AGGREGATE,
///     resource_group_name="example-rg",
///     tags={
///         "keyID": "keyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   networkRack:
///     type: azure-native:managednetworkfabric:NetworkRack
///     properties:
///       annotation: annotation
///       location: eastuseuap
///       networkFabricId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourcegroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-networkFabric
///       networkRackName: example-rack
///       networkRackType: Aggregate
///       resourceGroupName: example-rg
///       tags:
///         keyID: keyValue
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkRack example-rack /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkRacks/{networkRackName}
/// ```
class NetworkRack extends pulumi.CustomResource {
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of network device ARM resource IDs.
  late final pulumi.Output<List<String>> networkDevices;
  /// ARM resource ID of the Network Fabric.
  late final pulumi.Output<String> networkFabricId;
  /// Network Rack SKU name.
  late final pulumi.Output<String?> networkRackType;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkRack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkRack]. {@macro pulumi_managednetworkfabric_network_rack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkRack(
    String name, {
    NetworkRackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:NetworkRack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkDevices = registerOutput<List<String>>('networkDevices');
    networkFabricId = registerOutput<String>('networkFabricId');
    networkRackType = registerOutput<String?>('networkRackType');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
