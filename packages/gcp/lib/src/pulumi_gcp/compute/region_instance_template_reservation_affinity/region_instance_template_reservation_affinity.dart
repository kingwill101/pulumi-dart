// ignore_for_file: unused_element, unnecessary_cast

import '../region_instance_template_reservation_affinity_specific_reservation/region_instance_template_reservation_affinity_specific_reservation.dart';

class RegionInstanceTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use..
  /// Structure is documented below.
  final RegionInstanceTemplateReservationAffinitySpecificReservation?
      specificReservation;

  /// The type of reservation from which this instance can consume resources.
  final String type;

  RegionInstanceTemplateReservationAffinity({
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

  factory RegionInstanceTemplateReservationAffinity.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceTemplateReservationAffinity(
      specificReservation: map['specificReservation'] == null
          ? null
          : RegionInstanceTemplateReservationAffinitySpecificReservation
              .fromMap(
                  (map['specificReservation'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
