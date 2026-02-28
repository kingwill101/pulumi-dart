// ignore_for_file: unused_element, unnecessary_cast

import 'region_instance_template_reservation_affinity_specific_reservation.dart';

class RegionInstanceTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use..
  /// Structure is documented below.
  final RegionInstanceTemplateReservationAffinitySpecificReservation? specificReservation;
  /// The type of reservation from which this instance can consume resources.
  final String type;

  /// Creates a new [RegionInstanceTemplateReservationAffinity].
  /// [specificReservation] Specifies the label selector for the reservation to use..
  /// [type] The type of reservation from which this instance can consume resources.
  RegionInstanceTemplateReservationAffinity({
    this.specificReservation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservation': ?specificReservation == null ? null : specificReservation!.toMap(),
      'type': type,
    };
  }

  factory RegionInstanceTemplateReservationAffinity.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateReservationAffinity(
      specificReservation: map['specificReservation'] == null ? null : RegionInstanceTemplateReservationAffinitySpecificReservation.fromMap((map['specificReservation'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

