// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  final String consumeReservationType;
  /// The label key of a reservation resource.
  final String key;
  /// The label values of the reservation resource.
  final List<String> values;

  /// Creates a new [GetClusterNodeConfigReservationAffinity].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] The label key of a reservation resource.
  /// [values] The label values of the reservation resource.
  GetClusterNodeConfigReservationAffinity({
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

  factory GetClusterNodeConfigReservationAffinity.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigReservationAffinity(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

