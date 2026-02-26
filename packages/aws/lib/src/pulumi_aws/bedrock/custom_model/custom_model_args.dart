// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_model_output_data_config/custom_model_output_data_config.dart';
import '../custom_model_timeouts/custom_model_timeouts.dart';
import '../custom_model_training_data_config/custom_model_training_data_config.dart';
import '../custom_model_validation_data_config/custom_model_validation_data_config.dart';
import '../custom_model_vpc_config/custom_model_vpc_config.dart';

/// The set of arguments for CustomModel.
class CustomModelArgs {
  /// The Amazon Resource Name (ARN) of the base model.
  final Input<String> baseModelIdentifier;

  /// The custom model is encrypted at rest using this key. Specify the key ARN.
  final Input<String>? customModelKmsKeyId;

  /// Name for the custom model.
  final Input<String> customModelName;

  /// The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  final Input<String>? customizationType;

  /// [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  final Input<Map<String, String>> hyperparameters;

  /// A name for the customization job.
  final Input<String> jobName;

  /// S3 location for the output data.
  final Input<CustomModelOutputDataConfig> outputDataConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of an IAM role that Bedrock can assume to perform tasks on your behalf.
  final Input<String> roleArn;

  /// A map of tags to assign to the customization job and custom model. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<CustomModelTimeouts>? timeouts;

  /// Information about the training dataset.
  final Input<CustomModelTrainingDataConfig> trainingDataConfig;

  /// Information about the validation dataset.
  final Input<CustomModelValidationDataConfig>? validationDataConfig;

  /// Configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for this job.
  final Input<CustomModelVpcConfig>? vpcConfig;

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
    map['outputDataConfig'] =
        Input.mapInputValue<CustomModelOutputDataConfig, Map<String, dynamic>>(
            outputDataConfig, (value) => value.toMap());
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
      map['timeouts'] = Input.mapOptionalInputValue<CustomModelTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['trainingDataConfig'] = Input.mapInputValue<
        CustomModelTrainingDataConfig,
        Map<String, dynamic>>(trainingDataConfig, (value) => value.toMap());
    final validationDataConfigValue = validationDataConfig;
    if (validationDataConfigValue != null) {
      map['validationDataConfig'] = Input.mapOptionalInputValue<
              CustomModelValidationDataConfig, Map<String, dynamic>>(
          validationDataConfigValue, (value) => value.toMap());
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = Input.mapOptionalInputValue<CustomModelVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory CustomModelArgs.fromMap(Map<String, dynamic> map) {
    return CustomModelArgs(
      baseModelIdentifier: Input.asInput<String>(map['baseModelIdentifier']),
      customModelKmsKeyId:
          Input.asOptionalInput<String>(map['customModelKmsKeyId']),
      customModelName: Input.asInput<String>(map['customModelName']),
      customizationType:
          Input.asOptionalInput<String>(map['customizationType']),
      hyperparameters:
          Input.asInput<Map<String, String>>(map['hyperparameters']),
      jobName: Input.asInput<String>(map['jobName']),
      outputDataConfig:
          Input.asInput<CustomModelOutputDataConfig>(map['outputDataConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<CustomModelTimeouts>(map['timeouts']),
      trainingDataConfig: Input.asInput<CustomModelTrainingDataConfig>(
          map['trainingDataConfig']),
      validationDataConfig:
          Input.asOptionalInput<CustomModelValidationDataConfig>(
              map['validationDataConfig']),
      vpcConfig: Input.asOptionalInput<CustomModelVpcConfig>(map['vpcConfig']),
    );
  }
}
