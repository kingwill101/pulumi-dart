// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_capacity_reservation_args_doc}
/// Arguments for getCapacityReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_get_capacity_reservation_args_doc}
class GetCapacityReservationArgs {
  /// The name of the capacity reservation group.
  final pulumi.Input<String> capacityReservationGroupName;
  /// The name of the capacity reservation.
  final pulumi.Input<String> capacityReservationName;
  /// The expand expression to apply on the operation. 'InstanceView' retrieves a snapshot of the runtime properties of the capacity reservation that is managed by the platform and can change outside of control plane operations.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCapacityReservationArgs].
  /// [capacityReservationGroupName] The name of the capacity reservation group.
  /// [capacityReservationName] The name of the capacity reservation.
  /// [expand] The expand expression to apply on the operation. 'InstanceView' retrieves a snapshot of the runtime properties of the capacity reservation that is managed by the platform and can change outside of control plane operations.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCapacityReservationArgs({
    required String capacityReservationGroupName,
    required String capacityReservationName,
    String? expand,
    required String resourceGroupName,
  }) :
      capacityReservationGroupName = pulumi.Input.asInput<String>(capacityReservationGroupName),
      capacityReservationName = pulumi.Input.asInput<String>(capacityReservationName),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroupName': capacityReservationGroupName,
      'capacityReservationName': capacityReservationName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationArgs(
      capacityReservationGroupName: map['capacityReservationGroupName'] as String,
      capacityReservationName: map['capacityReservationName'] as String,
      expand: map['expand'] == null ? null : map['expand'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

