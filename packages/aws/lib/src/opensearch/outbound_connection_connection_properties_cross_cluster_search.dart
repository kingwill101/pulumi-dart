// ignore_for_file: unused_element, unnecessary_cast

class OutboundConnectionConnectionPropertiesCrossClusterSearch {
  /// Skips unavailable clusters and can only be used for cross-cluster searches. Accepted values are `ENABLED` or `DISABLED`.
  final String? skipUnavailable;

  /// Creates a new [OutboundConnectionConnectionPropertiesCrossClusterSearch].
  /// [skipUnavailable] Skips unavailable clusters and can only be used for cross-cluster searches. Accepted values are `ENABLED` or `DISABLED`.
  OutboundConnectionConnectionPropertiesCrossClusterSearch({
    this.skipUnavailable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final skipUnavailableValue = skipUnavailable;
    if (skipUnavailableValue != null) {
      map['skipUnavailable'] = skipUnavailableValue;
    }
    return map;
  }

  factory OutboundConnectionConnectionPropertiesCrossClusterSearch.fromMap(
      Map<String, dynamic> map) {
    return OutboundConnectionConnectionPropertiesCrossClusterSearch(
      skipUnavailable: map['skipUnavailable'] == null
          ? null
          : map['skipUnavailable'] as String,
    );
  }
}
