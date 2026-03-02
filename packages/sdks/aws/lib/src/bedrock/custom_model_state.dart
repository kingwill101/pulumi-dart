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
  /// The Amazon Resource Name (ARN) of the base model.
  final pulumi.Input<String>? baseModelIdentifier;
  /// The ARN of the output model.
  final pulumi.Input<String>? customModelArn;
  /// The custom model is encrypted at rest using this key. Specify the key ARN.
  final pulumi.Input<String>? customModelKmsKeyId;
  /// Name for the custom model.
  final pulumi.Input<String>? customModelName;
  /// The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  final pulumi.Input<String>? customizationType;
  /// [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  final pulumi.Input<Map<String, String>>? hyperparameters;
  /// The ARN of the customization job.
  final pulumi.Input<String>? jobArn;
  /// A name for the customization job.
  final pulumi.Input<String>? jobName;
  /// The status of the customization job. A successful job transitions from `InProgress` to `Completed` when the output model is ready to use.
  final pulumi.Input<String>? jobStatus;
  /// S3 location for the output data.
  final pulumi.Input<CustomModelOutputDataConfig>? outputDataConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of an IAM role that Bedrock can assume to perform tasks on your behalf.
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the customization job and custom model. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CustomModelTimeouts>? timeouts;
  /// Information about the training dataset.
  final pulumi.Input<CustomModelTrainingDataConfig>? trainingDataConfig;
  /// Metrics associated with the customization job.
  final pulumi.Input<List<CustomModelTrainingMetric>>? trainingMetrics;
  /// Information about the validation dataset.
  final pulumi.Input<CustomModelValidationDataConfig>? validationDataConfig;
  /// The loss metric for each validator that you provided.
  final pulumi.Input<List<CustomModelValidationMetric>>? validationMetrics;
  /// Configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for this job.
  final pulumi.Input<CustomModelVpcConfig>? vpcConfig;

  /// Creates a new [CustomModelState].
  /// [baseModelIdentifier] The Amazon Resource Name (ARN) of the base model.
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
  /// [roleArn] The Amazon Resource Name (ARN) of an IAM role that Bedrock can assume to perform tasks on your behalf.
  /// [tags] A map of tags to assign to the customization job and custom model. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [trainingDataConfig] Information about the training dataset.
  /// [trainingMetrics] Metrics associated with the customization job.
  /// [validationDataConfig] Information about the validation dataset.
  /// [validationMetrics] The loss metric for each validator that you provided.
  /// [vpcConfig] Configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for this job.
  CustomModelState({
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
      baseModelIdentifier: map['baseModelIdentifier'] == null ? null : (map['baseModelIdentifier'] as String).input(),
      customModelArn: map['customModelArn'] == null ? null : (map['customModelArn'] as String).input(),
      customModelKmsKeyId: map['customModelKmsKeyId'] == null ? null : (map['customModelKmsKeyId'] as String).input(),
      customModelName: map['customModelName'] == null ? null : (map['customModelName'] as String).input(),
      customizationType: map['customizationType'] == null ? null : (map['customizationType'] as String).input(),
      hyperparameters: map['hyperparameters'] == null ? null : ((map['hyperparameters'] as Map).cast<String, String>()).input(),
      jobArn: map['jobArn'] == null ? null : (map['jobArn'] as String).input(),
      jobName: map['jobName'] == null ? null : (map['jobName'] as String).input(),
      jobStatus: map['jobStatus'] == null ? null : (map['jobStatus'] as String).input(),
      outputDataConfig: map['outputDataConfig'] == null ? null : (CustomModelOutputDataConfig.fromMap((map['outputDataConfig'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (CustomModelTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      trainingDataConfig: map['trainingDataConfig'] == null ? null : (CustomModelTrainingDataConfig.fromMap((map['trainingDataConfig'] as Map).cast<String, dynamic>())).input(),
      trainingMetrics: map['trainingMetrics'] == null ? null : (pulumi.Input.decodeList<CustomModelTrainingMetric>(map['trainingMetrics'], (value) => CustomModelTrainingMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationDataConfig: map['validationDataConfig'] == null ? null : (CustomModelValidationDataConfig.fromMap((map['validationDataConfig'] as Map).cast<String, dynamic>())).input(),
      validationMetrics: map['validationMetrics'] == null ? null : (pulumi.Input.decodeList<CustomModelValidationMetric>(map['validationMetrics'], (value) => CustomModelValidationMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcConfig: map['vpcConfig'] == null ? null : (CustomModelVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

