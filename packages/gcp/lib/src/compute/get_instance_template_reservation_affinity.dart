// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_template_reservation_affinity_specific_reservation.dart';

class GetInstanceTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use.
  final List<GetInstanceTemplateReservationAffinitySpecificReservation> specificReservations;
  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  /// Creates a new [GetInstanceTemplateReservationAffinity].
  /// [specificReservations] Specifies the label selector for the reservation to use.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  GetInstanceTemplateReservationAffinity({
    required this.specificReservations,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservations': pulumi.Input.encodeList<GetInstanceTemplateReservationAffinitySpecificReservation, Map<String, dynamic>>(specificReservations, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetInstanceTemplateReservationAffinity.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateReservationAffinity(
      specificReservations: pulumi.Input.decodeList<GetInstanceTemplateReservationAffinitySpecificReservation>(map['specificReservations'], (value) => GetInstanceTemplateReservationAffinitySpecificReservation.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

