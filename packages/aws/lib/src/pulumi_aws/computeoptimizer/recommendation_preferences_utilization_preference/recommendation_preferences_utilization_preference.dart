// ignore_for_file: unused_element, unnecessary_cast

import '../recommendation_preferences_utilization_preference_metric_parameters/recommendation_preferences_utilization_preference_metric_parameters.dart';

class RecommendationPreferencesUtilizationPreference {
  /// The name of the resource utilization metric name to customize. Valid values: `CpuUtilization`, `MemoryUtilization`.
  final String metricName;

  /// The parameters to set when customizing the resource utilization thresholds.
  final RecommendationPreferencesUtilizationPreferenceMetricParameters
      metricParameters;

  RecommendationPreferencesUtilizationPreference({
    required this.metricName,
    required this.metricParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricName'] = metricName;
    map['metricParameters'] = metricParameters.toMap();
    return map;
  }

  factory RecommendationPreferencesUtilizationPreference.fromMap(
      Map<String, dynamic> map) {
    return RecommendationPreferencesUtilizationPreference(
      metricName: map['metricName'] as String,
      metricParameters:
          RecommendationPreferencesUtilizationPreferenceMetricParameters
              .fromMap(
                  (map['metricParameters'] as Map).cast<String, dynamic>()),
    );
  }
}
