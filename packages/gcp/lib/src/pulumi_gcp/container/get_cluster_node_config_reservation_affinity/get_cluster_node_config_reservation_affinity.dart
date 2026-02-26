// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  final String consumeReservationType;

  /// The label key of a reservation resource.
  final String key;

  /// The label values of the reservation resource.
  final List<String> values;

  GetClusterNodeConfigReservationAffinity({
    required this.consumeReservationType,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumeReservationType'] = consumeReservationType;
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory GetClusterNodeConfigReservationAffinity.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigReservationAffinity(
      consumeReservationType: map['consumeReservationType'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
