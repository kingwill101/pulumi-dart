// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationPreferencesUtilizationPreferenceMetricParameters {
  /// The headroom value in percentage used for the specified metric parameter. Valid values: `PERCENT_30`, `PERCENT_20`, `PERCENT_10`, `PERCENT_0`.
  final pulumi.Input<String> headroom;
  /// The threshold value used for the specified metric parameter. You can only specify the threshold value for CPU utilization. Valid values: `P90`, `P95`, `P99_5`.
  final pulumi.Input<String>? threshold;

  /// Creates a new [RecommendationPreferencesUtilizationPreferenceMetricParameters].
  /// [headroom] The headroom value in percentage used for the specified metric parameter. Valid values: `PERCENT_30`, `PERCENT_20`, `PERCENT_10`, `PERCENT_0`.
  /// [threshold] The threshold value used for the specified metric parameter. You can only specify the threshold value for CPU utilization. Valid values: `P90`, `P95`, `P99_5`.
  RecommendationPreferencesUtilizationPreferenceMetricParameters({
    required this.headroom,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headroom': headroom,
      'threshold': ?threshold,
    };
  }

  factory RecommendationPreferencesUtilizationPreferenceMetricParameters.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesUtilizationPreferenceMetricParameters(
      headroom: (map['headroom'] as String).input(),
      threshold: map['threshold'] == null ? null : ((map['threshold'] as String).input()).input(),
    );
  }
}

