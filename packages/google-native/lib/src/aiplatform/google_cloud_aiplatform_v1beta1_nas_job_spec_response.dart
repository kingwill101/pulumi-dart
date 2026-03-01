// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_response.dart';

/// Represents the spec of a NasJob.
class GoogleCloudAiplatformV1beta1NasJobSpecResponse {
  /// The spec of multi-trial algorithms.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecResponse
  multiTrialAlgorithmSpec;

  /// The ID of the existing NasJob in the same Project and Location which will be used to resume search. search_space_spec and nas_algorithm_spec are obtained from previous NasJob hence should not provide them again for this NasJob.
  final String resumeNasJobId;

  /// It defines the search space for Neural Architecture Search (NAS).
  final String searchSpaceSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecResponse].
  /// [multiTrialAlgorithmSpec] The spec of multi-trial algorithms.
  /// [resumeNasJobId] The ID of the existing NasJob in the same Project and Location which will be used to resume search. search_space_spec and nas_algorithm_spec are obtained from previous NasJob hence should not provide them again for this NasJob.
  /// [searchSpaceSpec] It defines the search space for Neural Architecture Search (NAS).
  GoogleCloudAiplatformV1beta1NasJobSpecResponse({
    required this.multiTrialAlgorithmSpec,
    required this.resumeNasJobId,
    required this.searchSpaceSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multiTrialAlgorithmSpec': multiTrialAlgorithmSpec.toMap(),
      'resumeNasJobId': resumeNasJobId,
      'searchSpaceSpec': searchSpaceSpec,
    };
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1NasJobSpecResponse(
      multiTrialAlgorithmSpec:
          GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecResponse.fromMap(
            (map['multiTrialAlgorithmSpec'] as Map).cast<String, dynamic>(),
          ),
      resumeNasJobId: map['resumeNasJobId'] as String,
      searchSpaceSpec: map['searchSpaceSpec'] as String,
    );
  }
}
