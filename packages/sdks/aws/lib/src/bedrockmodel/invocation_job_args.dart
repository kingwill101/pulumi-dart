// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_job_input_data_config.dart';
import 'invocation_job_output_data_config.dart';
import 'invocation_job_timeouts.dart';
import 'invocation_job_vpc_config.dart';

/// {@template pulumi_bedrockmodel_invocation_job_invocation_job_args_doc}
/// The set of arguments for InvocationJob.
/// {@endtemplate}
/// {@macro pulumi_bedrockmodel_invocation_job_invocation_job_args_doc}
class InvocationJobArgs {
  /// Location of the input data for the batch inference job. See `inputDataConfig` Block below.
  final pulumi.Input<InvocationJobInputDataConfig> inputDataConfig;
  /// Name for the batch inference job.
  final pulumi.Input<String> jobName;
  /// Identifier of the foundation model, or inference profile, to use for the batch inference job.
  final pulumi.Input<String> modelId;
  /// Location where the results of the batch inference job are stored. See `outputDataConfig` Block below.
  final pulumi.Input<InvocationJobOutputDataConfig> outputDataConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM service role that Amazon Bedrock can assume to carry out and manage the batch inference job. See [Create a service role for batch inference](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;
  /// Whether to leave the batch inference job in its current state when destroying the resource, instead of stopping it.
  final pulumi.Input<bool?>? skipDestroy;
  /// Number of hours after which to force the batch inference job to time out.
  final pulumi.Input<int?>? timeoutDurationInHours;
  final pulumi.Input<InvocationJobTimeouts?>? timeouts;
  /// VPC configuration for the data used by the batch inference job. See `vpcConfig` Block below.
  final pulumi.Input<InvocationJobVpcConfig?>? vpcConfig;

  /// Creates a new [InvocationJobArgs].
  /// [inputDataConfig] Location of the input data for the batch inference job. See `inputDataConfig` Block below.
  /// [jobName] Name for the batch inference job.
  /// [modelId] Identifier of the foundation model, or inference profile, to use for the batch inference job.
  /// [outputDataConfig] Location where the results of the batch inference job are stored. See `outputDataConfig` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM service role that Amazon Bedrock can assume to carry out and manage the batch inference job. See [Create a service role for batch inference](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html).
  /// [skipDestroy] Whether to leave the batch inference job in its current state when destroying the resource, instead of stopping it.
  /// [timeoutDurationInHours] Number of hours after which to force the batch inference job to time out.
  /// [timeouts] Optional.
  /// [vpcConfig] VPC configuration for the data used by the batch inference job. See `vpcConfig` Block below.
  const InvocationJobArgs({
    required this.inputDataConfig,
    required this.jobName,
    required this.modelId,
    required this.outputDataConfig,
    this.region,
    required this.roleArn,
    this.skipDestroy,
    this.timeoutDurationInHours,
    this.timeouts,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputDataConfig': pulumi.Input.mapInputValue<InvocationJobInputDataConfig, Map<String, dynamic>>(inputDataConfig, (value) => value.toMap()),
      'jobName': jobName,
      'modelId': modelId,
      'outputDataConfig': pulumi.Input.mapInputValue<InvocationJobOutputDataConfig, Map<String, dynamic>>(outputDataConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'skipDestroy': ?skipDestroy,
      'timeoutDurationInHours': ?timeoutDurationInHours,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InvocationJobTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<InvocationJobVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory InvocationJobArgs.fromMap(Map<String, dynamic> map) {
    return InvocationJobArgs(
      inputDataConfig: pulumi.Input.fromValue(InvocationJobInputDataConfig.fromMap((map['inputDataConfig']! as Map).cast<String, dynamic>())),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      outputDataConfig: pulumi.Input.fromValue(InvocationJobOutputDataConfig.fromMap((map['outputDataConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeoutDurationInHours: (() { final guardedValue = map['timeoutDurationInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
