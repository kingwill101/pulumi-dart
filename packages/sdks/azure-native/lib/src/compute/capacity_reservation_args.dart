// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_compute_capacity_reservation_args_doc}
/// The set of arguments for CapacityReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_capacity_reservation_args_doc}
class CapacityReservationArgs {
  /// The name of the capacity reservation group.
  final pulumi.Input<String> capacityReservationGroupName;
  /// The name of the capacity reservation.
  final pulumi.Input<String>? capacityReservationName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SKU of the resource for which capacity needs be reserved. The SKU name and capacity is required to be set.  For Block capacity reservations, sku.capacity can only accept values 1, 2, 4, 8, 16, 32, 64. Currently VM Skus with the capability called 'CapacityReservationSupported' set to true are supported. When 'CapacityReservationSupported' is true, the SKU capability also specifies the 'SupportedCapacityReservationTypes', which lists the types of capacity reservations (such as Targeted or Block) that the SKU supports. Refer to List Microsoft.Compute SKUs in a region (https://docs.microsoft.com/rest/api/compute/resourceskus/list) for supported values.
  final pulumi.Input<Sku> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CapacityReservationArgs].
  /// [capacityReservationGroupName] The name of the capacity reservation group.
  /// [capacityReservationName] The name of the capacity reservation.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU of the resource for which capacity needs be reserved. The SKU name and capacity is required to be set.  For Block capacity reservations, sku.capacity can only accept values 1, 2, 4, 8, 16, 32, 64. Currently VM Skus with the capability called 'CapacityReservationSupported' set to true are supported. When 'CapacityReservationSupported' is true, the SKU capability also specifies the 'SupportedCapacityReservationTypes', which lists the types of capacity reservations (such as Targeted or Block) that the SKU supports. Refer to List Microsoft.Compute SKUs in a region (https://docs.microsoft.com/rest/api/compute/resourceskus/list) for supported values.
  /// [tags] Resource tags.
  /// [zones] The availability zones.
  CapacityReservationArgs({
    required pulumi.Output<String> capacityReservationGroupName,
    pulumi.Output<String>? capacityReservationName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<Sku> sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      capacityReservationGroupName = pulumi.Input.asInput<String>(capacityReservationGroupName),
      capacityReservationName = pulumi.Input.asOptionalInput<String>(capacityReservationName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroupName': capacityReservationGroupName,
      'capacityReservationName': ?capacityReservationName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory CapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs(
      capacityReservationGroupName: pulumi.Output.create<String>(map['capacityReservationGroupName'] as String),
      capacityReservationName: map['capacityReservationName'] == null ? null : pulumi.Output.create<String>(map['capacityReservationName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

