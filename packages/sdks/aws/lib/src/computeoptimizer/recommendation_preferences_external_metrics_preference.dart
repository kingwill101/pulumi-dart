// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationPreferencesExternalMetricsPreference {
  /// The source options for external metrics preferences. Valid values: `Datadog`, `Dynatrace`, `NewRelic`, `Instana`.
  final pulumi.Input<String> source;

  /// Creates a new [RecommendationPreferencesExternalMetricsPreference].
  /// [source] The source options for external metrics preferences. Valid values: `Datadog`, `Dynatrace`, `NewRelic`, `Instana`.
  const RecommendationPreferencesExternalMetricsPreference({
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
    };
  }

  factory RecommendationPreferencesExternalMetricsPreference.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesExternalMetricsPreference(
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

