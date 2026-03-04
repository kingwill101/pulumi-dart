// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_threshold_response.dart';

class CustomMetricThresholdResponse {
  /// [Required] The user-defined metric to calculate.
  final pulumi.Input<String> metric;

  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final pulumi.Input<MonitoringThresholdResponse>? threshold;

  /// Creates a new [CustomMetricThresholdResponse].
  /// [metric] [Required] The user-defined metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  CustomMetricThresholdResponse({required this.metric, this.threshold});

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

  factory CustomMetricThresholdResponse.fromMap(Map<String, dynamic> map) {
    return CustomMetricThresholdResponse(
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
