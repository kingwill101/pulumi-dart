// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_measurement_response.dart';

/// Represents a uCAIP NasJob trial.
class GoogleCloudAiplatformV1beta1NasTrialResponse {
  /// Time when the NasTrial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  final String endTime;
  /// The final measurement containing the objective value.
  final GoogleCloudAiplatformV1beta1MeasurementResponse finalMeasurement;
  /// Time when the NasTrial was started.
  final String startTime;
  /// The detailed state of the NasTrial.
  final String state;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasTrialResponse].
  /// [endTime] Time when the NasTrial's status changed to `SUCCEEDED` or `INFEASIBLE`.
  /// [finalMeasurement] The final measurement containing the objective value.
  /// [startTime] Time when the NasTrial was started.
  /// [state] The detailed state of the NasTrial.
  GoogleCloudAiplatformV1beta1NasTrialResponse({
    required this.endTime,
    required this.finalMeasurement,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'finalMeasurement': finalMeasurement.toMap(),
      'startTime': startTime,
      'state': state,
    };
  }

  factory GoogleCloudAiplatformV1beta1NasTrialResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasTrialResponse(
      endTime: map['endTime'] as String,
      finalMeasurement: GoogleCloudAiplatformV1beta1MeasurementResponse.fromMap((map['finalMeasurement'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}

