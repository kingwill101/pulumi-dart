// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_training_specification_additional_s3_data_source.dart';
import 'algorithm_training_specification_metric_definition.dart';
import 'algorithm_training_specification_supported_hyper_parameter.dart';
import 'algorithm_training_specification_supported_tuning_job_objective_metric.dart';
import 'algorithm_training_specification_training_channel.dart';

class AlgorithmTrainingSpecification {
  /// Additional training data to make available to the algorithm. See Additional S3 Data Source.
  final pulumi.Input<AlgorithmTrainingSpecificationAdditionalS3DataSource?>? additionalS3DataSource;
  /// List of metric definitions used to parse training logs. See Metric Definitions.
  final pulumi.Input<List<AlgorithmTrainingSpecificationMetricDefinition>?>? metricDefinitions;
  /// Hyperparameter definitions supported by the algorithm. See Supported Hyper Parameters.
  final pulumi.Input<List<AlgorithmTrainingSpecificationSupportedHyperParameter>?>? supportedHyperParameters;
  /// Instance types supported for training.
  final pulumi.Input<List<String>> supportedTrainingInstanceTypes;
  /// Objective metrics supported for hyperparameter tuning jobs. See Supported Tuning Job Objective Metrics.
  final pulumi.Input<List<AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric>?>? supportedTuningJobObjectiveMetrics;
  /// Whether the algorithm supports distributed training.
  final pulumi.Input<bool?>? supportsDistributedTraining;
  /// List of channel definitions supported for training. See Training Channels.
  final pulumi.Input<List<AlgorithmTrainingSpecificationTrainingChannel>> trainingChannels;
  /// Training image URI.
  final pulumi.Input<String> trainingImage;
  /// Digest of the training image.
  final pulumi.Input<String?>? trainingImageDigest;

  /// Creates a new [AlgorithmTrainingSpecification].
  /// [additionalS3DataSource] Additional training data to make available to the algorithm. See Additional S3 Data Source.
  /// [metricDefinitions] List of metric definitions used to parse training logs. See Metric Definitions.
  /// [supportedHyperParameters] Hyperparameter definitions supported by the algorithm. See Supported Hyper Parameters.
  /// [supportedTrainingInstanceTypes] Instance types supported for training.
  /// [supportedTuningJobObjectiveMetrics] Objective metrics supported for hyperparameter tuning jobs. See Supported Tuning Job Objective Metrics.
  /// [supportsDistributedTraining] Whether the algorithm supports distributed training.
  /// [trainingChannels] List of channel definitions supported for training. See Training Channels.
  /// [trainingImage] Training image URI.
  /// [trainingImageDigest] Digest of the training image.
  const AlgorithmTrainingSpecification({
    this.additionalS3DataSource,
    this.metricDefinitions,
    this.supportedHyperParameters,
    required this.supportedTrainingInstanceTypes,
    this.supportedTuningJobObjectiveMetrics,
    this.supportsDistributedTraining,
    required this.trainingChannels,
    required this.trainingImage,
    this.trainingImageDigest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalS3DataSource': ?pulumi.Input.mapOptionalInputValue<AlgorithmTrainingSpecificationAdditionalS3DataSource, Map<String, dynamic>>(additionalS3DataSource, (value) => value.toMap()),
      'metricDefinitions': ?pulumi.Input.mapOptionalInputValue<List<AlgorithmTrainingSpecificationMetricDefinition>, List<Map<String, dynamic>>>(metricDefinitions, (value) => pulumi.Input.encodeList<AlgorithmTrainingSpecificationMetricDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedHyperParameters': ?pulumi.Input.mapOptionalInputValue<List<AlgorithmTrainingSpecificationSupportedHyperParameter>, List<Map<String, dynamic>>>(supportedHyperParameters, (value) => pulumi.Input.encodeList<AlgorithmTrainingSpecificationSupportedHyperParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportedTrainingInstanceTypes': supportedTrainingInstanceTypes,
      'supportedTuningJobObjectiveMetrics': ?pulumi.Input.mapOptionalInputValue<List<AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric>, List<Map<String, dynamic>>>(supportedTuningJobObjectiveMetrics, (value) => pulumi.Input.encodeList<AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportsDistributedTraining': ?supportsDistributedTraining,
      'trainingChannels': pulumi.Input.mapInputValue<List<AlgorithmTrainingSpecificationTrainingChannel>, List<Map<String, dynamic>>>(trainingChannels, (value) => pulumi.Input.encodeList<AlgorithmTrainingSpecificationTrainingChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trainingImage': trainingImage,
      'trainingImageDigest': ?trainingImageDigest,
    };
  }

  factory AlgorithmTrainingSpecification.fromMap(Map<String, dynamic> map) {
    return AlgorithmTrainingSpecification(
      additionalS3DataSource: (() { final guardedValue = map['additionalS3DataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTrainingSpecificationAdditionalS3DataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricDefinitions: (() { final guardedValue = map['metricDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmTrainingSpecificationMetricDefinition>(guardedValue, (value) => AlgorithmTrainingSpecificationMetricDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportedHyperParameters: (() { final guardedValue = map['supportedHyperParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmTrainingSpecificationSupportedHyperParameter>(guardedValue, (value) => AlgorithmTrainingSpecificationSupportedHyperParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportedTrainingInstanceTypes: pulumi.Input.fromValue((map['supportedTrainingInstanceTypes'] as List).cast<String>()),
      supportedTuningJobObjectiveMetrics: (() { final guardedValue = map['supportedTuningJobObjectiveMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric>(guardedValue, (value) => AlgorithmTrainingSpecificationSupportedTuningJobObjectiveMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportsDistributedTraining: (() { final guardedValue = map['supportsDistributedTraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trainingChannels: pulumi.Input.fromValue(pulumi.Input.decodeList<AlgorithmTrainingSpecificationTrainingChannel>(map['trainingChannels']!, (value) => AlgorithmTrainingSpecificationTrainingChannel.fromMap((value as Map).cast<String, dynamic>()))),
      trainingImage: pulumi.Input.fromValue(map['trainingImage'] as String),
      trainingImageDigest: (() { final guardedValue = map['trainingImageDigest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
