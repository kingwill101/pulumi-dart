// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_nas_job_output_multi_trial_job_output_response.dart';

/// Represents a uCAIP NasJob output.
class GoogleCloudAiplatformV1NasJobOutputResponse {
  /// The output of this multi-trial Neural Architecture Search (NAS) job.
  final GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse
      multiTrialJobOutput;

  GoogleCloudAiplatformV1NasJobOutputResponse({
    required this.multiTrialJobOutput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['multiTrialJobOutput'] = multiTrialJobOutput.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1NasJobOutputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobOutputResponse(
      multiTrialJobOutput:
          GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutputResponse
              .fromMap(
                  (map['multiTrialJobOutput'] as Map).cast<String, dynamic>()),
    );
  }
}
