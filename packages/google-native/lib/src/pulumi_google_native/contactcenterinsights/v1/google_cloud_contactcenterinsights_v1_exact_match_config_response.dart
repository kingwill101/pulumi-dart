// ignore_for_file: unused_element, unnecessary_cast

/// Exact match configuration.
class GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse {
  /// Whether to consider case sensitivity when performing an exact match.
  final bool caseSensitive;

  GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse({
    required this.caseSensitive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caseSensitive'] = caseSensitive;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse(
      caseSensitive: map['caseSensitive'] as bool,
    );
  }
}
