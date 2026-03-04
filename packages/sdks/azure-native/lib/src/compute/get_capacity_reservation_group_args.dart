// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_capacity_reservation_group_args_doc}
/// Arguments for getCapacityReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_capacity_reservation_group_args_doc}
class GetCapacityReservationGroupArgs {
  /// The name of the capacity reservation group.
  final pulumi.Input<String> capacityReservationGroupName;

  /// The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the capacity reservations under the capacity reservation group which is a snapshot of the runtime properties of a capacity reservation that is managed by the platform and can change outside of control plane operations.
  final pulumi.Input<String>? expand;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCapacityReservationGroupArgs].
  /// [capacityReservationGroupName] The name of the capacity reservation group.
  /// [expand] The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the capacity reservations under the capacity reservation group which is a snapshot of the runtime properties of a capacity reservation that is managed by the platform and can change outside of control plane operations.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCapacityReservationGroupArgs({
    required this.capacityReservationGroupName,
    this.expand,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroupName': capacityReservationGroupName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCapacityReservationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationGroupArgs(
      capacityReservationGroupName: pulumi.Input.fromValue(
        map['capacityReservationGroupName'] as String,
      ),
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
