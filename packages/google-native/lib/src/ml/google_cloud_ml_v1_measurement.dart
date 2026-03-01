// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_measurement_metric.dart';

/// A message representing a measurement.
class GoogleCloudMlV1Measurement {
  /// Provides a list of metrics that act as inputs into the objective function.
  final List<GoogleCloudMlV1MeasurementMetric>? metrics;

  /// The number of steps a machine learning model has been trained for. Must be non-negative.
  final String? stepCount;

  /// Creates a new [GoogleCloudMlV1Measurement].
  /// [metrics] Provides a list of metrics that act as inputs into the objective function.
  /// [stepCount] The number of steps a machine learning model has been trained for. Must be non-negative.
  GoogleCloudMlV1Measurement({this.metrics, this.stepCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?metrics == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudMlV1MeasurementMetric,
              Map<String, dynamic>
            >(metrics!, (value) => value.toMap()),
      'stepCount': ?stepCount,
    };
  }

  factory GoogleCloudMlV1Measurement.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1Measurement(
      metrics: map['metrics'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudMlV1MeasurementMetric>(
              map['metrics'],
              (value) => GoogleCloudMlV1MeasurementMetric.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      stepCount: map['stepCount'] == null ? null : map['stepCount'] as String,
    );
  }
}
