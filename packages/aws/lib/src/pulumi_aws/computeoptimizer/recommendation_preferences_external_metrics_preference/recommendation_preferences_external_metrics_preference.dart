// ignore_for_file: unused_element, unnecessary_cast

class RecommendationPreferencesExternalMetricsPreference {
  /// The source options for external metrics preferences. Valid values: `Datadog`, `Dynatrace`, `NewRelic`, `Instana`.
  final String source;

  RecommendationPreferencesExternalMetricsPreference({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['source'] = source;
    return map;
  }

  factory RecommendationPreferencesExternalMetricsPreference.fromMap(
      Map<String, dynamic> map) {
    return RecommendationPreferencesExternalMetricsPreference(
      source: map['source'] as String,
    );
  }
}
