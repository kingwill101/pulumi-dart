// ignore_for_file: unused_element, unnecessary_cast

import '../instance_reservation_affinity_specific_reservation/instance_reservation_affinity_specific_reservation.dart';

class InstanceReservationAffinity {
  /// Specifies the label selector for the reservation to use..
  /// Structure is documented below.
  final InstanceReservationAffinitySpecificReservation? specificReservation;

  /// The type of reservation from which this instance can consume resources.
  final String type;

  InstanceReservationAffinity({
    this.specificReservation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final specificReservationValue = specificReservation;
    if (specificReservationValue != null) {
      map['specificReservation'] = specificReservationValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory InstanceReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceReservationAffinity(
      specificReservation: map['specificReservation'] == null
          ? null
          : InstanceReservationAffinitySpecificReservation.fromMap(
              (map['specificReservation'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
