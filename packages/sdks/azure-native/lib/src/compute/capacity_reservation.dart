import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_args.dart';
import 'capacity_reservation_instance_view_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Specifies information about the capacity reservation.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a capacity reservation .
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityReservation = new AzureNative.Compute.CapacityReservation("capacityReservation", new()
///     {
///         CapacityReservationGroupName = "myCapacityReservationGroup",
///         CapacityReservationName = "myCapacityReservation",
///         Location = "westus",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.SkuArgs
///         {
///             Capacity = 4,
///             Name = "Standard_DS1_v2",
///         },
///         Tags =
///         {
///             { "department", "HR" },
///         },
///         Zones = new[]
///         {
///             "1",
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
/// 		_, err := compute.NewCapacityReservation(ctx, "capacityReservation", &compute.CapacityReservationArgs{
/// 			CapacityReservationGroupName: pulumi.String("myCapacityReservationGroup"),
/// 			CapacityReservationName:      pulumi.String("myCapacityReservation"),
/// 			Location:                     pulumi.String("westus"),
/// 			ResourceGroupName:            pulumi.String("myResourceGroup"),
/// 			Sku: &compute.SkuArgs{
/// 				Capacity: pulumi.Float64(4),
/// 				Name:     pulumi.String("Standard_DS1_v2"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"department": pulumi.String("HR"),
/// 			},
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
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
/// resource "azure-native_compute_capacityreservation" "capacityReservation" {
///   capacity_reservation_group_name = "myCapacityReservationGroup"
///   capacity_reservation_name       = "myCapacityReservation"
///   location                        = "westus"
///   resource_group_name             = "myResourceGroup"
///   sku = {
///     capacity = 4
///     name     = "Standard_DS1_v2"
///   }
///   tags = {
///     "department" = "HR"
///   }
///   zones = ["1"]
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
/// import com.pulumi.azurenative.compute.CapacityReservation;
/// import com.pulumi.azurenative.compute.CapacityReservationArgs;
/// import com.pulumi.azurenative.compute.inputs.SkuArgs;
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
///         var capacityReservation = new CapacityReservation("capacityReservation", CapacityReservationArgs.builder()
///             .capacityReservationGroupName("myCapacityReservationGroup")
///             .capacityReservationName("myCapacityReservation")
///             .location("westus")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .capacity(4.0)
///                 .name("Standard_DS1_v2")
///                 .build())
///             .tags(Map.of("department", "HR"))
///             .zones("1")
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
/// const capacityReservation = new azure_native.compute.CapacityReservation("capacityReservation", {
///     capacityReservationGroupName: "myCapacityReservationGroup",
///     capacityReservationName: "myCapacityReservation",
///     location: "westus",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         capacity: 4,
///         name: "Standard_DS1_v2",
///     },
///     tags: {
///         department: "HR",
///     },
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_reservation = azure_native.compute.CapacityReservation("capacityReservation",
///     capacity_reservation_group_name="myCapacityReservationGroup",
///     capacity_reservation_name="myCapacityReservation",
///     location="westus",
///     resource_group_name="myResourceGroup",
///     sku={
///         "capacity": float(4),
///         "name": "Standard_DS1_v2",
///     },
///     tags={
///         "department": "HR",
///     },
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   capacityReservation:
///     type: azure-native:compute:CapacityReservation
///     properties:
///       capacityReservationGroupName: myCapacityReservationGroup
///       capacityReservationName: myCapacityReservation
///       location: westus
///       resourceGroupName: myResourceGroup
///       sku:
///         capacity: 4
///         name: Standard_DS1_v2
///       tags:
///         department: HR
///       zones:
///         - '1'
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
/// $ pulumi import azure-native:compute:CapacityReservation myCapacityReservation /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/capacityReservationGroups/{capacityReservationGroupName}/capacityReservations/{capacityReservationName}
/// ```
class CapacityReservation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Capacity reservation instance view.
  late final pulumi.Output<CapacityReservationInstanceViewResponse> instanceView;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies the value of fault domain count that Capacity Reservation supports for requested VM size. **Note:** The fault domain count specified for a resource (like virtual machines scale set) must be less than or equal to this value if it deploys using capacity reservation. Minimum api-version: 2022-08-01.
  late final pulumi.Output<int> platformFaultDomainCount;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// The date time when the capacity reservation was last updated.
  late final pulumi.Output<String> provisioningTime;
  /// A unique id generated and assigned to the capacity reservation by the platform which does not change throughout the lifetime of the resource.
  late final pulumi.Output<String> reservationId;
  /// SKU of the resource for which capacity needs be reserved. The SKU name and capacity is required to be set.  For Block capacity reservations, sku.capacity can only accept values 1, 2, 4, 8, 16, 32, 64. Currently VM Skus with the capability called 'CapacityReservationSupported' set to true are supported. When 'CapacityReservationSupported' is true, the SKU capability also specifies the 'SupportedCapacityReservationTypes', which lists the types of capacity reservations (such as Targeted or Block) that the SKU supports. Refer to List Microsoft.Compute SKUs in a region (https://docs.microsoft.com/rest/api/compute/resourceskus/list) for supported values.
  late final pulumi.Output<SkuResponse> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the time at which the Capacity Reservation resource was created. Minimum api-version: 2021-11-01.
  late final pulumi.Output<String> timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// A list of all virtual machine resource ids that are associated with the capacity reservation.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualMachinesAssociated;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [CapacityReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityReservation]. {@macro pulumi_compute_capacity_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityReservation(
    String name, {
    CapacityReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:CapacityReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    instanceView = registerOutput<CapacityReservationInstanceViewResponse>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityReservationInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    provisioningState = registerOutput<String>('provisioningState');
    provisioningTime = registerOutput<String>('provisioningTime');
    reservationId = registerOutput<String>('reservationId');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    timeCreated = registerOutput<String>('timeCreated');
    type = registerOutput<String>('type');
    virtualMachinesAssociated = registerOutput<List<Map<String, dynamic>>>('virtualMachinesAssociated');
    zones = registerOutput<List<String>?>('zones');
  }
}
