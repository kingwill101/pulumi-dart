// ignore_for_file: unused_element, unnecessary_cast

import 'reservation_affinity_consume_reservation_type_container_v1beta1.dart';

/// [ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) is the configuration of desired reservation which instances could take capacity from.
class ReservationAffinityContainerV1beta1 {
  /// Corresponds to the type of reservation consumption.
  final ReservationAffinityConsumeReservationTypeContainerV1beta1?
  consumeReservationType;

  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  final String? key;

  /// Corresponds to the label value(s) of reservation resource(s).
  final List<String>? values;

  /// Creates a new [ReservationAffinityContainerV1beta1].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  /// [values] Corresponds to the label value(s) of reservation resource(s).
  ReservationAffinityContainerV1beta1({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?consumeReservationType == null
          ? null
          : consumeReservationType!.value,
      'key': ?key,
      'values': ?values,
    };
  }

  factory ReservationAffinityContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReservationAffinityContainerV1beta1(
      consumeReservationType: map['consumeReservationType'] == null
          ? null
          : ReservationAffinityConsumeReservationTypeContainerV1beta1.fromValue(
              map['consumeReservationType'] as String,
            ),
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
