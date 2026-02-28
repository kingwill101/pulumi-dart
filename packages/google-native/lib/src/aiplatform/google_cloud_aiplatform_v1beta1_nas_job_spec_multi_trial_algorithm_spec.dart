// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_metric_spec.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_multi_trial_algorithm.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_search_trial_spec.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_multi_trial_algorithm_spec_train_trial_spec.dart';

/// The spec of multi-trial Neural Architecture Search (NAS).
class GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpec {
  /// Metric specs for the NAS job. Validation for this field is done at `multi_trial_algorithm_spec` field.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpec?
      metric;

  /// The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm?
      multiTrialAlgorithm;

  /// Spec for search trials.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec
      searchTrialSpec;

  /// Spec for train trials. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  final GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec?
      trainTrialSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpec].
  /// [metric] Metric specs for the NAS job. Validation for this field is done at `multi_trial_algorithm_spec` field.
  /// [multiTrialAlgorithm] The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
  /// [searchTrialSpec] Spec for search trials.
  /// [trainTrialSpec] Spec for train trials. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpec({
    this.metric,
    this.multiTrialAlgorithm,
    required this.searchTrialSpec,
    this.trainTrialSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricValue = metric;
    if (metricValue != null) {
      map['metric'] = metricValue.toMap();
    }
    final multiTrialAlgorithmValue = multiTrialAlgorithm;
    if (multiTrialAlgorithmValue != null) {
      map['multiTrialAlgorithm'] = multiTrialAlgorithmValue.value;
    }
    map['searchTrialSpec'] = searchTrialSpec.toMap();
    final trainTrialSpecValue = trainTrialSpec;
    if (trainTrialSpecValue != null) {
      map['trainTrialSpec'] = trainTrialSpecValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpec(
      metric: map['metric'] == null
          ? null
          : GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpec
              .fromMap((map['metric'] as Map).cast<String, dynamic>()),
      multiTrialAlgorithm: map['multiTrialAlgorithm'] == null
          ? null
          : GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm
              .fromValue(map['multiTrialAlgorithm'] as String),
      searchTrialSpec:
          GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec
              .fromMap((map['searchTrialSpec'] as Map).cast<String, dynamic>()),
      trainTrialSpec: map['trainTrialSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec
              .fromMap((map['trainTrialSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
