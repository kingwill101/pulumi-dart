// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupAvailabilityZoneDistribution {
  /// The strategy to use for distributing capacity across the Availability Zones. Valid values are `balanced-only`, `balanced-best-effort`, and `reservations-then-balanced`. Default is `balanced-best-effort`. When `reservations-then-balanced` is set, you must also specify Capacity Reservations to prioritize through `capacityReservationSpecification` (or via a launch template) using a Capacity Reservation ID or Capacity Reservation resource group ARN.
  final pulumi.Input<String>? capacityDistributionStrategy;

  /// Creates a new [GroupAvailabilityZoneDistribution].
  /// [capacityDistributionStrategy] The strategy to use for distributing capacity across the Availability Zones. Valid values are `balanced-only`, `balanced-best-effort`, and `reservations-then-balanced`. Default is `balanced-best-effort`. When `reservations-then-balanced` is set, you must also specify Capacity Reservations to prioritize through `capacityReservationSpecification` (or via a launch template) using a Capacity Reservation ID or Capacity Reservation resource group ARN.
  const GroupAvailabilityZoneDistribution({
    this.capacityDistributionStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityDistributionStrategy': ?capacityDistributionStrategy,
    };
  }

  factory GroupAvailabilityZoneDistribution.fromMap(Map<String, dynamic> map) {
    return GroupAvailabilityZoneDistribution(
      capacityDistributionStrategy: (() { final guardedValue = map['capacityDistributionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
