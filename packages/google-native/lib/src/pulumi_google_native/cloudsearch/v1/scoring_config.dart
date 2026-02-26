// ignore_for_file: unused_element, unnecessary_cast

/// Scoring configurations for a source while processing a Search or Suggest request.
class ScoringConfig {
  /// Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.
  final bool? disableFreshness;

  /// Whether to personalize the results. By default, personal signals will be used to boost results.
  final bool? disablePersonalization;

  ScoringConfig({
    this.disableFreshness,
    this.disablePersonalization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableFreshnessValue = disableFreshness;
    if (disableFreshnessValue != null) {
      map['disableFreshness'] = disableFreshnessValue;
    }
    final disablePersonalizationValue = disablePersonalization;
    if (disablePersonalizationValue != null) {
      map['disablePersonalization'] = disablePersonalizationValue;
    }
    return map;
  }

  factory ScoringConfig.fromMap(Map<String, dynamic> map) {
    return ScoringConfig(
      disableFreshness: map['disableFreshness'] == null
          ? null
          : map['disableFreshness'] as bool,
      disablePersonalization: map['disablePersonalization'] == null
          ? null
          : map['disablePersonalization'] as bool,
    );
  }
}
