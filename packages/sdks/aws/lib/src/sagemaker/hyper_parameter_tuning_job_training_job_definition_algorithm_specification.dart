// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_parameter_tuning_job_training_job_definition_algorithm_specification_metric_definition.dart';

class HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification {
  /// SageMaker algorithm ARN.
  final pulumi.Input<String>? algorithmName;
  /// Metric extraction rules.
  final pulumi.Input<List<HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition>>? metricDefinitions;
  /// Container image used for training.
  final pulumi.Input<String>? trainingImage;
  /// Training input mode.
  ///
  /// Provide exactly one of `algorithmName` or `trainingImage`.
  final pulumi.Input<String> trainingInputMode;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification].
  /// [algorithmName] SageMaker algorithm ARN.
  /// [metricDefinitions] Metric extraction rules.
  /// [trainingImage] Container image used for training.
  /// [trainingInputMode] Training input mode.
  const HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification({
    this.algorithmName,
    this.metricDefinitions,
    this.trainingImage,
    required this.trainingInputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmName': ?algorithmName,
      'metricDefinitions': ?pulumi.Input.mapOptionalInputValue<List<HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition>, List<Map<String, dynamic>>>(metricDefinitions, (value) => pulumi.Input.encodeList<HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trainingImage': ?trainingImage,
      'trainingInputMode': trainingInputMode,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecification(
      algorithmName: (() { final guardedValue = map['algorithmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricDefinitions: (() { final guardedValue = map['metricDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition>(guardedValue, (value) => HyperParameterTuningJobTrainingJobDefinitionAlgorithmSpecificationMetricDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trainingImage: (() { final guardedValue = map['trainingImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingInputMode: pulumi.Input.fromValue(map['trainingInputMode'] as String),
    );
  }
}
