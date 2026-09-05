// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_algorithm_specification_metric_definition.dart';
import 'training_job_algorithm_specification_training_image_config.dart';

class TrainingJobAlgorithmSpecification {
  /// Name or ARN of the algorithm resource to use for the training job.
  final pulumi.Input<String?>? algorithmName;
  /// List of arguments for the container entrypoint. Maximum of 100 entries.
  final pulumi.Input<List<String>?>? containerArguments;
  /// List of entrypoint commands for the container. Maximum of 100 entries.
  final pulumi.Input<List<String>?>? containerEntrypoints;
  /// Whether to enable SageMaker AI metrics time series collection.
  final pulumi.Input<bool?>? enableSagemakerMetricsTimeSeries;
  /// List of metric definitions for the training job. Maximum of 40. Use this to extract custom metrics from your own training container logs. SageMaker can still publish built-in metrics for built-in algorithms and supported prebuilt images when this block is omitted. See `metricDefinitions` below.
  final pulumi.Input<List<TrainingJobAlgorithmSpecificationMetricDefinition>?>? metricDefinitions;
  /// Registry path of the Docker image that contains the training algorithm.
  final pulumi.Input<String?>? trainingImage;
  /// Training image configuration. See `trainingImageConfig` below.
  final pulumi.Input<TrainingJobAlgorithmSpecificationTrainingImageConfig?>? trainingImageConfig;
  /// Input mode for the training data. Valid values: `File`, `Pipe`, `FastFile`.
  final pulumi.Input<String?>? trainingInputMode;

  /// Creates a new [TrainingJobAlgorithmSpecification].
  /// [algorithmName] Name or ARN of the algorithm resource to use for the training job.
  /// [containerArguments] List of arguments for the container entrypoint. Maximum of 100 entries.
  /// [containerEntrypoints] List of entrypoint commands for the container. Maximum of 100 entries.
  /// [enableSagemakerMetricsTimeSeries] Whether to enable SageMaker AI metrics time series collection.
  /// [metricDefinitions] List of metric definitions for the training job. Maximum of 40. Use this to extract custom metrics from your own training container logs. SageMaker can still publish built-in metrics for built-in algorithms and supported prebuilt images when this block is omitted. See `metricDefinitions` below.
  /// [trainingImage] Registry path of the Docker image that contains the training algorithm.
  /// [trainingImageConfig] Training image configuration. See `trainingImageConfig` below.
  /// [trainingInputMode] Input mode for the training data. Valid values: `File`, `Pipe`, `FastFile`.
  const TrainingJobAlgorithmSpecification({
    this.algorithmName,
    this.containerArguments,
    this.containerEntrypoints,
    this.enableSagemakerMetricsTimeSeries,
    this.metricDefinitions,
    this.trainingImage,
    this.trainingImageConfig,
    this.trainingInputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmName': ?algorithmName,
      'containerArguments': ?containerArguments,
      'containerEntrypoints': ?containerEntrypoints,
      'enableSagemakerMetricsTimeSeries': ?enableSagemakerMetricsTimeSeries,
      'metricDefinitions': ?pulumi.Input.mapOptionalInputValue<List<TrainingJobAlgorithmSpecificationMetricDefinition>, List<Map<String, dynamic>>>(metricDefinitions, (value) => pulumi.Input.encodeList<TrainingJobAlgorithmSpecificationMetricDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trainingImage': ?trainingImage,
      'trainingImageConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobAlgorithmSpecificationTrainingImageConfig, Map<String, dynamic>>(trainingImageConfig, (value) => value.toMap()),
      'trainingInputMode': ?trainingInputMode,
    };
  }

  factory TrainingJobAlgorithmSpecification.fromMap(Map<String, dynamic> map) {
    return TrainingJobAlgorithmSpecification(
      algorithmName: (() { final guardedValue = map['algorithmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerArguments: (() { final guardedValue = map['containerArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerEntrypoints: (() { final guardedValue = map['containerEntrypoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableSagemakerMetricsTimeSeries: (() { final guardedValue = map['enableSagemakerMetricsTimeSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metricDefinitions: (() { final guardedValue = map['metricDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrainingJobAlgorithmSpecificationMetricDefinition>(guardedValue, (value) => TrainingJobAlgorithmSpecificationMetricDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trainingImage: (() { final guardedValue = map['trainingImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingImageConfig: (() { final guardedValue = map['trainingImageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobAlgorithmSpecificationTrainingImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingInputMode: (() { final guardedValue = map['trainingInputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
