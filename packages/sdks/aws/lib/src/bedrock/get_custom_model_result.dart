// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_model_output_data_config.dart';
import 'get_custom_model_training_data_config.dart';
import 'get_custom_model_training_metric.dart';
import 'get_custom_model_validation_data_config.dart';
import 'get_custom_model_validation_metric.dart';

/// Result data returned by getCustomModel.
class GetCustomModelResult {
  /// ARN of the base model.
  final String? baseModelArn;
  /// Creation time of the model.
  final String? creationTime;
  /// Hyperparameter values associated with this model.
  final Map<String, String>? hyperparameters;
  final String? id;
  /// Job ARN associated with this model.
  final String? jobArn;
  /// Job name associated with this model.
  final String? jobName;
  /// Key-value mapping of tags for the fine-tuning job.
  final Map<String, String>? jobTags;
  /// ARN associated with this model.
  final String? modelArn;
  final String? modelId;
  /// The custom model is encrypted at rest using this key.
  final String? modelKmsKeyArn;
  /// Model name associated with this model.
  final String? modelName;
  /// Key-value mapping of tags for the model.
  final Map<String, String>? modelTags;
  /// Output data configuration associated with this custom model.
  final List<GetCustomModelOutputDataConfig>? outputDataConfigs;
  final String? region;
  /// Information about the training dataset.
  final List<GetCustomModelTrainingDataConfig>? trainingDataConfigs;
  /// Metrics associated with the customization job.
  final List<GetCustomModelTrainingMetric>? trainingMetrics;
  /// Information about the validation dataset.
  final List<GetCustomModelValidationDataConfig>? validationDataConfigs;
  /// The loss metric for each validator that you provided.
  final List<GetCustomModelValidationMetric>? validationMetrics;

  /// Creates a new [GetCustomModelResult].
  /// [baseModelArn] ARN of the base model.
  /// [creationTime] Creation time of the model.
  /// [hyperparameters] Hyperparameter values associated with this model.
  /// [id] Optional.
  /// [jobArn] Job ARN associated with this model.
  /// [jobName] Job name associated with this model.
  /// [jobTags] Key-value mapping of tags for the fine-tuning job.
  /// [modelArn] ARN associated with this model.
  /// [modelId] Optional.
  /// [modelKmsKeyArn] The custom model is encrypted at rest using this key.
  /// [modelName] Model name associated with this model.
  /// [modelTags] Key-value mapping of tags for the model.
  /// [outputDataConfigs] Output data configuration associated with this custom model.
  /// [region] Optional.
  /// [trainingDataConfigs] Information about the training dataset.
  /// [trainingMetrics] Metrics associated with the customization job.
  /// [validationDataConfigs] Information about the validation dataset.
  /// [validationMetrics] The loss metric for each validator that you provided.
  const GetCustomModelResult({
    this.baseModelArn,
    this.creationTime,
    this.hyperparameters,
    this.id,
    this.jobArn,
    this.jobName,
    this.jobTags,
    this.modelArn,
    this.modelId,
    this.modelKmsKeyArn,
    this.modelName,
    this.modelTags,
    this.outputDataConfigs,
    this.region,
    this.trainingDataConfigs,
    this.trainingMetrics,
    this.validationDataConfigs,
    this.validationMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseModelArn': ?baseModelArn,
      'creationTime': ?creationTime,
      'hyperparameters': ?hyperparameters,
      'id': ?id,
      'jobArn': ?jobArn,
      'jobName': ?jobName,
      'jobTags': ?jobTags,
      'modelArn': ?modelArn,
      'modelId': ?modelId,
      'modelKmsKeyArn': ?modelKmsKeyArn,
      'modelName': ?modelName,
      'modelTags': ?modelTags,
      'outputDataConfigs': ?(() { final guardedValue = outputDataConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomModelOutputDataConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'trainingDataConfigs': ?(() { final guardedValue = trainingDataConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomModelTrainingDataConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'trainingMetrics': ?(() { final guardedValue = trainingMetrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomModelTrainingMetric, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'validationDataConfigs': ?(() { final guardedValue = validationDataConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomModelValidationDataConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'validationMetrics': ?(() { final guardedValue = validationMetrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomModelValidationMetric, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetCustomModelResult.fromMap(Map<String, dynamic> map) {
    return GetCustomModelResult(
      baseModelArn: (() { final guardedValue = map['baseModelArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hyperparameters: (() { final guardedValue = map['hyperparameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobArn: (() { final guardedValue = map['jobArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jobTags: (() { final guardedValue = map['jobTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      modelArn: (() { final guardedValue = map['modelArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelKmsKeyArn: (() { final guardedValue = map['modelKmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelTags: (() { final guardedValue = map['modelTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      outputDataConfigs: (() { final guardedValue = map['outputDataConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomModelOutputDataConfig>(guardedValue, (value) => GetCustomModelOutputDataConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trainingDataConfigs: (() { final guardedValue = map['trainingDataConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomModelTrainingDataConfig>(guardedValue, (value) => GetCustomModelTrainingDataConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      trainingMetrics: (() { final guardedValue = map['trainingMetrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomModelTrainingMetric>(guardedValue, (value) => GetCustomModelTrainingMetric.fromMap((value as Map).cast<String, dynamic>())); })(),
      validationDataConfigs: (() { final guardedValue = map['validationDataConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomModelValidationDataConfig>(guardedValue, (value) => GetCustomModelValidationDataConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      validationMetrics: (() { final guardedValue = map['validationMetrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomModelValidationMetric>(guardedValue, (value) => GetCustomModelValidationMetric.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
