// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_sku.dart';

/// {@template pulumi_compute_capacity_reservation_capacity_reservation_args_doc}
/// The set of arguments for CapacityReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_capacity_reservation_capacity_reservation_args_doc}
class CapacityReservationArgs {
  /// The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> capacityReservationGroupId;
  /// Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `sku` block as defined below.
  final pulumi.Input<CapacityReservationSku> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zone;

  /// Creates a new [CapacityReservationArgs].
  /// [capacityReservationGroupId] The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created.
  CapacityReservationArgs({
    required String capacityReservationGroupId,
    String? name,
    required CapacityReservationSku sku,
    Map<String, String>? tags,
    String? zone,
  }) :
      capacityReservationGroupId = pulumi.Input.asInput<String>(capacityReservationGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sku = pulumi.Input.asInput<CapacityReservationSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroupId': capacityReservationGroupId,
      'name': ?name,
      'sku': pulumi.Input.mapInputValue<CapacityReservationSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory CapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs(
      capacityReservationGroupId: map['capacityReservationGroupId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sku: CapacityReservationSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

