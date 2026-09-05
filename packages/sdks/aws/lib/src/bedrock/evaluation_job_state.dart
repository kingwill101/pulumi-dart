// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config.dart';
import 'evaluation_job_inference_config.dart';
import 'evaluation_job_output_data_config.dart';
import 'evaluation_job_timeouts.dart';

/// Input properties used for looking up and filtering EvaluationJob resources.
class EvaluationJobState {
  /// Whether the evaluation job evaluates a model or a knowledge base. Valid values: `ModelEvaluation`, `RagEvaluation`.
  final pulumi.Input<String?>? applicationType;
  /// Date and time the evaluation job was created.
  final pulumi.Input<String?>? createdAt;
  /// ARN of the customer managed KMS key to use to encrypt the evaluation job.
  final pulumi.Input<String?>? customerEncryptionKeyId;
  /// Configuration for either an automated or human-based evaluation job. See `evaluationConfig` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfig?>? evaluationConfig;
  /// List of reasons the evaluation job failed to create, if applicable.
  final pulumi.Input<List<String>?>? failureMessages;
  /// Configuration for the inference model, or models, used for the evaluation job. See `inferenceConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfig?>? inferenceConfig;
  /// ARN of the evaluation job.
  final pulumi.Input<String?>? jobArn;
  /// Description of the evaluation job.
  final pulumi.Input<String?>? jobDescription;
  /// Name for the evaluation job. Must be unique within your AWS account and Region, and consist of lowercase letters, numbers, and hyphens.
  final pulumi.Input<String?>? jobName;
  /// Whether the evaluation job is automated or human-based.
  final pulumi.Input<String?>? jobType;
  /// Date and time the evaluation job was last modified.
  final pulumi.Input<String?>? lastModifiedTime;
  /// Configuration for the Amazon S3 location where the results of the evaluation job are stored. See `outputDataConfig` Block below.
  final pulumi.Input<EvaluationJobOutputDataConfig?>? outputDataConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. See [Required permissions for model evaluations](https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? roleArn;
  /// Whether to leave the evaluation job in its current state when destroying the resource, instead of stopping it.
  final pulumi.Input<bool?>? skipDestroy;
  /// Current status of the evaluation job.
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the evaluation job. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<EvaluationJobTimeouts?>? timeouts;

  /// Creates a new [EvaluationJobState].
  /// [applicationType] Whether the evaluation job evaluates a model or a knowledge base. Valid values: `ModelEvaluation`, `RagEvaluation`.
  /// [createdAt] Date and time the evaluation job was created.
  /// [customerEncryptionKeyId] ARN of the customer managed KMS key to use to encrypt the evaluation job.
  /// [evaluationConfig] Configuration for either an automated or human-based evaluation job. See `evaluationConfig` Block below.
  /// [failureMessages] List of reasons the evaluation job failed to create, if applicable.
  /// [inferenceConfig] Configuration for the inference model, or models, used for the evaluation job. See `inferenceConfig` Block below.
  /// [jobArn] ARN of the evaluation job.
  /// [jobDescription] Description of the evaluation job.
  /// [jobName] Name for the evaluation job. Must be unique within your AWS account and Region, and consist of lowercase letters, numbers, and hyphens.
  /// [jobType] Whether the evaluation job is automated or human-based.
  /// [lastModifiedTime] Date and time the evaluation job was last modified.
  /// [outputDataConfig] Configuration for the Amazon S3 location where the results of the evaluation job are stored. See `outputDataConfig` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. See [Required permissions for model evaluations](https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html).
  /// [skipDestroy] Whether to leave the evaluation job in its current state when destroying the resource, instead of stopping it.
  /// [status] Current status of the evaluation job.
  /// [tags] Map of tags to assign to the evaluation job. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  const EvaluationJobState({
    this.applicationType,
    this.createdAt,
    this.customerEncryptionKeyId,
    this.evaluationConfig,
    this.failureMessages,
    this.inferenceConfig,
    this.jobArn,
    this.jobDescription,
    this.jobName,
    this.jobType,
    this.lastModifiedTime,
    this.outputDataConfig,
    this.region,
    this.roleArn,
    this.skipDestroy,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': ?applicationType,
      'createdAt': ?createdAt,
      'customerEncryptionKeyId': ?customerEncryptionKeyId,
      'evaluationConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobEvaluationConfig, Map<String, dynamic>>(evaluationConfig, (value) => value.toMap()),
      'failureMessages': ?failureMessages,
      'inferenceConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfig, Map<String, dynamic>>(inferenceConfig, (value) => value.toMap()),
      'jobArn': ?jobArn,
      'jobDescription': ?jobDescription,
      'jobName': ?jobName,
      'jobType': ?jobType,
      'lastModifiedTime': ?lastModifiedTime,
      'outputDataConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'skipDestroy': ?skipDestroy,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EvaluationJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory EvaluationJobState.fromMap(Map<String, dynamic> map) {
    return EvaluationJobState(
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEncryptionKeyId: (() { final guardedValue = map['customerEncryptionKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluationConfig: (() { final guardedValue = map['evaluationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobEvaluationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureMessages: (() { final guardedValue = map['failureMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inferenceConfig: (() { final guardedValue = map['inferenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobArn: (() { final guardedValue = map['jobArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobDescription: (() { final guardedValue = map['jobDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: (() { final guardedValue = map['jobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputDataConfig: (() { final guardedValue = map['outputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
