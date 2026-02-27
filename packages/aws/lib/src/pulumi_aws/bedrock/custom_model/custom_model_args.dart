// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../custom_model_output_data_config/custom_model_output_data_config.dart';
import '../custom_model_timeouts/custom_model_timeouts.dart';
import '../custom_model_training_data_config/custom_model_training_data_config.dart';
import '../custom_model_validation_data_config/custom_model_validation_data_config.dart';
import '../custom_model_vpc_config/custom_model_vpc_config.dart';

/// The set of arguments for CustomModel.
class CustomModelArgs {
  /// The Amazon Resource Name (ARN) of the base model.
  final pulumi.Input<String> baseModelIdentifier;

  /// The custom model is encrypted at rest using this key. Specify the key ARN.
  final pulumi.Input<String>? customModelKmsKeyId;

  /// Name for the custom model.
  final pulumi.Input<String> customModelName;

  /// The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  final pulumi.Input<String>? customizationType;

  /// [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  final pulumi.Input<Map<String, String>> hyperparameters;

  /// A name for the customization job.
  final pulumi.Input<String> jobName;

  /// S3 location for the output data.
  final pulumi.Input<CustomModelOutputDataConfig> outputDataConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of an IAM role that Bedrock can assume to perform tasks on your behalf.
  final pulumi.Input<String> roleArn;

  /// A map of tags to assign to the customization job and custom model. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CustomModelTimeouts>? timeouts;

  /// Information about the training dataset.
  final pulumi.Input<CustomModelTrainingDataConfig> trainingDataConfig;

  /// Information about the validation dataset.
  final pulumi.Input<CustomModelValidationDataConfig>? validationDataConfig;

  /// Configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for this job.
  final pulumi.Input<CustomModelVpcConfig>? vpcConfig;

  CustomModelArgs({
    required this.baseModelIdentifier,
    this.customModelKmsKeyId,
    required this.customModelName,
    this.customizationType,
    required this.hyperparameters,
    required this.jobName,
    required this.outputDataConfig,
    this.region,
    required this.roleArn,
    this.tags,
    this.timeouts,
    required this.trainingDataConfig,
    this.validationDataConfig,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseModelIdentifier'] = baseModelIdentifier;
    final customModelKmsKeyIdValue = customModelKmsKeyId;
    if (customModelKmsKeyIdValue != null) {
      map['customModelKmsKeyId'] = customModelKmsKeyIdValue;
    }
    map['customModelName'] = customModelName;
    final customizationTypeValue = customizationType;
    if (customizationTypeValue != null) {
      map['customizationType'] = customizationTypeValue;
    }
    map['hyperparameters'] = hyperparameters;
    map['jobName'] = jobName;
    map['outputDataConfig'] = pulumi.Input.mapInputValue<
        CustomModelOutputDataConfig,
        Map<String, dynamic>>(outputDataConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<CustomModelTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['trainingDataConfig'] = pulumi.Input.mapInputValue<
        CustomModelTrainingDataConfig,
        Map<String, dynamic>>(trainingDataConfig, (value) => value.toMap());
    final validationDataConfigValue = validationDataConfig;
    if (validationDataConfigValue != null) {
      map['validationDataConfig'] = pulumi.Input.mapOptionalInputValue<
              CustomModelValidationDataConfig, Map<String, dynamic>>(
          validationDataConfigValue, (value) => value.toMap());
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = pulumi.Input.mapOptionalInputValue<
          CustomModelVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory CustomModelArgs.fromMap(Map<String, dynamic> map) {
    return CustomModelArgs(
      baseModelIdentifier:
          pulumi.Input.asInput<String>(map['baseModelIdentifier']),
      customModelKmsKeyId:
          pulumi.Input.asOptionalInput<String>(map['customModelKmsKeyId']),
      customModelName: pulumi.Input.asInput<String>(map['customModelName']),
      customizationType:
          pulumi.Input.asOptionalInput<String>(map['customizationType']),
      hyperparameters:
          pulumi.Input.asInput<Map<String, String>>(map['hyperparameters']),
      jobName: pulumi.Input.asInput<String>(map['jobName']),
      outputDataConfig: pulumi.Input.asInput<CustomModelOutputDataConfig>(
          map['outputDataConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<CustomModelTimeouts>(map['timeouts']),
      trainingDataConfig: pulumi.Input.asInput<CustomModelTrainingDataConfig>(
          map['trainingDataConfig']),
      validationDataConfig:
          pulumi.Input.asOptionalInput<CustomModelValidationDataConfig>(
              map['validationDataConfig']),
      vpcConfig:
          pulumi.Input.asOptionalInput<CustomModelVpcConfig>(map['vpcConfig']),
    );
  }
}
