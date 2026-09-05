// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config.dart';
import 'evaluation_job_inference_config.dart';
import 'evaluation_job_output_data_config.dart';
import 'evaluation_job_timeouts.dart';

/// {@template pulumi_bedrock_evaluation_job_evaluation_job_args_doc}
/// The set of arguments for EvaluationJob.
/// {@endtemplate}
/// {@macro pulumi_bedrock_evaluation_job_evaluation_job_args_doc}
class EvaluationJobArgs {
  /// Whether the evaluation job evaluates a model or a knowledge base. Valid values: `ModelEvaluation`, `RagEvaluation`.
  final pulumi.Input<String?>? applicationType;
  /// ARN of the customer managed KMS key to use to encrypt the evaluation job.
  final pulumi.Input<String?>? customerEncryptionKeyId;
  /// Configuration for either an automated or human-based evaluation job. See `evaluationConfig` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfig> evaluationConfig;
  /// Configuration for the inference model, or models, used for the evaluation job. See `inferenceConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfig> inferenceConfig;
  /// Description of the evaluation job.
  final pulumi.Input<String?>? jobDescription;
  /// Name for the evaluation job. Must be unique within your AWS account and Region, and consist of lowercase letters, numbers, and hyphens.
  final pulumi.Input<String> jobName;
  /// Configuration for the Amazon S3 location where the results of the evaluation job are stored. See `outputDataConfig` Block below.
  final pulumi.Input<EvaluationJobOutputDataConfig> outputDataConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. See [Required permissions for model evaluations](https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;
  /// Whether to leave the evaluation job in its current state when destroying the resource, instead of stopping it.
  final pulumi.Input<bool?>? skipDestroy;
  /// Map of tags to assign to the evaluation job. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<EvaluationJobTimeouts?>? timeouts;

  /// Creates a new [EvaluationJobArgs].
  /// [applicationType] Whether the evaluation job evaluates a model or a knowledge base. Valid values: `ModelEvaluation`, `RagEvaluation`.
  /// [customerEncryptionKeyId] ARN of the customer managed KMS key to use to encrypt the evaluation job.
  /// [evaluationConfig] Configuration for either an automated or human-based evaluation job. See `evaluationConfig` Block below.
  /// [inferenceConfig] Configuration for the inference model, or models, used for the evaluation job. See `inferenceConfig` Block below.
  /// [jobDescription] Description of the evaluation job.
  /// [jobName] Name for the evaluation job. Must be unique within your AWS account and Region, and consist of lowercase letters, numbers, and hyphens.
  /// [outputDataConfig] Configuration for the Amazon S3 location where the results of the evaluation job are stored. See `outputDataConfig` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. See [Required permissions for model evaluations](https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html).
  /// [skipDestroy] Whether to leave the evaluation job in its current state when destroying the resource, instead of stopping it.
  /// [tags] Map of tags to assign to the evaluation job. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const EvaluationJobArgs({
    this.applicationType,
    this.customerEncryptionKeyId,
    required this.evaluationConfig,
    required this.inferenceConfig,
    this.jobDescription,
    required this.jobName,
    required this.outputDataConfig,
    this.region,
    required this.roleArn,
    this.skipDestroy,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': ?applicationType,
      'customerEncryptionKeyId': ?customerEncryptionKeyId,
      'evaluationConfig': pulumi.Input.mapInputValue<EvaluationJobEvaluationConfig, Map<String, dynamic>>(evaluationConfig, (value) => value.toMap()),
      'inferenceConfig': pulumi.Input.mapInputValue<EvaluationJobInferenceConfig, Map<String, dynamic>>(inferenceConfig, (value) => value.toMap()),
      'jobDescription': ?jobDescription,
      'jobName': jobName,
      'outputDataConfig': pulumi.Input.mapInputValue<EvaluationJobOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EvaluationJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory EvaluationJobArgs.fromMap(Map<String, dynamic> map) {
    return EvaluationJobArgs(
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEncryptionKeyId: (() { final guardedValue = map['customerEncryptionKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationConfig: pulumi.Input.fromValue(EvaluationJobEvaluationConfig.fromMap((map['evaluationConfig']! as Map).cast<String, dynamic>())),
      inferenceConfig: pulumi.Input.fromValue(EvaluationJobInferenceConfig.fromMap((map['inferenceConfig']! as Map).cast<String, dynamic>())),
      jobDescription: (() { final guardedValue = map['jobDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      outputDataConfig: pulumi.Input.fromValue(EvaluationJobOutputDataConfig.fromMap((map['outputDataConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
