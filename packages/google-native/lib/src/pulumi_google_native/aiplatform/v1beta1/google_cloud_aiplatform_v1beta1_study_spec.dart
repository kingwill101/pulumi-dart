// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_algorithm.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_stop_config.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_decay_curve_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_measurement_selection_type.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_median_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_metric_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_observation_noise.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_study_stopping_config.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_transfer_learning_config.dart';

/// Represents specification of a Study.
class GoogleCloudAiplatformV1beta1StudySpec {
  /// The search algorithm specified for the Study.
  final GoogleCloudAiplatformV1beta1StudySpecAlgorithm? algorithm;

  /// The automated early stopping spec using convex stopping rule.
  final GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec?
      convexAutomatedStoppingSpec;

  /// Deprecated. The automated early stopping using convex stopping rule.
  final GoogleCloudAiplatformV1beta1StudySpecConvexStopConfig? convexStopConfig;

  /// The automated early stopping spec using decay curve rule.
  final GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpec?
      decayCurveStoppingSpec;

  /// Describe which measurement selection type will be used
  final GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType?
      measurementSelectionType;

  /// The automated early stopping spec using median rule.
  final GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpec?
      medianAutomatedStoppingSpec;

  /// Metric specs for the Study.
  final List<GoogleCloudAiplatformV1beta1StudySpecMetricSpec> metrics;

  /// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final GoogleCloudAiplatformV1beta1StudySpecObservationNoise? observationNoise;

  /// The set of parameters to tune.
  final List<GoogleCloudAiplatformV1beta1StudySpecParameterSpec> parameters;

  /// Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  final GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfig?
      studyStoppingConfig;

  /// The configuration info/options for transfer learning. Currently supported for Vertex AI Vizier service, not HyperParameterTuningJob
  final GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig?
      transferLearningConfig;

  GoogleCloudAiplatformV1beta1StudySpec({
    this.algorithm,
    this.convexAutomatedStoppingSpec,
    this.convexStopConfig,
    this.decayCurveStoppingSpec,
    this.measurementSelectionType,
    this.medianAutomatedStoppingSpec,
    required this.metrics,
    this.observationNoise,
    required this.parameters,
    this.studyStoppingConfig,
    this.transferLearningConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmValue = algorithm;
    if (algorithmValue != null) {
      map['algorithm'] = algorithmValue.value;
    }
    final convexAutomatedStoppingSpecValue = convexAutomatedStoppingSpec;
    if (convexAutomatedStoppingSpecValue != null) {
      map['convexAutomatedStoppingSpec'] =
          convexAutomatedStoppingSpecValue.toMap();
    }
    final convexStopConfigValue = convexStopConfig;
    if (convexStopConfigValue != null) {
      map['convexStopConfig'] = convexStopConfigValue.toMap();
    }
    final decayCurveStoppingSpecValue = decayCurveStoppingSpec;
    if (decayCurveStoppingSpecValue != null) {
      map['decayCurveStoppingSpec'] = decayCurveStoppingSpecValue.toMap();
    }
    final measurementSelectionTypeValue = measurementSelectionType;
    if (measurementSelectionTypeValue != null) {
      map['measurementSelectionType'] = measurementSelectionTypeValue.value;
    }
    final medianAutomatedStoppingSpecValue = medianAutomatedStoppingSpec;
    if (medianAutomatedStoppingSpecValue != null) {
      map['medianAutomatedStoppingSpec'] =
          medianAutomatedStoppingSpecValue.toMap();
    }
    map['metrics'] = pulumi.Input.encodeList<
        GoogleCloudAiplatformV1beta1StudySpecMetricSpec,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    final observationNoiseValue = observationNoise;
    if (observationNoiseValue != null) {
      map['observationNoise'] = observationNoiseValue.value;
    }
    map['parameters'] = pulumi.Input.encodeList<
        GoogleCloudAiplatformV1beta1StudySpecParameterSpec,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    final studyStoppingConfigValue = studyStoppingConfig;
    if (studyStoppingConfigValue != null) {
      map['studyStoppingConfig'] = studyStoppingConfigValue.toMap();
    }
    final transferLearningConfigValue = transferLearningConfig;
    if (transferLearningConfigValue != null) {
      map['transferLearningConfig'] = transferLearningConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1StudySpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpec(
      algorithm: map['algorithm'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecAlgorithm.fromValue(
              map['algorithm'] as String),
      convexAutomatedStoppingSpec: map['convexAutomatedStoppingSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec
              .fromMap((map['convexAutomatedStoppingSpec'] as Map)
                  .cast<String, dynamic>()),
      convexStopConfig: map['convexStopConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecConvexStopConfig.fromMap(
              (map['convexStopConfig'] as Map).cast<String, dynamic>()),
      decayCurveStoppingSpec: map['decayCurveStoppingSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpec
              .fromMap((map['decayCurveStoppingSpec'] as Map)
                  .cast<String, dynamic>()),
      measurementSelectionType: map['measurementSelectionType'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType
              .fromValue(map['measurementSelectionType'] as String),
      medianAutomatedStoppingSpec: map['medianAutomatedStoppingSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpec
              .fromMap((map['medianAutomatedStoppingSpec'] as Map)
                  .cast<String, dynamic>()),
      metrics: pulumi.Input.decodeList<
              GoogleCloudAiplatformV1beta1StudySpecMetricSpec>(
          map['metrics'],
          (value) => GoogleCloudAiplatformV1beta1StudySpecMetricSpec.fromMap(
              (value as Map).cast<String, dynamic>())),
      observationNoise: map['observationNoise'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecObservationNoise.fromValue(
              map['observationNoise'] as String),
      parameters: pulumi.Input.decodeList<
              GoogleCloudAiplatformV1beta1StudySpecParameterSpec>(
          map['parameters'],
          (value) => GoogleCloudAiplatformV1beta1StudySpecParameterSpec.fromMap(
              (value as Map).cast<String, dynamic>())),
      studyStoppingConfig: map['studyStoppingConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfig.fromMap(
              (map['studyStoppingConfig'] as Map).cast<String, dynamic>()),
      transferLearningConfig: map['transferLearningConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig.fromMap(
              (map['transferLearningConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
