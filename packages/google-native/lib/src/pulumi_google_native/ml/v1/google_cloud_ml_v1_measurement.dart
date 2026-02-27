// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement_metric.dart';

/// A message representing a measurement.
class GoogleCloudMlV1Measurement {
  /// Provides a list of metrics that act as inputs into the objective function.
  final List<GoogleCloudMlV1MeasurementMetric>? metrics;

  /// The number of steps a machine learning model has been trained for. Must be non-negative.
  final String? stepCount;

  GoogleCloudMlV1Measurement({
    this.metrics,
    this.stepCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = pulumi.Input.encodeList<GoogleCloudMlV1MeasurementMetric,
          Map<String, dynamic>>(metricsValue, (value) => value.toMap());
    }
    final stepCountValue = stepCount;
    if (stepCountValue != null) {
      map['stepCount'] = stepCountValue;
    }
    return map;
  }

  factory GoogleCloudMlV1Measurement.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1Measurement(
      metrics: map['metrics'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudMlV1MeasurementMetric>(
              map['metrics'],
              (value) => GoogleCloudMlV1MeasurementMetric.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stepCount: map['stepCount'] == null ? null : map['stepCount'] as String,
    );
  }
}
