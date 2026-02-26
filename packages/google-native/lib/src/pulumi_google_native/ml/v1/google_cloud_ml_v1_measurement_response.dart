// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_ml_v1_measurement_metric_response.dart';

/// A message representing a measurement.
class GoogleCloudMlV1MeasurementResponse {
  /// Time that the trial has been running at the point of this measurement.
  final String elapsedTime;

  /// Provides a list of metrics that act as inputs into the objective function.
  final List<GoogleCloudMlV1MeasurementMetricResponse> metrics;

  /// The number of steps a machine learning model has been trained for. Must be non-negative.
  final String stepCount;

  GoogleCloudMlV1MeasurementResponse({
    required this.elapsedTime,
    required this.metrics,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elapsedTime'] = elapsedTime;
    map['metrics'] = Input.encodeList<GoogleCloudMlV1MeasurementMetricResponse,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['stepCount'] = stepCount;
    return map;
  }

  factory GoogleCloudMlV1MeasurementResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MeasurementResponse(
      elapsedTime: map['elapsedTime'] as String,
      metrics: Input.decodeList<GoogleCloudMlV1MeasurementMetricResponse>(
          map['metrics'],
          (value) => GoogleCloudMlV1MeasurementMetricResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      stepCount: map['stepCount'] as String,
    );
  }
}
