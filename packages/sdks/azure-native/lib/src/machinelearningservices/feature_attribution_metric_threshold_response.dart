// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_threshold_response.dart';

class FeatureAttributionMetricThresholdResponse {
  /// [Required] The feature attribution metric to calculate.
  final pulumi.Input<String> metric;

  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final pulumi.Input<MonitoringThresholdResponse>? threshold;

  /// Creates a new [FeatureAttributionMetricThresholdResponse].
  /// [metric] [Required] The feature attribution metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  FeatureAttributionMetricThresholdResponse({
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'threshold':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringThresholdResponse,
            Map<String, dynamic>
          >(threshold, (value) => value.toMap()),
    };
  }

  factory FeatureAttributionMetricThresholdResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureAttributionMetricThresholdResponse(
      metric: pulumi.Input.fromValue(map['metric'] as String),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringThresholdResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
