// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_preference_enum_value_response.dart';
import 'capacity_reservation_target_response_response.dart';

/// Definition of CapacityReservationSpecificationResponse
class CapacityReservationSpecificationResponseResponse {
  /// <p>Describes the instance's Capacity Reservation preferences. Possible preferences include:</p> <ul> <li> <p> <code>open</code> - The instance can run in any <code>open</code> Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).</p> </li> <li> <p> <code>none</code> - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.</p> </li> </ul>
  final pulumi.Input<CapacityReservationPreferenceEnumValueResponse>? capacityReservationPreference;
  /// <p>Information about the targeted Capacity Reservation or Capacity Reservation group.</p>
  final pulumi.Input<CapacityReservationTargetResponseResponse>? capacityReservationTarget;

  /// Creates a new [CapacityReservationSpecificationResponseResponse].
  /// [capacityReservationPreference] <p>Describes the instance's Capacity Reservation preferences. Possible preferences include:</p> <ul> <li> <p> <code>open</code> - The instance can run in any <code>open</code> Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).</p> </li> <li> <p> <code>none</code> - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.</p> </li> </ul>
  /// [capacityReservationTarget] <p>Information about the targeted Capacity Reservation or Capacity Reservation group.</p>
  CapacityReservationSpecificationResponseResponse({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference': ?pulumi.Input.mapOptionalInputValue<CapacityReservationPreferenceEnumValueResponse, Map<String, dynamic>>(capacityReservationPreference, (value) => value.toMap()),
      'capacityReservationTarget': ?pulumi.Input.mapOptionalInputValue<CapacityReservationTargetResponseResponse, Map<String, dynamic>>(capacityReservationTarget, (value) => value.toMap()),
    };
  }

  factory CapacityReservationSpecificationResponseResponse.fromMap(Map<String, dynamic> map) {
    return CapacityReservationSpecificationResponseResponse(
      capacityReservationPreference: map['capacityReservationPreference'] == null ? null : (CapacityReservationPreferenceEnumValueResponse.fromMap((map['capacityReservationPreference']! as Map).cast<String, dynamic>())).input(),
      capacityReservationTarget: map['capacityReservationTarget'] == null ? null : (CapacityReservationTargetResponseResponse.fromMap((map['capacityReservationTarget']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

