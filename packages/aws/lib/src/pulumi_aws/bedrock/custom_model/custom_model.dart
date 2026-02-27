import 'package:pulumi/pulumi.dart';
import '../custom_model_output_data_config/custom_model_output_data_config.dart';
import '../custom_model_timeouts/custom_model_timeouts.dart';
import '../custom_model_training_data_config/custom_model_training_data_config.dart';
import '../custom_model_training_metric/custom_model_training_metric.dart';
import '../custom_model_validation_data_config/custom_model_validation_data_config.dart';
import '../custom_model_validation_metric/custom_model_validation_metric.dart';
import '../custom_model_vpc_config/custom_model_vpc_config.dart';
import 'custom_model_args.dart';

/// Manages an Amazon Bedrock custom model.
/// Model customization is the process of providing training data to a base model in order to improve its performance for specific use-cases.
///
/// This Terraform resource interacts with two Amazon Bedrock entities:
///
/// 1. A Continued Pre-training or Fine-tuning job which is started when the Terraform resource is created. The customization job can take several hours to run to completion. The duration of the job depends on the size of the training data (number of records, input tokens, and output tokens), and [hyperparameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) (number of epochs, and batch size).
/// 2. The custom model output on successful completion of the customization job.
///
/// This resource's behaviors correspond to operations on these Amazon Bedrock entities:
///
/// * _Create_ starts the customization job and immediately returns.
/// * _Read_ returns the status and results of the customization job. If the customization job has completed, the output model's properties are returned.
/// * _Update_ updates the customization job's [tags](https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html).
/// * _Delete_ stops the customization job if it is still active. If the customization job has completed, the custom model output by the job is deleted.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Bedrock custom model.
///
///
/// Using `pulumi import`, import Bedrock custom model using the `job_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/customModel:CustomModel example arn:aws:bedrock:us-west-2:123456789012:model-customization-job/amazon.titan-text-express-v1:0:8k/1y5n57gh5y2e
/// ```
class CustomModel extends CustomResource {
  /// The Amazon Resource Name (ARN) of the base model.
  late final Output<String> baseModelIdentifier;

  /// The ARN of the output model.
  late final Output<String> customModelArn;

  /// The custom model is encrypted at rest using this key. Specify the key ARN.
  late final Output<String?> customModelKmsKeyId;

  /// Name for the custom model.
  late final Output<String> customModelName;

  /// The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  late final Output<String> customizationType;

  /// [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  late final Output<Map<String, String>> hyperparameters;

  /// The ARN of the customization job.
  late final Output<String> jobArn;

  /// A name for the customization job.
  late final Output<String> jobName;

  /// The status of the customization job. A successful job transitions from `InProgress` to `Completed` when the output model is ready to use.
  late final Output<String> jobStatus;

  /// S3 location for the output data.
  late final Output<CustomModelOutputDataConfig> outputDataConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of an IAM role that Bedrock can assume to perform tasks on your behalf.
  late final Output<String> roleArn;

  /// A map of tags to assign to the customization job and custom model. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CustomModelTimeouts?> timeouts;

  /// Information about the training dataset.
  late final Output<CustomModelTrainingDataConfig> trainingDataConfig;

  /// Metrics associated with the customization job.
  late final Output<List<CustomModelTrainingMetric>> trainingMetrics;

  /// Information about the validation dataset.
  late final Output<CustomModelValidationDataConfig?> validationDataConfig;

  /// The loss metric for each validator that you provided.
  late final Output<List<CustomModelValidationMetric>> validationMetrics;

  /// Configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for this job.
  late final Output<CustomModelVpcConfig?> vpcConfig;

  CustomModel(
    String name, {
    CustomModelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/customModel:CustomModel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baseModelIdentifier = registerOutput<String>('baseModelIdentifier');
    this.customModelArn = registerOutput<String>('customModelArn');
    this.customModelKmsKeyId = registerOutput<String?>('customModelKmsKeyId');
    this.customModelName = registerOutput<String>('customModelName');
    this.customizationType = registerOutput<String>('customizationType');
    this.hyperparameters =
        registerOutput<Map<String, String>>('hyperparameters');
    this.jobArn = registerOutput<String>('jobArn');
    this.jobName = registerOutput<String>('jobName');
    this.jobStatus = registerOutput<String>('jobStatus');
    this.outputDataConfig =
        registerOutput<CustomModelOutputDataConfig>('outputDataConfig');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CustomModelTimeouts?>('timeouts');
    this.trainingDataConfig =
        registerOutput<CustomModelTrainingDataConfig>('trainingDataConfig');
    this.trainingMetrics =
        registerOutput<List<CustomModelTrainingMetric>>('trainingMetrics');
    this.validationDataConfig =
        registerOutput<CustomModelValidationDataConfig?>(
            'validationDataConfig');
    this.validationMetrics =
        registerOutput<List<CustomModelValidationMetric>>('validationMetrics');
    this.vpcConfig = registerOutput<CustomModelVpcConfig?>('vpcConfig');
  }
}
