// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_metric_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_search_trial_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_train_trial_spec_response.dart';

/// The spec of multi-trial Neural Architecture Search (NAS).
class GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecResponse {
  /// Metric specs for the NAS job. Validation for this field is done at `multi_trial_algorithm_spec` field.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse
      metric;

  /// The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
  final String multiTrialAlgorithm;

  /// Spec for search trials.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpecResponse
      searchTrialSpec;

  /// Spec for train trials. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecResponse
      trainTrialSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecResponse].
  /// [metric] Metric specs for the NAS job. Validation for this field is done at `multi_trial_algorithm_spec` field.
  /// [multiTrialAlgorithm] The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
  /// [searchTrialSpec] Spec for search trials.
  /// [trainTrialSpec] Spec for train trials. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecResponse({
    required this.metric,
    required this.multiTrialAlgorithm,
    required this.searchTrialSpec,
    required this.trainTrialSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metric'] = metric.toMap();
    map['multiTrialAlgorithm'] = multiTrialAlgorithm;
    map['searchTrialSpec'] = searchTrialSpec.toMap();
    map['trainTrialSpec'] = trainTrialSpec.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecResponse(
      metric:
          GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse
              .fromMap((map['metric'] as Map).cast<String, dynamic>()),
      multiTrialAlgorithm: map['multiTrialAlgorithm'] as String,
      searchTrialSpec:
          GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpecResponse
              .fromMap((map['searchTrialSpec'] as Map).cast<String, dynamic>()),
      trainTrialSpec:
          GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecResponse
              .fromMap((map['trainTrialSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
