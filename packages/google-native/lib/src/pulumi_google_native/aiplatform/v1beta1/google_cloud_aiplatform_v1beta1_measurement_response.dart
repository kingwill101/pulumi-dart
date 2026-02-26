// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_measurement_metric_response.dart';

/// A message representing a Measurement of a Trial. A Measurement contains the Metrics got by executing a Trial using suggested hyperparameter values.
class GoogleCloudAiplatformV1beta1MeasurementResponse {
  /// Time that the Trial has been running at the point of this Measurement.
  final String elapsedDuration;

  /// A list of metrics got by evaluating the objective functions using suggested Parameter values.
  final List<GoogleCloudAiplatformV1beta1MeasurementMetricResponse> metrics;

  /// The number of steps the machine learning model has been trained for. Must be non-negative.
  final String stepCount;

  GoogleCloudAiplatformV1beta1MeasurementResponse({
    required this.elapsedDuration,
    required this.metrics,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elapsedDuration'] = elapsedDuration;
    map['metrics'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1MeasurementMetricResponse,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['stepCount'] = stepCount;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1MeasurementResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1MeasurementResponse(
      elapsedDuration: map['elapsedDuration'] as String,
      metrics: Input.decodeList<
              GoogleCloudAiplatformV1beta1MeasurementMetricResponse>(
          map['metrics'],
          (value) =>
              GoogleCloudAiplatformV1beta1MeasurementMetricResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stepCount: map['stepCount'] as String,
    );
  }
}
