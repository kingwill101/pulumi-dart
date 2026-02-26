// ignore_for_file: unused_element, unnecessary_cast

import '../instance_template_reservation_affinity_specific_reservation/instance_template_reservation_affinity_specific_reservation.dart';

class InstanceTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use..
  /// Structure is documented below.
  final InstanceTemplateReservationAffinitySpecificReservation?
      specificReservation;

  /// The type of reservation from which this instance can consume resources.
  final String type;

  InstanceTemplateReservationAffinity({
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

  factory InstanceTemplateReservationAffinity.fromMap(
      Map<String, dynamic> map) {
    return InstanceTemplateReservationAffinity(
      specificReservation: map['specificReservation'] == null
          ? null
          : InstanceTemplateReservationAffinitySpecificReservation.fromMap(
              (map['specificReservation'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
