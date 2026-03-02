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
  final String baseModelArn;
  /// Creation time of the model.
  final String creationTime;
  /// Hyperparameter values associated with this model.
  final Map<String, String> hyperparameters;
  final String id;
  /// Job ARN associated with this model.
  final String jobArn;
  /// Job name associated with this model.
  final String jobName;
  /// Key-value mapping of tags for the fine-tuning job.
  final Map<String, String> jobTags;
  /// ARN associated with this model.
  final String modelArn;
  final String modelId;
  /// The custom model is encrypted at rest using this key.
  final String modelKmsKeyArn;
  /// Model name associated with this model.
  final String modelName;
  /// Key-value mapping of tags for the model.
  final Map<String, String> modelTags;
  /// Output data configuration associated with this custom model.
  final List<GetCustomModelOutputDataConfig> outputDataConfigs;
  final String region;
  /// Information about the training dataset.
  final List<GetCustomModelTrainingDataConfig> trainingDataConfigs;
  /// Metrics associated with the customization job.
  final List<GetCustomModelTrainingMetric> trainingMetrics;
  /// Information about the validation dataset.
  final List<GetCustomModelValidationDataConfig> validationDataConfigs;
  /// The loss metric for each validator that you provided.
  final List<GetCustomModelValidationMetric> validationMetrics;

  /// Creates a new [GetCustomModelResult].
  /// [baseModelArn] ARN of the base model.
  /// [creationTime] Creation time of the model.
  /// [hyperparameters] Hyperparameter values associated with this model.
  /// [id] Required.
  /// [jobArn] Job ARN associated with this model.
  /// [jobName] Job name associated with this model.
  /// [jobTags] Key-value mapping of tags for the fine-tuning job.
  /// [modelArn] ARN associated with this model.
  /// [modelId] Required.
  /// [modelKmsKeyArn] The custom model is encrypted at rest using this key.
  /// [modelName] Model name associated with this model.
  /// [modelTags] Key-value mapping of tags for the model.
  /// [outputDataConfigs] Output data configuration associated with this custom model.
  /// [region] Required.
  /// [trainingDataConfigs] Information about the training dataset.
  /// [trainingMetrics] Metrics associated with the customization job.
  /// [validationDataConfigs] Information about the validation dataset.
  /// [validationMetrics] The loss metric for each validator that you provided.
  GetCustomModelResult({
    required this.baseModelArn,
    required this.creationTime,
    required this.hyperparameters,
    required this.id,
    required this.jobArn,
    required this.jobName,
    required this.jobTags,
    required this.modelArn,
    required this.modelId,
    required this.modelKmsKeyArn,
    required this.modelName,
    required this.modelTags,
    required this.outputDataConfigs,
    required this.region,
    required this.trainingDataConfigs,
    required this.trainingMetrics,
    required this.validationDataConfigs,
    required this.validationMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseModelArn': baseModelArn,
      'creationTime': creationTime,
      'hyperparameters': hyperparameters,
      'id': id,
      'jobArn': jobArn,
      'jobName': jobName,
      'jobTags': jobTags,
      'modelArn': modelArn,
      'modelId': modelId,
      'modelKmsKeyArn': modelKmsKeyArn,
      'modelName': modelName,
      'modelTags': modelTags,
      'outputDataConfigs': pulumi.Input.encodeList<GetCustomModelOutputDataConfig, Map<String, dynamic>>(outputDataConfigs, (value) => value.toMap()),
      'region': region,
      'trainingDataConfigs': pulumi.Input.encodeList<GetCustomModelTrainingDataConfig, Map<String, dynamic>>(trainingDataConfigs, (value) => value.toMap()),
      'trainingMetrics': pulumi.Input.encodeList<GetCustomModelTrainingMetric, Map<String, dynamic>>(trainingMetrics, (value) => value.toMap()),
      'validationDataConfigs': pulumi.Input.encodeList<GetCustomModelValidationDataConfig, Map<String, dynamic>>(validationDataConfigs, (value) => value.toMap()),
      'validationMetrics': pulumi.Input.encodeList<GetCustomModelValidationMetric, Map<String, dynamic>>(validationMetrics, (value) => value.toMap()),
    };
  }

  factory GetCustomModelResult.fromMap(Map<String, dynamic> map) {
    return GetCustomModelResult(
      baseModelArn: map['baseModelArn'] as String,
      creationTime: map['creationTime'] as String,
      hyperparameters: (map['hyperparameters'] as Map).cast<String, String>(),
      id: map['id'] as String,
      jobArn: map['jobArn'] as String,
      jobName: map['jobName'] as String,
      jobTags: (map['jobTags'] as Map).cast<String, String>(),
      modelArn: map['modelArn'] as String,
      modelId: map['modelId'] as String,
      modelKmsKeyArn: map['modelKmsKeyArn'] as String,
      modelName: map['modelName'] as String,
      modelTags: (map['modelTags'] as Map).cast<String, String>(),
      outputDataConfigs: pulumi.Input.decodeList<GetCustomModelOutputDataConfig>(map['outputDataConfigs']!, (value) => GetCustomModelOutputDataConfig.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      trainingDataConfigs: pulumi.Input.decodeList<GetCustomModelTrainingDataConfig>(map['trainingDataConfigs']!, (value) => GetCustomModelTrainingDataConfig.fromMap((value as Map).cast<String, dynamic>())),
      trainingMetrics: pulumi.Input.decodeList<GetCustomModelTrainingMetric>(map['trainingMetrics']!, (value) => GetCustomModelTrainingMetric.fromMap((value as Map).cast<String, dynamic>())),
      validationDataConfigs: pulumi.Input.decodeList<GetCustomModelValidationDataConfig>(map['validationDataConfigs']!, (value) => GetCustomModelValidationDataConfig.fromMap((value as Map).cast<String, dynamic>())),
      validationMetrics: pulumi.Input.decodeList<GetCustomModelValidationMetric>(map['validationMetrics']!, (value) => GetCustomModelValidationMetric.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

