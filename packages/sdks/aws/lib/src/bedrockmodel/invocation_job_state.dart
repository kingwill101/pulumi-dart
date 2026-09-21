// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_job_input_data_config.dart';
import 'invocation_job_output_data_config.dart';
import 'invocation_job_timeouts.dart';
import 'invocation_job_vpc_config.dart';

/// Input properties used for looking up and filtering InvocationJob resources.
class InvocationJobState {
  /// Time at which the batch inference job ended.
  final pulumi.Input<String?>? endTime;
  /// Number of records that failed to process in the batch inference job.
  final pulumi.Input<int?>? errorRecordCount;
  /// Location of the input data for the batch inference job. See `inputDataConfig` Block below.
  final pulumi.Input<InvocationJobInputDataConfig?>? inputDataConfig;
  /// ARN of the batch inference job.
  final pulumi.Input<String?>? jobArn;
  /// Time at which the batch inference job times or timed out.
  final pulumi.Input<String?>? jobExpirationTime;
  /// Name for the batch inference job.
  final pulumi.Input<String?>? jobName;
  /// Identifier of the foundation model, or inference profile, to use for the batch inference job.
  final pulumi.Input<String?>? modelId;
  /// Invocation endpoint used for the batch inference job.
  final pulumi.Input<String?>? modelInvocationType;
  /// Location where the results of the batch inference job are stored. See `outputDataConfig` Block below.
  final pulumi.Input<InvocationJobOutputDataConfig?>? outputDataConfig;
  /// Number of records that have been processed in the batch inference job.
  final pulumi.Input<int?>? processedRecordCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM service role that Amazon Bedrock can assume to carry out and manage the batch inference job. See [Create a service role for batch inference](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? roleArn;
  /// Whether to leave the batch inference job in its current state when destroying the resource, instead of stopping it.
  final pulumi.Input<bool?>? skipDestroy;
  /// Status of the batch inference job.
  final pulumi.Input<String?>? status;
  /// Time at which the batch inference job was submitted.
  final pulumi.Input<String?>? submitTime;
  /// Number of records that were successfully processed in the batch inference job.
  final pulumi.Input<int?>? successRecordCount;
  /// Number of hours after which to force the batch inference job to time out.
  final pulumi.Input<int?>? timeoutDurationInHours;
  final pulumi.Input<InvocationJobTimeouts?>? timeouts;
  /// Total number of records in the batch inference job.
  final pulumi.Input<int?>? totalRecordCount;
  /// VPC configuration for the data used by the batch inference job. See `vpcConfig` Block below.
  final pulumi.Input<InvocationJobVpcConfig?>? vpcConfig;

  /// Creates a new [InvocationJobState].
  /// [endTime] Time at which the batch inference job ended.
  /// [errorRecordCount] Number of records that failed to process in the batch inference job.
  /// [inputDataConfig] Location of the input data for the batch inference job. See `inputDataConfig` Block below.
  /// [jobArn] ARN of the batch inference job.
  /// [jobExpirationTime] Time at which the batch inference job times or timed out.
  /// [jobName] Name for the batch inference job.
  /// [modelId] Identifier of the foundation model, or inference profile, to use for the batch inference job.
  /// [modelInvocationType] Invocation endpoint used for the batch inference job.
  /// [outputDataConfig] Location where the results of the batch inference job are stored. See `outputDataConfig` Block below.
  /// [processedRecordCount] Number of records that have been processed in the batch inference job.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM service role that Amazon Bedrock can assume to carry out and manage the batch inference job. See [Create a service role for batch inference](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html).
  /// [skipDestroy] Whether to leave the batch inference job in its current state when destroying the resource, instead of stopping it.
  /// [status] Status of the batch inference job.
  /// [submitTime] Time at which the batch inference job was submitted.
  /// [successRecordCount] Number of records that were successfully processed in the batch inference job.
  /// [timeoutDurationInHours] Number of hours after which to force the batch inference job to time out.
  /// [timeouts] Optional.
  /// [totalRecordCount] Total number of records in the batch inference job.
  /// [vpcConfig] VPC configuration for the data used by the batch inference job. See `vpcConfig` Block below.
  const InvocationJobState({
    this.endTime,
    this.errorRecordCount,
    this.inputDataConfig,
    this.jobArn,
    this.jobExpirationTime,
    this.jobName,
    this.modelId,
    this.modelInvocationType,
    this.outputDataConfig,
    this.processedRecordCount,
    this.region,
    this.roleArn,
    this.skipDestroy,
    this.status,
    this.submitTime,
    this.successRecordCount,
    this.timeoutDurationInHours,
    this.timeouts,
    this.totalRecordCount,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'errorRecordCount': ?errorRecordCount,
      'inputDataConfig': ?pulumi.Input.mapOptionalInputValue<InvocationJobInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'jobArn': ?jobArn,
      'jobExpirationTime': ?jobExpirationTime,
      'jobName': ?jobName,
      'modelId': ?modelId,
      'modelInvocationType': ?modelInvocationType,
      'outputDataConfig': ?pulumi.Input.mapOptionalInputValue<InvocationJobOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'processedRecordCount': ?processedRecordCount,
      'region': ?region,
      'roleArn': ?roleArn,
      'skipDestroy': ?skipDestroy,
      'status': ?status,
      'submitTime': ?submitTime,
      'successRecordCount': ?successRecordCount,
      'timeoutDurationInHours': ?timeoutDurationInHours,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InvocationJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'totalRecordCount': ?totalRecordCount,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<InvocationJobVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory InvocationJobState.fromMap(Map<String, dynamic> map) {
    return InvocationJobState(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorRecordCount: (() { final guardedValue = map['errorRecordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      inputDataConfig: (() { final guardedValue = map['inputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationJobInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobArn: (() { final guardedValue = map['jobArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobExpirationTime: (() { final guardedValue = map['jobExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelInvocationType: (() { final guardedValue = map['modelInvocationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputDataConfig: (() { final guardedValue = map['outputDataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      processedRecordCount: (() { final guardedValue = map['processedRecordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      submitTime: (() { final guardedValue = map['submitTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successRecordCount: (() { final guardedValue = map['successRecordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeoutDurationInHours: (() { final guardedValue = map['timeoutDurationInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalRecordCount: (() { final guardedValue = map['totalRecordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
