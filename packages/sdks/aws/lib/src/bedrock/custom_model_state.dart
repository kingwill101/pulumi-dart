// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_model_output_data_config.dart';
import 'custom_model_timeouts.dart';
import 'custom_model_training_data_config.dart';
import 'custom_model_training_metric.dart';
import 'custom_model_validation_data_config.dart';
import 'custom_model_validation_metric.dart';
import 'custom_model_vpc_config.dart';

/// Input properties used for looking up and filtering CustomModel resources.
class CustomModelState {
  /// ARN of the base model.
  final pulumi.Input<String?>? baseModelIdentifier;
  /// The ARN of the output model.
  final pulumi.Input<String?>? customModelArn;
  /// The custom model is encrypted at rest using this key. Specify the key ARN.
  final pulumi.Input<String?>? customModelKmsKeyId;
  /// Name for the custom model.
  final pulumi.Input<String?>? customModelName;
  /// The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  final pulumi.Input<String?>? customizationType;
  /// [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  final pulumi.Input<Map<String, String>?>? hyperparameters;
  /// The ARN of the customization job.
  final pulumi.Input<String?>? jobArn;
  /// A name for the customization job.
  final pulumi.Input<String?>? jobName;
  /// The status of the customization job. A successful job transitions from `InProgress` to `Completed` when the output model is ready to use.
  final pulumi.Input<String?>? jobStatus;
  /// S3 location for the output data.
  final pulumi.Input<CustomModelOutputDataConfig?>? outputDataConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of an IAM role that Bedrock can assume to perform tasks on your behalf.
  final pulumi.Input<String?>? roleArn;
  /// A map of tags to assign to the customization job and custom model. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<CustomModelTimeouts?>? timeouts;
  /// Information about the training dataset.
  final pulumi.Input<CustomModelTrainingDataConfig?>? trainingDataConfig;
  /// Metrics associated with the customization job.
  final pulumi.Input<List<CustomModelTrainingMetric>?>? trainingMetrics;
  /// Information about the validation dataset.
  final pulumi.Input<CustomModelValidationDataConfig?>? validationDataConfig;
  /// The loss metric for each validator that you provided.
  final pulumi.Input<List<CustomModelValidationMetric>?>? validationMetrics;
  /// Configuration parameters for the private VPC that contains the resources you are using for this job.
  final pulumi.Input<CustomModelVpcConfig?>? vpcConfig;

  /// Creates a new [CustomModelState].
  /// [baseModelIdentifier] ARN of the base model.
  /// [customModelArn] The ARN of the output model.
  /// [customModelKmsKeyId] The custom model is encrypted at rest using this key. Specify the key ARN.
  /// [customModelName] Name for the custom model.
  /// [customizationType] The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  /// [hyperparameters] [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  /// [jobArn] The ARN of the customization job.
  /// [jobName] A name for the customization job.
  /// [jobStatus] The status of the customization job. A successful job transitions from `InProgress` to `Completed` when the output model is ready to use.
  /// [outputDataConfig] S3 location for the output data.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM role that Bedrock can assume to perform tasks on your behalf.
  /// [tags] A map of tags to assign to the customization job and custom model. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [trainingDataConfig] Information about the training dataset.
  /// [trainingMetrics] Metrics associated with the customization job.
  /// [validationDataConfig] Information about the validation dataset.
  /// [validationMetrics] The loss metric for each validator that you provided.
  /// [vpcConfig] Configuration parameters for the private VPC that contains the resources you are using for this job.
  const CustomModelState({
    this.baseModelIdentifier,
    this.customModelArn,
    this.customModelKmsKeyId,
    this.customModelName,
    this.customizationType,
    this.hyperparameters,
    this.jobArn,
    this.jobName,
    this.jobStatus,
    this.outputDataConfig,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.trainingDataConfig,
    this.trainingMetrics,
    this.validationDataConfig,
    this.validationMetrics,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseModelIdentifier': ?baseModelIdentifier,
      'customModelArn': ?customModelArn,
      'customModelKmsKeyId': ?customModelKmsKeyId,
      'customModelName': ?customModelName,
      'customizationType': ?customizationType,
      'hyperparameters': ?hyperparameters,
      'jobArn': ?jobArn,
      'jobName': ?jobName,
      'jobStatus': ?jobStatus,
      'outputDataConfig': ?pulumi.Input.mapOptionalInputValue<CustomModelOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CustomModelTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'trainingDataConfig': ?pulumi.Input.mapOptionalInputValue<CustomModelTrainingDataConfig, Map<String, dynamic>>(trainingDataConfig, (value) => value.toMap()),
      'trainingMetrics': ?pulumi.Input.mapOptionalInputValue<List<CustomModelTrainingMetric>, List<Map<String, dynamic>>>(trainingMetrics, (value) => pulumi.Input.encodeList<CustomModelTrainingMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationDataConfig': ?pulumi.Input.mapOptionalInputValue<CustomModelValidationDataConfig, Map<String, dynamic>>(validationDataConfig, (value) => value.toMap()),
      'validationMetrics': ?pulumi.Input.mapOptionalInputValue<List<CustomModelValidationMetric>, List<Map<String, dynamic>>>(validationMetrics, (value) => pulumi.Input.encodeList<CustomModelValidationMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<CustomModelVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory CustomModelState.fromMap(Map<String, dynamic> map) {
    return CustomModelState(
      baseModelIdentifier: (() { final guardedValue = map['baseModelIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customModelArn: (() { final guardedValue = map['customModelArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customModelKmsKeyId: (() { final guardedValue = map['customModelKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customModelName: (() { final guardedValue = map['customModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customizationType: (() { final guardedValue = map['customizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hyperparameters: (() { final guardedValue = map['hyperparameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      jobArn: (() { final guardedValue = map['jobArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobStatus: (() { final guardedValue = map['jobStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputDataConfig: (() { final guardedValue = map['outputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomModelOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomModelTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingDataConfig: (() { final guardedValue = map['trainingDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomModelTrainingDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingMetrics: (() { final guardedValue = map['trainingMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomModelTrainingMetric>(guardedValue, (value) => CustomModelTrainingMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      validationDataConfig: (() { final guardedValue = map['validationDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomModelValidationDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationMetrics: (() { final guardedValue = map['validationMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomModelValidationMetric>(guardedValue, (value) => CustomModelValidationMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomModelVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
