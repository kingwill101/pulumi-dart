import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_collection_response.dart';
import 'managed_network_args.dart';
import 'scope_response.dart';

/// The Managed Network resource
///
/// Uses Azure REST API version 2019-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ManagedNetworksPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedNetwork = new AzureNative.ManagedNetwork.ManagedNetwork("managedNetwork", new()
///     {
///         Location = "eastus",
///         ManagedNetworkName = "myManagedNetwork",
///         ResourceGroupName = "myResourceGroup",
///         Scope = new AzureNative.ManagedNetwork.Inputs.ScopeArgs
///         {
///             ManagementGroups = new[]
///             {
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "/providers/Microsoft.Management/managementGroups/20000000-0001-0000-0000-000000000000",
///                 },
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "/providers/Microsoft.Management/managementGroups/20000000-0002-0000-0000-000000000000",
///                 },
///             },
///             Subnets = new[]
///             {
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetA",
///                 },
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetB",
///                 },
///             },
///             Subscriptions = new[]
///             {
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "subscriptionA",
///                 },
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "subscriptionB",
///                 },
///             },
///             VirtualNetworks = new[]
///             {
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA",
///                 },
///                 new AzureNative.ManagedNetwork.Inputs.ResourceIdArgs
///                 {
///                     Id = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB",
///                 },
///             },
///         },
///         Tags = null,
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
/// 		_, err := managednetwork.NewManagedNetwork(ctx, "managedNetwork", &managednetwork.ManagedNetworkArgs{
/// 			Location:           pulumi.String("eastus"),
/// 			ManagedNetworkName: pulumi.String("myManagedNetwork"),
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
/// 			Scope: &managednetwork.ScopeArgs{
/// 				ManagementGroups: managednetwork.ResourceIdArray{
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("/providers/Microsoft.Management/managementGroups/20000000-0001-0000-0000-000000000000"),
/// 					},
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("/providers/Microsoft.Management/managementGroups/20000000-0002-0000-0000-000000000000"),
/// 					},
/// 				},
/// 				Subnets: managednetwork.ResourceIdArray{
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetA"),
/// 					},
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetB"),
/// 					},
/// 				},
/// 				Subscriptions: managednetwork.ResourceIdArray{
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("subscriptionA"),
/// 					},
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("subscriptionB"),
/// 					},
/// 				},
/// 				VirtualNetworks: managednetwork.ResourceIdArray{
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA"),
/// 					},
/// 					&managednetwork.ResourceIdArgs{
/// 						Id: pulumi.String("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// resource "azure-native_managednetwork_managednetwork" "managedNetwork" {
///   location             = "eastus"
///   managed_network_name = "myManagedNetwork"
///   resource_group_name  = "myResourceGroup"
///   scope = {
///     management_groups = [{
///       "id" = "/providers/Microsoft.Management/managementGroups/20000000-0001-0000-0000-000000000000"
///       }, {
///       "id" = "/providers/Microsoft.Management/managementGroups/20000000-0002-0000-0000-000000000000"
///     }]
///     subnets = [{
///       "id" = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetA"
///       }, {
///       "id" = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetB"
///     }]
///     subscriptions = [{
///       "id" = "subscriptionA"
///       }, {
///       "id" = "subscriptionB"
///     }]
///     virtual_networks = [{
///       "id" = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA"
///       }, {
///       "id" = "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB"
///     }]
///   }
///   tags = {}
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
/// import com.pulumi.azurenative.managednetwork.ManagedNetwork;
/// import com.pulumi.azurenative.managednetwork.ManagedNetworkArgs;
/// import com.pulumi.azurenative.managednetwork.inputs.ScopeArgs;
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
///         var managedNetwork = new ManagedNetwork("managedNetwork", ManagedNetworkArgs.builder()
///             .location("eastus")
///             .managedNetworkName("myManagedNetwork")
///             .resourceGroupName("myResourceGroup")
///             .scope(ScopeArgs.builder()
///                 .managementGroups(
///                     ResourceIdArgs.builder()
///                         .id("/providers/Microsoft.Management/managementGroups/20000000-0001-0000-0000-000000000000")
///                         .build(),
///                     ResourceIdArgs.builder()
///                         .id("/providers/Microsoft.Management/managementGroups/20000000-0002-0000-0000-000000000000")
///                         .build())
///                 .subnets(
///                     ResourceIdArgs.builder()
///                         .id("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetA")
///                         .build(),
///                     ResourceIdArgs.builder()
///                         .id("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetB")
///                         .build())
///                 .subscriptions(
///                     ResourceIdArgs.builder()
///                         .id("subscriptionA")
///                         .build(),
///                     ResourceIdArgs.builder()
///                         .id("subscriptionB")
///                         .build())
///                 .virtualNetworks(
///                     ResourceIdArgs.builder()
///                         .id("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA")
///                         .build(),
///                     ResourceIdArgs.builder()
///                         .id("/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB")
///                         .build())
///                 .build())
///             .tags(Map.ofEntries(
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
/// const managedNetwork = new azure_native.managednetwork.ManagedNetwork("managedNetwork", {
///     location: "eastus",
///     managedNetworkName: "myManagedNetwork",
///     resourceGroupName: "myResourceGroup",
///     scope: {
///         managementGroups: [
///             {
///                 id: "/providers/Microsoft.Management/managementGroups/20000000-0001-0000-0000-000000000000",
///             },
///             {
///                 id: "/providers/Microsoft.Management/managementGroups/20000000-0002-0000-0000-000000000000",
///             },
///         ],
///         subnets: [
///             {
///                 id: "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetA",
///             },
///             {
///                 id: "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetB",
///             },
///         ],
///         subscriptions: [
///             {
///                 id: "subscriptionA",
///             },
///             {
///                 id: "subscriptionB",
///             },
///         ],
///         virtualNetworks: [
///             {
///                 id: "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA",
///             },
///             {
///                 id: "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB",
///             },
///         ],
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_network = azure_native.managednetwork.ManagedNetwork("managedNetwork",
///     location="eastus",
///     managed_network_name="myManagedNetwork",
///     resource_group_name="myResourceGroup",
///     scope={
///         "management_groups": [
///             {
///                 "id": "/providers/Microsoft.Management/managementGroups/20000000-0001-0000-0000-000000000000",
///             },
///             {
///                 "id": "/providers/Microsoft.Management/managementGroups/20000000-0002-0000-0000-000000000000",
///             },
///         ],
///         "subnets": [
///             {
///                 "id": "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetA",
///             },
///             {
///                 "id": "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetB",
///             },
///         ],
///         "subscriptions": [
///             {
///                 "id": "subscriptionA",
///             },
///             {
///                 "id": "subscriptionB",
///             },
///         ],
///         "virtual_networks": [
///             {
///                 "id": "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA",
///             },
///             {
///                 "id": "/subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB",
///             },
///         ],
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   managedNetwork:
///     type: azure-native:managednetwork:ManagedNetwork
///     properties:
///       location: eastus
///       managedNetworkName: myManagedNetwork
///       resourceGroupName: myResourceGroup
///       scope:
///         managementGroups:
///           - id: /providers/Microsoft.Management/managementGroups/20000000-0001-0000-0000-000000000000
///           - id: /providers/Microsoft.Management/managementGroups/20000000-0002-0000-0000-000000000000
///         subnets:
///           - id: /subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetA
///           - id: /subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetC/subnets/subnetB
///         subscriptions:
///           - id: subscriptionA
///           - id: subscriptionB
///         virtualNetworks:
///           - id: /subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetA
///           - id: /subscriptions/subscriptionC/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/VnetB
///       tags: {}
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
/// $ pulumi import azure-native:managednetwork:ManagedNetwork myManagedNetwork /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetwork/managedNetworks/{managedNetworkName}
/// ```
class ManagedNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The collection of groups and policies concerned with connectivity
  late final pulumi.Output<ConnectivityCollectionResponse> connectivity;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the ManagedNetwork resource.
  late final pulumi.Output<String> provisioningState;
  /// The collection of management groups, subscriptions, virtual networks, and subnets by the Managed Network. This is a read-only property that is reflective of all ScopeAssignments for this Managed Network
  late final pulumi.Output<ScopeResponse?> scope;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNetwork]. {@macro pulumi_managednetwork_managed_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNetwork(
    String name, {
    ManagedNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetwork:ManagedNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectivity = registerOutput<ConnectivityCollectionResponse>('connectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityCollectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    scope = registerOutput<ScopeResponse?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ManagedNetwork] resource.
  ManagedNetwork.reference(String urn)
    : super(
        'azure-native:managednetwork:ManagedNetwork',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectivity = registerOutput<ConnectivityCollectionResponse>('connectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectivityCollectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    scope = registerOutput<ScopeResponse?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
