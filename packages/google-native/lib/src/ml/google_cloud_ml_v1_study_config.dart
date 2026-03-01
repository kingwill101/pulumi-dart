// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_automated_stopping_config.dart';
import 'google_cloud_ml_v1_study_config_algorithm.dart';
import 'google_cloud_ml_v1_study_config_metric_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec.dart';

/// Represents configuration of a study.
class GoogleCloudMlV1StudyConfig {
  /// The search algorithm specified for the study.
  final GoogleCloudMlV1StudyConfigAlgorithm? algorithm;

  /// Configuration for automated stopping of unpromising Trials.
  final GoogleCloudMlV1AutomatedStoppingConfig? automatedStoppingConfig;

  /// Metric specs for the study.
  final List<GoogleCloudMlV1StudyConfigMetricSpec>? metrics;

  /// The set of parameters to tune.
  final List<GoogleCloudMlV1StudyConfigParameterSpec> parameters;

  /// Creates a new [GoogleCloudMlV1StudyConfig].
  /// [algorithm] The search algorithm specified for the study.
  /// [automatedStoppingConfig] Configuration for automated stopping of unpromising Trials.
  /// [metrics] Metric specs for the study.
  /// [parameters] The set of parameters to tune.
  GoogleCloudMlV1StudyConfig({
    this.algorithm,
    this.automatedStoppingConfig,
    this.metrics,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm == null ? null : algorithm!.value,
      'automatedStoppingConfig': ?automatedStoppingConfig == null
          ? null
          : automatedStoppingConfig!.toMap(),
      'metrics': ?metrics == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudMlV1StudyConfigMetricSpec,
              Map<String, dynamic>
            >(metrics!, (value) => value.toMap()),
      'parameters':
          pulumi.Input.encodeList<
            GoogleCloudMlV1StudyConfigParameterSpec,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory GoogleCloudMlV1StudyConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfig(
      algorithm: map['algorithm'] == null
          ? null
          : GoogleCloudMlV1StudyConfigAlgorithm.fromValue(
              map['algorithm'] as String,
            ),
      automatedStoppingConfig: map['automatedStoppingConfig'] == null
          ? null
          : GoogleCloudMlV1AutomatedStoppingConfig.fromMap(
              (map['automatedStoppingConfig'] as Map).cast<String, dynamic>(),
            ),
      metrics: map['metrics'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigMetricSpec>(
              map['metrics'],
              (value) => GoogleCloudMlV1StudyConfigMetricSpec.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      parameters:
          pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpec>(
            map['parameters'],
            (value) => GoogleCloudMlV1StudyConfigParameterSpec.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
