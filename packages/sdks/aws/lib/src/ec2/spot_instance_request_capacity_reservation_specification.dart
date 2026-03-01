// ignore_for_file: unused_element, unnecessary_cast

import 'spot_instance_request_capacity_reservation_specification_capacity_reservation_target.dart';

class SpotInstanceRequestCapacityReservationSpecification {
  /// Indicates the instance's Capacity Reservation preferences. Can be `"open"` or `"none"`. (Default: `"open"`).
  final String? capacityReservationPreference;
  /// Information about the target Capacity Reservation. See Capacity Reservation Target below for more details.
  ///
  /// For more information, see the documentation on [Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html).
  final SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget? capacityReservationTarget;

  /// Creates a new [SpotInstanceRequestCapacityReservationSpecification].
  /// [capacityReservationPreference] Indicates the instance's Capacity Reservation preferences. Can be `"open"` or `"none"`. (Default: `"open"`).
  /// [capacityReservationTarget] Information about the target Capacity Reservation. See Capacity Reservation Target below for more details.
  SpotInstanceRequestCapacityReservationSpecification({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': ?capacityReservationPreference,
      'capacityReservationTarget': ?capacityReservationTarget == null ? null : capacityReservationTarget!.toMap(),
    };
  }

  factory SpotInstanceRequestCapacityReservationSpecification.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestCapacityReservationSpecification(
      capacityReservationPreference: map['capacityReservationPreference'] == null ? null : map['capacityReservationPreference'] as String,
      capacityReservationTarget: map['capacityReservationTarget'] == null ? null : SpotInstanceRequestCapacityReservationSpecificationCapacityReservationTarget.fromMap((map['capacityReservationTarget'] as Map).cast<String, dynamic>()),
    );
  }
}

