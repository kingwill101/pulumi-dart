// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_stop_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_decay_curve_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_median_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_metric_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_study_stopping_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_transfer_learning_config_response.dart';

/// Represents specification of a Study.
class GoogleCloudAiplatformV1beta1StudySpecResponse {
  /// The search algorithm specified for the Study.
  final String algorithm;

  /// The automated early stopping spec using convex stopping rule.
  final GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpecResponse
      convexAutomatedStoppingSpec;

  /// Deprecated. The automated early stopping using convex stopping rule.
  final GoogleCloudAiplatformV1beta1StudySpecConvexStopConfigResponse
      convexStopConfig;

  /// The automated early stopping spec using decay curve rule.
  final GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse
      decayCurveStoppingSpec;

  /// Describe which measurement selection type will be used
  final String measurementSelectionType;

  /// The automated early stopping spec using median rule.
  final GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpecResponse
      medianAutomatedStoppingSpec;

  /// Metric specs for the Study.
  final List<GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse> metrics;

  /// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final String observationNoise;

  /// The set of parameters to tune.
  final List<GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse>
      parameters;

  /// Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  final GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfigResponse
      studyStoppingConfig;

  /// The configuration info/options for transfer learning. Currently supported for Vertex AI Vizier service, not HyperParameterTuningJob
  final GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse
      transferLearningConfig;

  GoogleCloudAiplatformV1beta1StudySpecResponse({
    required this.algorithm,
    required this.convexAutomatedStoppingSpec,
    required this.convexStopConfig,
    required this.decayCurveStoppingSpec,
    required this.measurementSelectionType,
    required this.medianAutomatedStoppingSpec,
    required this.metrics,
    required this.observationNoise,
    required this.parameters,
    required this.studyStoppingConfig,
    required this.transferLearningConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['convexAutomatedStoppingSpec'] = convexAutomatedStoppingSpec.toMap();
    map['convexStopConfig'] = convexStopConfig.toMap();
    map['decayCurveStoppingSpec'] = decayCurveStoppingSpec.toMap();
    map['measurementSelectionType'] = measurementSelectionType;
    map['medianAutomatedStoppingSpec'] = medianAutomatedStoppingSpec.toMap();
    map['metrics'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['observationNoise'] = observationNoise;
    map['parameters'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['studyStoppingConfig'] = studyStoppingConfig.toMap();
    map['transferLearningConfig'] = transferLearningConfig.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1StudySpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecResponse(
      algorithm: map['algorithm'] as String,
      convexAutomatedStoppingSpec:
          GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpecResponse
              .fromMap((map['convexAutomatedStoppingSpec'] as Map)
                  .cast<String, dynamic>()),
      convexStopConfig:
          GoogleCloudAiplatformV1beta1StudySpecConvexStopConfigResponse.fromMap(
              (map['convexStopConfig'] as Map).cast<String, dynamic>()),
      decayCurveStoppingSpec:
          GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse
              .fromMap((map['decayCurveStoppingSpec'] as Map)
                  .cast<String, dynamic>()),
      measurementSelectionType: map['measurementSelectionType'] as String,
      medianAutomatedStoppingSpec:
          GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpecResponse
              .fromMap((map['medianAutomatedStoppingSpec'] as Map)
                  .cast<String, dynamic>()),
      metrics: Input.decodeList<
              GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse>(
          map['metrics'],
          (value) =>
              GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      observationNoise: map['observationNoise'] as String,
      parameters: Input.decodeList<
              GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse>(
          map['parameters'],
          (value) => GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      studyStoppingConfig:
          GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfigResponse
              .fromMap(
                  (map['studyStoppingConfig'] as Map).cast<String, dynamic>()),
      transferLearningConfig:
          GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse
              .fromMap((map['transferLearningConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
