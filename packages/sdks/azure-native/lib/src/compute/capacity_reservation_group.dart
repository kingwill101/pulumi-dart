import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_group_args.dart';
import 'capacity_reservation_group_instance_view_response.dart';
import 'resource_sharing_profile_response.dart';
import 'system_data_response.dart';

/// Specifies information about the capacity reservation group that the capacity reservations should be assigned to. Currently, a capacity reservation can only be added to a capacity reservation group at creation time. An existing capacity reservation cannot be added or moved to another capacity reservation group.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a capacity reservation group.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityReservationGroup = new AzureNative.Compute.CapacityReservationGroup("capacityReservationGroup", new()
///     {
///         CapacityReservationGroupName = "myCapacityReservationGroup",
///         Location = "westus",
///         ResourceGroupName = "myResourceGroup",
///         SharingProfile = new AzureNative.Compute.Inputs.ResourceSharingProfileArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id1}",
///                 },
///                 new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/{subscription-id2}",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "department", "finance" },
///         },
///         Zones = new[]
///         {
///             "1",
///             "2",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewCapacityReservationGroup(ctx, "capacityReservationGroup", &compute.CapacityReservationGroupArgs{
/// 			CapacityReservationGroupName: pulumi.String("myCapacityReservationGroup"),
/// 			Location:                     pulumi.String("westus"),
/// 			ResourceGroupName:            pulumi.String("myResourceGroup"),
/// 			SharingProfile: &compute.ResourceSharingProfileArgs{
/// 				SubscriptionIds: compute.SubResourceArray{
/// 					&compute.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id1}"),
/// 					},
/// 					&compute.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id2}"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"department": pulumi.String("finance"),
/// 			},
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
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
/// import com.pulumi.azurenative.compute.CapacityReservationGroup;
/// import com.pulumi.azurenative.compute.CapacityReservationGroupArgs;
/// import com.pulumi.azurenative.compute.inputs.ResourceSharingProfileArgs;
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
///         var capacityReservationGroup = new CapacityReservationGroup("capacityReservationGroup", CapacityReservationGroupArgs.builder()
///             .capacityReservationGroupName("myCapacityReservationGroup")
///             .location("westus")
///             .resourceGroupName("myResourceGroup")
///             .sharingProfile(ResourceSharingProfileArgs.builder()
///                 .subscriptionIds(
///                     SubResourceArgs.builder()
///                         .id("/subscriptions/{subscription-id1}")
///                         .build(),
///                     SubResourceArgs.builder()
///                         .id("/subscriptions/{subscription-id2}")
///                         .build())
///                 .build())
///             .tags(Map.of("department", "finance"))
///             .zones(
///                 "1",
///                 "2")
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
/// const capacityReservationGroup = new azure_native.compute.CapacityReservationGroup("capacityReservationGroup", {
///     capacityReservationGroupName: "myCapacityReservationGroup",
///     location: "westus",
///     resourceGroupName: "myResourceGroup",
///     sharingProfile: {
///         subscriptionIds: [
///             {
///                 id: "/subscriptions/{subscription-id1}",
///             },
///             {
///                 id: "/subscriptions/{subscription-id2}",
///             },
///         ],
///     },
///     tags: {
///         department: "finance",
///     },
///     zones: [
///         "1",
///         "2",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_reservation_group = azure_native.compute.CapacityReservationGroup("capacityReservationGroup",
///     capacity_reservation_group_name="myCapacityReservationGroup",
///     location="westus",
///     resource_group_name="myResourceGroup",
///     sharing_profile={
///         "subscription_ids": [
///             {
///                 "id": "/subscriptions/{subscription-id1}",
///             },
///             {
///                 "id": "/subscriptions/{subscription-id2}",
///             },
///         ],
///     },
///     tags={
///         "department": "finance",
///     },
///     zones=[
///         "1",
///         "2",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   capacityReservationGroup:
///     type: azure-native:compute:CapacityReservationGroup
///     properties:
///       capacityReservationGroupName: myCapacityReservationGroup
///       location: westus
///       resourceGroupName: myResourceGroup
///       sharingProfile:
///         subscriptionIds:
///           - id: /subscriptions/{subscription-id1}
///           - id: /subscriptions/{subscription-id2}
///       tags:
///         department: finance
///       zones:
///         - '1'
///         - '2'
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
/// $ pulumi import azure-native:compute:CapacityReservationGroup myCapacityReservationGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName}
/// ```
class CapacityReservationGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A list of all capacity reservation resource ids that belong to capacity reservation group.
  late final pulumi.Output<List<Map<String, dynamic>>> capacityReservations;

  /// The capacity reservation group instance view which has the list of instance views for all the capacity reservations that belong to the capacity reservation group.
  late final pulumi.Output<CapacityReservationGroupInstanceViewResponse>
  instanceView;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Specifies the settings to enable sharing across subscriptions for the capacity reservation group resource. The capacity reservation group resource can generally be shared across subscriptions belonging to a single Azure AAD tenant or across AAD tenants if there is a trust relationship established between the tenants.  Block capacity reservation does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  late final pulumi.Output<ResourceSharingProfileResponse?> sharingProfile;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// A list of references to all virtual machines associated to the capacity reservation group.
  late final pulumi.Output<List<Map<String, dynamic>>>
  virtualMachinesAssociated;

  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [CapacityReservationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityReservationGroup]. {@macro pulumi_compute_capacity_reservation_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityReservationGroup(
    String name, {
    CapacityReservationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:CapacityReservationGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    capacityReservations = registerOutput<List<Map<String, dynamic>>>(
      'capacityReservations',
    );
    instanceView = registerOutput<CapacityReservationGroupInstanceViewResponse>(
      'instanceView',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sharingProfile = registerOutput<ResourceSharingProfileResponse?>(
      'sharingProfile',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualMachinesAssociated = registerOutput<List<Map<String, dynamic>>>(
      'virtualMachinesAssociated',
    );
    zones = registerOutput<List<String>?>('zones');
  }
}
