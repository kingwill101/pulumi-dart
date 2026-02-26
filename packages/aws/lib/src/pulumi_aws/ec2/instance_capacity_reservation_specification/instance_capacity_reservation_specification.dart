// ignore_for_file: unused_element, unnecessary_cast

import '../instance_capacity_reservation_specification_capacity_reservation_target/instance_capacity_reservation_specification_capacity_reservation_target.dart';

class InstanceCapacityReservationSpecification {
  /// Indicates the instance's Capacity Reservation preferences. Can be `"open"` or `"none"`. (Default: `"open"`).
  final String? capacityReservationPreference;

  /// Information about the target Capacity Reservation. See Capacity Reservation Target below for more details.
  ///
  /// For more information, see the documentation on [Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html).
  final InstanceCapacityReservationSpecificationCapacityReservationTarget?
      capacityReservationTarget;

  InstanceCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityReservationPreferenceValue = capacityReservationPreference;
    if (capacityReservationPreferenceValue != null) {
      map['capacityReservationPreference'] = capacityReservationPreferenceValue;
    }
    final capacityReservationTargetValue = capacityReservationTarget;
    if (capacityReservationTargetValue != null) {
      map['capacityReservationTarget'] = capacityReservationTargetValue.toMap();
    }
    return map;
  }

  factory InstanceCapacityReservationSpecification.fromMap(
      Map<String, dynamic> map) {
    return InstanceCapacityReservationSpecification(
      capacityReservationPreference:
          map['capacityReservationPreference'] == null
              ? null
              : map['capacityReservationPreference'] as String,
      capacityReservationTarget: map['capacityReservationTarget'] == null
          ? null
          : InstanceCapacityReservationSpecificationCapacityReservationTarget
              .fromMap((map['capacityReservationTarget'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
