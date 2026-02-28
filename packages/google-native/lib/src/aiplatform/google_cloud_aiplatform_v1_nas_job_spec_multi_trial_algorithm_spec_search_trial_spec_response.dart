// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_custom_job_spec_response.dart';

/// Represent spec for search trials.
class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpecResponse {
  /// The number of failed trials that need to be seen before failing the NasJob. If set to 0, Vertex AI decides how many trials must fail before the whole job fails.
  final int maxFailedTrialCount;

  /// The maximum number of trials to run in parallel.
  final int maxParallelTrialCount;

  /// The maximum number of Neural Architecture Search (NAS) trials to run.
  final int maxTrialCount;

  /// The spec of a search trial job. The same spec applies to all search trials.
  final GoogleCloudAiplatformV1CustomJobSpecResponse searchTrialJobSpec;

  /// Creates a new [GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpecResponse].
  /// [maxFailedTrialCount] The number of failed trials that need to be seen before failing the NasJob. If set to 0, Vertex AI decides how many trials must fail before the whole job fails.
  /// [maxParallelTrialCount] The maximum number of trials to run in parallel.
  /// [maxTrialCount] The maximum number of Neural Architecture Search (NAS) trials to run.
  /// [searchTrialJobSpec] The spec of a search trial job. The same spec applies to all search trials.
  GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpecResponse({
    required this.maxFailedTrialCount,
    required this.maxParallelTrialCount,
    required this.maxTrialCount,
    required this.searchTrialJobSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxFailedTrialCount'] = maxFailedTrialCount;
    map['maxParallelTrialCount'] = maxParallelTrialCount;
    map['maxTrialCount'] = maxTrialCount;
    map['searchTrialJobSpec'] = searchTrialJobSpec.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpecResponse(
      maxFailedTrialCount: map['maxFailedTrialCount'] as int,
      maxParallelTrialCount: map['maxParallelTrialCount'] as int,
      maxTrialCount: map['maxTrialCount'] as int,
      searchTrialJobSpec: GoogleCloudAiplatformV1CustomJobSpecResponse.fromMap(
          (map['searchTrialJobSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
