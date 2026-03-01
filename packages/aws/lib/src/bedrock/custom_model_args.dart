// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_model_output_data_config.dart';
import 'custom_model_timeouts.dart';
import 'custom_model_training_data_config.dart';
import 'custom_model_validation_data_config.dart';
import 'custom_model_vpc_config.dart';

/// {@template pulumi_bedrock_custom_model_custom_model_args_doc}
/// The set of arguments for CustomModel.
/// {@endtemplate}
/// {@macro pulumi_bedrock_custom_model_custom_model_args_doc}
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

  /// Creates a new [CustomModelArgs].
  /// [baseModelIdentifier] The Amazon Resource Name (ARN) of the base model.
  /// [customModelKmsKeyId] The custom model is encrypted at rest using this key. Specify the key ARN.
  /// [customModelName] Name for the custom model.
  /// [customizationType] The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  /// [hyperparameters] [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  /// [jobName] A name for the customization job.
  /// [outputDataConfig] S3 location for the output data.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of an IAM role that Bedrock can assume to perform tasks on your behalf.
  /// [tags] A map of tags to assign to the customization job and custom model. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [trainingDataConfig] Information about the training dataset.
  /// [validationDataConfig] Information about the validation dataset.
  /// [vpcConfig] Configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for this job.
  CustomModelArgs({
    required String baseModelIdentifier,
    String? customModelKmsKeyId,
    required String customModelName,
    String? customizationType,
    required Map<String, String> hyperparameters,
    required String jobName,
    required CustomModelOutputDataConfig outputDataConfig,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
    CustomModelTimeouts? timeouts,
    required CustomModelTrainingDataConfig trainingDataConfig,
    CustomModelValidationDataConfig? validationDataConfig,
    CustomModelVpcConfig? vpcConfig,
  }) : baseModelIdentifier = pulumi.Input.asInput<String>(baseModelIdentifier),
       customModelKmsKeyId = pulumi.Input.asOptionalInput<String>(
         customModelKmsKeyId,
       ),
       customModelName = pulumi.Input.asInput<String>(customModelName),
       customizationType = pulumi.Input.asOptionalInput<String>(
         customizationType,
       ),
       hyperparameters = pulumi.Input.asInput<Map<String, String>>(
         hyperparameters,
       ),
       jobName = pulumi.Input.asInput<String>(jobName),
       outputDataConfig = pulumi.Input.asInput<CustomModelOutputDataConfig>(
         outputDataConfig,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<CustomModelTimeouts>(timeouts),
       trainingDataConfig = pulumi.Input.asInput<CustomModelTrainingDataConfig>(
         trainingDataConfig,
       ),
       validationDataConfig =
           pulumi.Input.asOptionalInput<CustomModelValidationDataConfig>(
             validationDataConfig,
           ),
       vpcConfig = pulumi.Input.asOptionalInput<CustomModelVpcConfig>(
         vpcConfig,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseModelIdentifier': baseModelIdentifier,
      'customModelKmsKeyId': ?customModelKmsKeyId,
      'customModelName': customModelName,
      'customizationType': ?customizationType,
      'hyperparameters': hyperparameters,
      'jobName': jobName,
      'outputDataConfig':
          pulumi.Input.mapInputValue<
            CustomModelOutputDataConfig,
            Map<String, dynamic>
          >(outputDataConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            CustomModelTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'trainingDataConfig':
          pulumi.Input.mapInputValue<
            CustomModelTrainingDataConfig,
            Map<String, dynamic>
          >(trainingDataConfig, (value) => value.toMap()),
      'validationDataConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CustomModelValidationDataConfig,
            Map<String, dynamic>
          >(validationDataConfig, (value) => value.toMap()),
      'vpcConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CustomModelVpcConfig,
            Map<String, dynamic>
          >(vpcConfig, (value) => value.toMap()),
    };
  }

  factory CustomModelArgs.fromMap(Map<String, dynamic> map) {
    return CustomModelArgs(
      baseModelIdentifier: map['baseModelIdentifier'] as String,
      customModelKmsKeyId: map['customModelKmsKeyId'] == null
          ? null
          : map['customModelKmsKeyId'] as String,
      customModelName: map['customModelName'] as String,
      customizationType: map['customizationType'] == null
          ? null
          : map['customizationType'] as String,
      hyperparameters: (map['hyperparameters'] as Map).cast<String, String>(),
      jobName: map['jobName'] as String,
      outputDataConfig: CustomModelOutputDataConfig.fromMap(
        (map['outputDataConfig'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : CustomModelTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      trainingDataConfig: CustomModelTrainingDataConfig.fromMap(
        (map['trainingDataConfig'] as Map).cast<String, dynamic>(),
      ),
      validationDataConfig: map['validationDataConfig'] == null
          ? null
          : CustomModelValidationDataConfig.fromMap(
              (map['validationDataConfig'] as Map).cast<String, dynamic>(),
            ),
      vpcConfig: map['vpcConfig'] == null
          ? null
          : CustomModelVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
