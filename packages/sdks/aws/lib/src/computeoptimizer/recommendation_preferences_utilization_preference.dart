// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommendation_preferences_utilization_preference_metric_parameters.dart';

class RecommendationPreferencesUtilizationPreference {
  /// The name of the resource utilization metric name to customize. Valid values: `CpuUtilization`, `MemoryUtilization`.
  final pulumi.Input<String> metricName;

  /// The parameters to set when customizing the resource utilization thresholds.
  final pulumi.Input<
    RecommendationPreferencesUtilizationPreferenceMetricParameters
  >
  metricParameters;

  /// Creates a new [RecommendationPreferencesUtilizationPreference].
  /// [metricName] The name of the resource utilization metric name to customize. Valid values: `CpuUtilization`, `MemoryUtilization`.
  /// [metricParameters] The parameters to set when customizing the resource utilization thresholds.
  RecommendationPreferencesUtilizationPreference({
    required this.metricName,
    required this.metricParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'metricParameters':
          pulumi.Input.mapInputValue<
            RecommendationPreferencesUtilizationPreferenceMetricParameters,
            Map<String, dynamic>
          >(metricParameters, (value) => value.toMap()),
    };
  }

  factory RecommendationPreferencesUtilizationPreference.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecommendationPreferencesUtilizationPreference(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricParameters: pulumi.Input.fromValue(
        RecommendationPreferencesUtilizationPreferenceMetricParameters.fromMap(
          (map['metricParameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
