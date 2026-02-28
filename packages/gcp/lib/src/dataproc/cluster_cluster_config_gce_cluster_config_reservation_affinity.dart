// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigGceClusterConfigReservationAffinity {
  /// Corresponds to the type of reservation consumption.
  final String? consumeReservationType;

  /// Corresponds to the label key of reservation resource.
  final String? key;

  /// Corresponds to the label values of reservation resource.
  final List<String>? values;

  /// Creates a new [ClusterClusterConfigGceClusterConfigReservationAffinity].
  /// [consumeReservationType] Corresponds to the type of reservation consumption.
  /// [key] Corresponds to the label key of reservation resource.
  /// [values] Corresponds to the label values of reservation resource.
  ClusterClusterConfigGceClusterConfigReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumeReservationTypeValue = consumeReservationType;
    if (consumeReservationTypeValue != null) {
      map['consumeReservationType'] = consumeReservationTypeValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory ClusterClusterConfigGceClusterConfigReservationAffinity.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigReservationAffinity(
      consumeReservationType: map['consumeReservationType'] == null
          ? null
          : map['consumeReservationType'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
