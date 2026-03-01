// ignore_for_file: unused_element, unnecessary_cast

/// [ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) is the configuration of desired reservation which instances could take capacity from.
class ReservationAffinityResponse {
  /// Corresponds to the type of reservation consumption.
  final String consumeReservationType;

  /// Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  final String key;

  /// Corresponds to the label value(s) of reservation resource(s).
  final List<String> values;

  /// Creates a new [ReservationAffinityResponse].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  /// [values] Corresponds to the label value(s) of reservation resource(s).
  ReservationAffinityResponse({
    required this.consumeReservationType,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': consumeReservationType,
      'key': key,
      'values': values,
    };
  }

  factory ReservationAffinityResponse.fromMap(Map<String, dynamic> map) {
    return ReservationAffinityResponse(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
