// ignore_for_file: unused_element, unnecessary_cast

/// Scoring configurations for a source while processing a Search or Suggest request.
class ScoringConfigResponse {
  /// Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.
  final bool disableFreshness;

  /// Whether to personalize the results. By default, personal signals will be used to boost results.
  final bool disablePersonalization;

  ScoringConfigResponse({
    required this.disableFreshness,
    required this.disablePersonalization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableFreshness'] = disableFreshness;
    map['disablePersonalization'] = disablePersonalization;
    return map;
  }

  factory ScoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ScoringConfigResponse(
      disableFreshness: map['disableFreshness'] as bool,
      disablePersonalization: map['disablePersonalization'] as bool,
    );
  }
}
