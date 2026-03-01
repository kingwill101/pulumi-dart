// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_reservation_preference_enum_value_response.dart';
import 'capacity_reservation_target_response_response.dart';

/// Definition of CapacityReservationSpecificationResponse
class CapacityReservationSpecificationResponseResponse {
  /// <p>Describes the instance's Capacity Reservation preferences. Possible preferences include:</p> <ul> <li> <p> <code>open</code> - The instance can run in any <code>open</code> Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).</p> </li> <li> <p> <code>none</code> - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.</p> </li> </ul>
  final CapacityReservationPreferenceEnumValueResponse? capacityReservationPreference;
  /// <p>Information about the targeted Capacity Reservation or Capacity Reservation group.</p>
  final CapacityReservationTargetResponseResponse? capacityReservationTarget;

  /// Creates a new [CapacityReservationSpecificationResponseResponse].
  /// [capacityReservationPreference] <p>Describes the instance's Capacity Reservation preferences. Possible preferences include:</p> <ul> <li> <p> <code>open</code> - The instance can run in any <code>open</code> Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).</p> </li> <li> <p> <code>none</code> - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.</p> </li> </ul>
  /// [capacityReservationTarget] <p>Information about the targeted Capacity Reservation or Capacity Reservation group.</p>
  CapacityReservationSpecificationResponseResponse({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': ?capacityReservationPreference == null ? null : capacityReservationPreference!.toMap(),
      'capacityReservationTarget': ?capacityReservationTarget == null ? null : capacityReservationTarget!.toMap(),
    };
  }

  factory CapacityReservationSpecificationResponseResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationSpecificationResponseResponse(
      capacityReservationPreference: map['capacityReservationPreference'] == null ? null : CapacityReservationPreferenceEnumValueResponse.fromMap((map['capacityReservationPreference'] as Map).cast<String, dynamic>()),
      capacityReservationTarget: map['capacityReservationTarget'] == null ? null : CapacityReservationTargetResponseResponse.fromMap((map['capacityReservationTarget'] as Map).cast<String, dynamic>()),
    );
  }
}

