// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_custom_job_spec.dart';

/// Represent spec for train trials.
class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec {
  /// Frequency of search trials to start train stage. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  final int frequency;

  /// The maximum number of trials to run in parallel.
  final int maxParallelTrialCount;

  /// The spec of a train trial job. The same spec applies to all train trials.
  final GoogleCloudAiplatformV1CustomJobSpec trainTrialJobSpec;

  GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec({
    required this.frequency,
    required this.maxParallelTrialCount,
    required this.trainTrialJobSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['frequency'] = frequency;
    map['maxParallelTrialCount'] = maxParallelTrialCount;
    map['trainTrialJobSpec'] = trainTrialJobSpec.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec(
      frequency: map['frequency'] as int,
      maxParallelTrialCount: map['maxParallelTrialCount'] as int,
      trainTrialJobSpec: GoogleCloudAiplatformV1CustomJobSpec.fromMap(
          (map['trainTrialJobSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
