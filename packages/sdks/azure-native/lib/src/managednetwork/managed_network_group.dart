import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_group_args.dart';

/// The Managed Network Group resource
///
/// Uses Azure REST API version 2019-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagementNetworkGroupsPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedNetworkGroup = new AzureNative.ManagedNetwork.ManagedNetworkGroup("managedNetworkGroup", new()
///     {
///         ManagedNetworkGroupName = "myManagedNetworkGroup1",
///         ManagedNetworkName = "myManagedNetwork",
///         ManagementGroups = new[] {},
///         ResourceGroupName = "myResourceGroup",
///         Subnets = new[]
///         {
///             new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///             {
///                 Id = "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA/subnets/subnetA",
///             },
///         },
///         Subscriptions = new[] {},
///         VirtualNetworks = new[]
///         {
///             new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///             {
///                 Id = "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA",
///             },
///             new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///             {
///                 Id = "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB",
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
/// 	managednetwork "github.com/pulumi/pulumi-azure-native-sdk/managednetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetwork.NewManagedNetworkGroup(ctx, "managedNetworkGroup", &managednetwork.ManagedNetworkGroupArgs{
/// 			ManagedNetworkGroupName: pulumi.String("myManagedNetworkGroup1"),
/// 			ManagedNetworkName:      pulumi.String("myManagedNetwork"),
/// 			ManagementGroups:        managednetwork.ResourceIdArray{},
/// 			ResourceGroupName:       pulumi.String("myResourceGroup"),
/// 			Subnets: managednetwork.ResourceIdArray{
/// 				&managednetwork.ResourceIdArgs{
/// 					Id: pulumi.String("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA/subnets/subnetA"),
/// 				},
/// 			},
/// 			Subscriptions: managednetwork.ResourceIdArray{},
/// 			VirtualNetworks: managednetwork.ResourceIdArray{
/// 				&managednetwork.ResourceIdArgs{
/// 					Id: pulumi.String("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA"),
/// 				},
/// 				&managednetwork.ResourceIdArgs{
/// 					Id: pulumi.String("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB"),
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
/// import com.pulumi.azurenative.managednetwork.ManagedNetworkGroup;
/// import com.pulumi.azurenative.managednetwork.ManagedNetworkGroupArgs;
/// import com.pulumi.azurenative.managednetwork.inputs.ResourceIdArgs;
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
///         var managedNetworkGroup = new ManagedNetworkGroup("managedNetworkGroup", ManagedNetworkGroupArgs.builder()
///             .managedNetworkGroupName("myManagedNetworkGroup1")
///             .managedNetworkName("myManagedNetwork")
///             .managementGroups()
///             .resourceGroupName("myResourceGroup")
///             .subnets(ResourceIdArgs.builder()
///                 .id("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA/subnets/subnetA")
///                 .build())
///             .subscriptions()
///             .virtualNetworks(
///                 ResourceIdArgs.builder()
///                     .id("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA")
///                     .build(),
///                 ResourceIdArgs.builder()
///                     .id("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB")
///                     .build())
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
/// const managedNetworkGroup = new azure_native.managednetwork.ManagedNetworkGroup("managedNetworkGroup", {
///     managedNetworkGroupName: "myManagedNetworkGroup1",
///     managedNetworkName: "myManagedNetwork",
///     managementGroups: [],
///     resourceGroupName: "myResourceGroup",
///     subnets: [{
///         id: "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA/subnets/subnetA",
///     }],
///     subscriptions: [],
///     virtualNetworks: [
///         {
///             id: "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA",
///         },
///         {
///             id: "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB",
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_network_group = azure_native.managednetwork.ManagedNetworkGroup("managedNetworkGroup",
///     managed_network_group_name="myManagedNetworkGroup1",
///     managed_network_name="myManagedNetwork",
///     management_groups=[],
///     resource_group_name="myResourceGroup",
///     subnets=[{
///         "id": "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA/subnets/subnetA",
///     }],
///     subscriptions=[],
///     virtual_networks=[
///         {
///             "id": "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA",
///         },
///         {
///             "id": "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB",
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   managedNetworkGroup:
///     type: azure-native:managednetwork:ManagedNetworkGroup
///     properties:
///       managedNetworkGroupName: myManagedNetworkGroup1
///       managedNetworkName: myManagedNetwork
///       managementGroups: []
///       resourceGroupName: myResourceGroup
///       subnets:
///         - id: /subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA/subnets/subnetA
///       subscriptions: []
///       virtualNetworks:
///         - id: /subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA
///         - id: /subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB
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
/// $ pulumi import azure-native:managednetwork:ManagedNetworkGroup myManagedNetworkGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetwork/managedNetworks/{managedNetworkName}/managedNetworkGroups/{managedNetworkGroupName}
/// ```
class ManagedNetworkGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Responsibility role under which this Managed Network Group will be created
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The collection of management groups covered by the Managed Network
  late final pulumi.Output<List<Map<String, dynamic>>?> managementGroups;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the ManagedNetwork resource.
  late final pulumi.Output<String> provisioningState;
  /// The collection of  subnets covered by the Managed Network
  late final pulumi.Output<List<Map<String, dynamic>>?> subnets;
  /// The collection of subscriptions covered by the Managed Network
  late final pulumi.Output<List<Map<String, dynamic>>?> subscriptions;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;
  /// The collection of virtual nets covered by the Managed Network
  late final pulumi.Output<List<Map<String, dynamic>>?> virtualNetworks;

  /// Creates a new [ManagedNetworkGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNetworkGroup]. {@macro pulumi_managednetwork_managed_network_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNetworkGroup(
    String name, {
    ManagedNetworkGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetwork:ManagedNetworkGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    managementGroups = registerOutput<List<Map<String, dynamic>>?>('managementGroups');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    subnets = registerOutput<List<Map<String, dynamic>>?>('subnets');
    subscriptions = registerOutput<List<Map<String, dynamic>>?>('subscriptions');
    type = registerOutput<String>('type');
    virtualNetworks = registerOutput<List<Map<String, dynamic>>?>('virtualNetworks');
  }
}
