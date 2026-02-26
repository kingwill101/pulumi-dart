// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec.dart';

/// Represents the spec of a NasJob.
class GoogleCloudAiplatformV1beta1NasJobSpec {
  /// The spec of multi-trial algorithms.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpec?
      multiTrialAlgorithmSpec;

  /// The ID of the existing NasJob in the same Project and Location which will be used to resume search. search_space_spec and nas_algorithm_spec are obtained from previous NasJob hence should not provide them again for this NasJob.
  final String? resumeNasJobId;

  /// It defines the search space for Neural Architecture Search (NAS).
  final String? searchSpaceSpec;

  GoogleCloudAiplatformV1beta1NasJobSpec({
    this.multiTrialAlgorithmSpec,
    this.resumeNasJobId,
    this.searchSpaceSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final multiTrialAlgorithmSpecValue = multiTrialAlgorithmSpec;
    if (multiTrialAlgorithmSpecValue != null) {
      map['multiTrialAlgorithmSpec'] = multiTrialAlgorithmSpecValue.toMap();
    }
    final resumeNasJobIdValue = resumeNasJobId;
    if (resumeNasJobIdValue != null) {
      map['resumeNasJobId'] = resumeNasJobIdValue;
    }
    final searchSpaceSpecValue = searchSpaceSpec;
    if (searchSpaceSpecValue != null) {
      map['searchSpaceSpec'] = searchSpaceSpecValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobSpec(
      multiTrialAlgorithmSpec: map['multiTrialAlgorithmSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpec
              .fromMap((map['multiTrialAlgorithmSpec'] as Map)
                  .cast<String, dynamic>()),
      resumeNasJobId: map['resumeNasJobId'] == null
          ? null
          : map['resumeNasJobId'] as String,
      searchSpaceSpec: map['searchSpaceSpec'] == null
          ? null
          : map['searchSpaceSpec'] as String,
    );
  }
}
