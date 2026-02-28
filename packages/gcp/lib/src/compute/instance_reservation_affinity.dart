// ignore_for_file: unused_element, unnecessary_cast

import 'instance_reservation_affinity_specific_reservation.dart';

class InstanceReservationAffinity {
  /// Specifies the label selector for the reservation to use..
  /// Structure is documented below.
  final InstanceReservationAffinitySpecificReservation? specificReservation;
  /// The type of reservation from which this instance can consume resources.
  final String type;

  /// Creates a new [InstanceReservationAffinity].
  /// [specificReservation] Specifies the label selector for the reservation to use..
  /// [type] The type of reservation from which this instance can consume resources.
  InstanceReservationAffinity({
    this.specificReservation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservation': ?specificReservation == null ? null : specificReservation!.toMap(),
      'type': type,
    };
  }

  factory InstanceReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceReservationAffinity(
      specificReservation: map['specificReservation'] == null ? null : InstanceReservationAffinitySpecificReservation.fromMap((map['specificReservation'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

