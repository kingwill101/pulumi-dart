import 'package:pulumi/pulumi.dart' as pulumi;
import 'neighbor_group_args.dart';
import 'neighbor_group_destination_response.dart';
import 'system_data_response.dart';

/// Defines the Neighbor Group.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NeighborGroups_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var neighborGroup = new AzureNative.ManagedNetworkFabric.NeighborGroup("neighborGroup", new()
///     {
///         Annotation = "annotation",
///         Destination = new AzureNative.ManagedNetworkFabric.Inputs.NeighborGroupDestinationArgs
///         {
///             Ipv4Addresses = new[]
///             {
///                 "10.10.10.10",
///                 "20.10.10.10",
///                 "30.10.10.10",
///                 "40.10.10.10",
///                 "50.10.10.10",
///                 "60.10.10.10",
///                 "70.10.10.10",
///                 "80.10.10.10",
///                 "90.10.10.10",
///             },
///             Ipv6Addresses = new[]
///             {
///                 "2F::/100",
///             },
///         },
///         Location = "eastus",
///         NeighborGroupName = "example-neighborGroup",
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "key8107", "1234" },
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
/// 		_, err := managednetworkfabric.NewNeighborGroup(ctx, "neighborGroup", &managednetworkfabric.NeighborGroupArgs{
/// 			Annotation: pulumi.String("annotation"),
/// 			Destination: &managednetworkfabric.NeighborGroupDestinationArgs{
/// 				Ipv4Addresses: pulumi.StringArray{
/// 					pulumi.String("10.10.10.10"),
/// 					pulumi.String("20.10.10.10"),
/// 					pulumi.String("30.10.10.10"),
/// 					pulumi.String("40.10.10.10"),
/// 					pulumi.String("50.10.10.10"),
/// 					pulumi.String("60.10.10.10"),
/// 					pulumi.String("70.10.10.10"),
/// 					pulumi.String("80.10.10.10"),
/// 					pulumi.String("90.10.10.10"),
/// 				},
/// 				Ipv6Addresses: pulumi.StringArray{
/// 					pulumi.String("2F::/100"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			NeighborGroupName: pulumi.String("example-neighborGroup"),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key8107": pulumi.String("1234"),
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
/// import com.pulumi.azurenative.managednetworkfabric.NeighborGroup;
/// import com.pulumi.azurenative.managednetworkfabric.NeighborGroupArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.NeighborGroupDestinationArgs;
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
///         var neighborGroup = new NeighborGroup("neighborGroup", NeighborGroupArgs.builder()
///             .annotation("annotation")
///             .destination(NeighborGroupDestinationArgs.builder()
///                 .ipv4Addresses(
///                     "10.10.10.10",
///                     "20.10.10.10",
///                     "30.10.10.10",
///                     "40.10.10.10",
///                     "50.10.10.10",
///                     "60.10.10.10",
///                     "70.10.10.10",
///                     "80.10.10.10",
///                     "90.10.10.10")
///                 .ipv6Addresses("2F::/100")
///                 .build())
///             .location("eastus")
///             .neighborGroupName("example-neighborGroup")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("key8107", "1234"))
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
/// const neighborGroup = new azure_native.managednetworkfabric.NeighborGroup("neighborGroup", {
///     annotation: "annotation",
///     destination: {
///         ipv4Addresses: [
///             "10.10.10.10",
///             "20.10.10.10",
///             "30.10.10.10",
///             "40.10.10.10",
///             "50.10.10.10",
///             "60.10.10.10",
///             "70.10.10.10",
///             "80.10.10.10",
///             "90.10.10.10",
///         ],
///         ipv6Addresses: ["2F::/100"],
///     },
///     location: "eastus",
///     neighborGroupName: "example-neighborGroup",
///     resourceGroupName: "example-rg",
///     tags: {
///         key8107: "1234",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// neighbor_group = azure_native.managednetworkfabric.NeighborGroup("neighborGroup",
///     annotation="annotation",
///     destination={
///         "ipv4_addresses": [
///             "10.10.10.10",
///             "20.10.10.10",
///             "30.10.10.10",
///             "40.10.10.10",
///             "50.10.10.10",
///             "60.10.10.10",
///             "70.10.10.10",
///             "80.10.10.10",
///             "90.10.10.10",
///         ],
///         "ipv6_addresses": ["2F::/100"],
///     },
///     location="eastus",
///     neighbor_group_name="example-neighborGroup",
///     resource_group_name="example-rg",
///     tags={
///         "key8107": "1234",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   neighborGroup:
///     type: azure-native:managednetworkfabric:NeighborGroup
///     properties:
///       annotation: annotation
///       destination:
///         ipv4Addresses:
///           - 10.10.10.10
///           - 20.10.10.10
///           - 30.10.10.10
///           - 40.10.10.10
///           - 50.10.10.10
///           - 60.10.10.10
///           - 70.10.10.10
///           - 80.10.10.10
///           - 90.10.10.10
///         ipv6Addresses:
///           - 2F::/100
///       location: eastus
///       neighborGroupName: example-neighborGroup
///       resourceGroupName: example-rg
///       tags:
///         key8107: '1234'
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
/// $ pulumi import azure-native:managednetworkfabric:NeighborGroup example-neighborGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/neighborGroups/{neighborGroupName}
/// ```
class NeighborGroup extends pulumi.CustomResource {
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// An array of destination IPv4 Addresses or IPv6 Addresses.
  late final pulumi.Output<NeighborGroupDestinationResponse> destination;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// List of NetworkTap IDs where neighbor group is associated.
  late final pulumi.Output<List<String>> networkTapIds;

  /// List of Network Tap Rule IDs where neighbor group is associated.
  late final pulumi.Output<List<String>> networkTapRuleIds;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NeighborGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NeighborGroup]. {@macro pulumi_managednetworkfabric_neighbor_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NeighborGroup(
    String name, {
    NeighborGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:NeighborGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    destination = registerOutput<NeighborGroupDestinationResponse>(
      'destination',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NeighborGroupDestinationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkTapIds = registerOutput<List<String>>('networkTapIds');
    networkTapRuleIds = registerOutput<List<String>>('networkTapRuleIds');
    provisioningState = registerOutput<String>('provisioningState');
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
