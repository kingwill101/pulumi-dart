// ignore_for_file: unused_element, unnecessary_cast

/// Exact match configuration.
class GoogleCloudContactcenterinsightsV1ExactMatchConfig {
  /// Whether to consider case sensitivity when performing an exact match.
  final bool? caseSensitive;

  GoogleCloudContactcenterinsightsV1ExactMatchConfig({
    this.caseSensitive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caseSensitiveValue = caseSensitive;
    if (caseSensitiveValue != null) {
      map['caseSensitive'] = caseSensitiveValue;
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ExactMatchConfig(
      caseSensitive:
          map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
    );
  }
}
