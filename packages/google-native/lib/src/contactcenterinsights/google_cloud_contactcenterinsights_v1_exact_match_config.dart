// ignore_for_file: unused_element, unnecessary_cast

/// Exact match configuration.
class GoogleCloudContactcenterinsightsV1ExactMatchConfig {
  /// Whether to consider case sensitivity when performing an exact match.
  final bool? caseSensitive;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ExactMatchConfig].
  /// [caseSensitive] Whether to consider case sensitivity when performing an exact match.
  GoogleCloudContactcenterinsightsV1ExactMatchConfig({this.caseSensitive});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'caseSensitive': ?caseSensitive};
  }

  factory GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ExactMatchConfig(
      caseSensitive: map['caseSensitive'] == null
          ? null
          : map['caseSensitive'] as bool,
    );
  }
}
