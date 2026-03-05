// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_threshold.dart';

class FeatureAttributionMetricThreshold {
  /// [Required] The feature attribution metric to calculate.
  final pulumi.Input<String> metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final pulumi.Input<MonitoringThreshold>? threshold;

  /// Creates a new [FeatureAttributionMetricThreshold].
  /// [metric] [Required] The feature attribution metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  FeatureAttributionMetricThreshold({
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'threshold': ?pulumi.Input.mapOptionalInputValue<MonitoringThreshold, Map<String, dynamic>>(threshold, (value) => value.toMap()),
    };
  }

  factory FeatureAttributionMetricThreshold.fromMap(Map<String, dynamic> map) {
    return FeatureAttributionMetricThreshold(
      metric: pulumi.Input.fromValue(map['metric'] as String),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

