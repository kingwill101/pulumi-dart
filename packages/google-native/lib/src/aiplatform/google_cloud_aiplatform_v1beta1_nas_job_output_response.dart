// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_nas_job_output_multi_trial_job_output_response.dart';

/// Represents a uCAIP NasJob output.
class GoogleCloudAiplatformV1beta1NasJobOutputResponse {
  /// The output of this multi-trial Neural Architecture Search (NAS) job.
  final GoogleCloudAiplatformV1beta1NasJobOutputMultiTrialJobOutputResponse
      multiTrialJobOutput;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobOutputResponse].
  /// [multiTrialJobOutput] The output of this multi-trial Neural Architecture Search (NAS) job.
  GoogleCloudAiplatformV1beta1NasJobOutputResponse({
    required this.multiTrialJobOutput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiTrialJobOutput'] = multiTrialJobOutput.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NasJobOutputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobOutputResponse(
      multiTrialJobOutput:
          GoogleCloudAiplatformV1beta1NasJobOutputMultiTrialJobOutputResponse
              .fromMap(
                  (map['multiTrialJobOutput'] as Map).cast<String, dynamic>()),
    );
  }
}
