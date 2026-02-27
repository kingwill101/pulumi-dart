// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_reservation_affinity_specific_reservation/get_instance_reservation_affinity_specific_reservation.dart';

class GetInstanceReservationAffinity {
  /// Specifies the label selector for the reservation to use.
  final List<GetInstanceReservationAffinitySpecificReservation>
      specificReservations;

  /// The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  GetInstanceReservationAffinity({
    required this.specificReservations,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['specificReservations'] = pulumi.Input.encodeList<
        GetInstanceReservationAffinitySpecificReservation,
        Map<String, dynamic>>(specificReservations, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GetInstanceReservationAffinity.fromMap(Map<String, dynamic> map) {
    return GetInstanceReservationAffinity(
      specificReservations: pulumi.Input.decodeList<
              GetInstanceReservationAffinitySpecificReservation>(
          map['specificReservations'],
          (value) => GetInstanceReservationAffinitySpecificReservation.fromMap(
              (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
