// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_custom_job_spec.dart';

/// Represent spec for search trials.
class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec {
  /// The number of failed trials that need to be seen before failing the NasJob. If set to 0, Vertex AI decides how many trials must fail before the whole job fails.
  final int? maxFailedTrialCount;

  /// The maximum number of trials to run in parallel.
  final int maxParallelTrialCount;

  /// The maximum number of Neural Architecture Search (NAS) trials to run.
  final int maxTrialCount;

  /// The spec of a search trial job. The same spec applies to all search trials.
  final GoogleCloudAiplatformV1CustomJobSpec searchTrialJobSpec;

  GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec({
    this.maxFailedTrialCount,
    required this.maxParallelTrialCount,
    required this.maxTrialCount,
    required this.searchTrialJobSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxFailedTrialCountValue = maxFailedTrialCount;
    if (maxFailedTrialCountValue != null) {
      map['maxFailedTrialCount'] = maxFailedTrialCountValue;
    }
    map['maxParallelTrialCount'] = maxParallelTrialCount;
    map['maxTrialCount'] = maxTrialCount;
    map['searchTrialJobSpec'] = searchTrialJobSpec.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec(
      maxFailedTrialCount: map['maxFailedTrialCount'] == null
          ? null
          : map['maxFailedTrialCount'] as int,
      maxParallelTrialCount: map['maxParallelTrialCount'] as int,
      maxTrialCount: map['maxTrialCount'] as int,
      searchTrialJobSpec: GoogleCloudAiplatformV1CustomJobSpec.fromMap(
          (map['searchTrialJobSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
