import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_peering_policy_args.dart';
import 'managed_network_peering_policy_properties_response.dart';

/// The Managed Network Peering Policy resource
///
/// Uses Azure REST API version 2019-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedNetworkPeeringPoliciesPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedNetworkPeeringPolicy = new AzureNative.ManagedNetwork.ManagedNetworkPeeringPolicy("managedNetworkPeeringPolicy", new()
///     {
///         ManagedNetworkName = "myManagedNetwork",
///         ManagedNetworkPeeringPolicyName = "myHubAndSpoke",
///         Properties = new AzureNative.ManagedNetwork.Inputs.ManagedNetworkPeeringPolicyPropertiesArgs
///         {
///             Hub = new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///             {
///                 Id = "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myHubVnet",
///             },
///             Spokes = new[]
///             {
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork/managedNetworkGroups/myManagedNetworkGroup1",
///                 },
///             },
///             Type = AzureNative.ManagedNetwork.Type.HubAndSpokeTopology,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := managednetwork.NewManagedNetworkPeeringPolicy(ctx, "managedNetworkPeeringPolicy", &managednetwork.ManagedNetworkPeeringPolicyArgs{
/// 			ManagedNetworkName:              pulumi.String("myManagedNetwork"),
/// 			ManagedNetworkPeeringPolicyName: pulumi.String("myHubAndSpoke"),
/// 			Properties: &managednetwork.ManagedNetworkPeeringPolicyPropertiesArgs{
/// 				Hub: &managednetwork.ResourceIdArgs{
/// 					Id: pulumi.String("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myHubVnet"),
/// 				},
/// 				Spokes: managednetwork.ResourceIdArray{
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork/managedNetworkGroups/myManagedNetworkGroup1"),
/// 					},
/// 				},
/// 				Type: pulumi.String(managednetwork.TypeHubAndSpokeTopology),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.managednetwork.ManagedNetworkPeeringPolicy;
/// import com.pulumi.azurenative.managednetwork.ManagedNetworkPeeringPolicyArgs;
/// import com.pulumi.azurenative.managednetwork.inputs.ManagedNetworkPeeringPolicyPropertiesArgs;
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
///         var managedNetworkPeeringPolicy = new ManagedNetworkPeeringPolicy("managedNetworkPeeringPolicy", ManagedNetworkPeeringPolicyArgs.builder()
///             .managedNetworkName("myManagedNetwork")
///             .managedNetworkPeeringPolicyName("myHubAndSpoke")
///             .properties(ManagedNetworkPeeringPolicyPropertiesArgs.builder()
///                 .hub(ResourceIdArgs.builder()
///                     .id("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myHubVnet")
///                     .build())
///                 .spokes(ResourceIdArgs.builder()
///                     .id("/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork/managedNetworkGroups/myManagedNetworkGroup1")
///                     .build())
///                 .type("HubAndSpokeTopology")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const managedNetworkPeeringPolicy = new azure_native.managednetwork.ManagedNetworkPeeringPolicy("managedNetworkPeeringPolicy", {
///     managedNetworkName: "myManagedNetwork",
///     managedNetworkPeeringPolicyName: "myHubAndSpoke",
///     properties: {
///         hub: {
///             id: "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myHubVnet",
///         },
///         spokes: [{
///             id: "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork/managedNetworkGroups/myManagedNetworkGroup1",
///         }],
///         type: azure_native.managednetwork.Type.HubAndSpokeTopology,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_network_peering_policy = azure_native.managednetwork.ManagedNetworkPeeringPolicy("managedNetworkPeeringPolicy",
///     managed_network_name="myManagedNetwork",
///     managed_network_peering_policy_name="myHubAndSpoke",
///     properties={
///         "hub": {
///             "id": "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myHubVnet",
///         },
///         "spokes": [{
///             "id": "/subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork/managedNetworkGroups/myManagedNetworkGroup1",
///         }],
///         "type": azure_native.managednetwork.Type.HUB_AND_SPOKE_TOPOLOGY,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   managedNetworkPeeringPolicy:
///     type: azure-native:managednetwork:ManagedNetworkPeeringPolicy
///     properties:
///       managedNetworkName: myManagedNetwork
///       managedNetworkPeeringPolicyName: myHubAndSpoke
///       properties:
///         hub:
///           id: /subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myHubVnet
///         spokes:
///           - id: /subscriptionB/resourceGroups/myResourceGroup/providers/Microsoft.ManagedNetwork/managedNetworks/myManagedNetwork/managedNetworkGroups/myManagedNetworkGroup1
///         type: HubAndSpokeTopology
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:managednetwork:ManagedNetworkPeeringPolicy myHubAndSpoke /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetwork/managedNetworks/{managedNetworkName}/managedNetworkPeeringPolicies/{managedNetworkPeeringPolicyName}
/// ```
class ManagedNetworkPeeringPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Gets or sets the properties of a Managed Network Policy
  late final pulumi.Output<ManagedNetworkPeeringPolicyPropertiesResponse>
  properties;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedNetworkPeeringPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNetworkPeeringPolicy]. {@macro pulumi_managednetwork_managed_network_peering_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNetworkPeeringPolicy(
    String name, {
    ManagedNetworkPeeringPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetwork:ManagedNetworkPeeringPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedNetworkPeeringPolicyPropertiesResponse>(
      'properties',
    );
    type = registerOutput<String>('type');
  }
}
