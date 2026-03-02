// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_target_dead_letter_config.dart';
import 'schedule_target_ecs_parameters.dart';
import 'schedule_target_eventbridge_parameters.dart';
import 'schedule_target_kinesis_parameters.dart';
import 'schedule_target_retry_policy.dart';
import 'schedule_target_sagemaker_pipeline_parameters.dart';
import 'schedule_target_sqs_parameters.dart';

class ScheduleTarget {
  /// ARN of the target of this schedule, such as a SQS queue or ECS cluster. For universal targets, this is a [Service ARN specific to the target service](https://docs.aws.amazon.com/scheduler/latest/UserGuide/managing-targets-universal.html#supported-universal-targets).
  final pulumi.Input<String> arn;
  /// Information about an Amazon SQS queue that EventBridge Scheduler uses as a dead-letter queue for your schedule. If specified, EventBridge Scheduler delivers failed events that could not be successfully delivered to a target to the queue. Detailed below.
  final pulumi.Input<ScheduleTargetDeadLetterConfig>? deadLetterConfig;
  /// Templated target type for the Amazon ECS [`RunTask`](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) API operation. Detailed below.
  final pulumi.Input<ScheduleTargetEcsParameters>? ecsParameters;
  /// Templated target type for the EventBridge [`PutEvents`](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html) API operation. Detailed below.
  final pulumi.Input<ScheduleTargetEventbridgeParameters>? eventbridgeParameters;
  /// Text, or well-formed JSON, passed to the target. Read more in [Universal target](https://docs.aws.amazon.com/scheduler/latest/UserGuide/managing-targets-universal.html).
  final pulumi.Input<String>? input;
  /// Templated target type for the Amazon Kinesis [`PutRecord`](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_PutRecord.html) API operation. Detailed below.
  final pulumi.Input<ScheduleTargetKinesisParameters>? kinesisParameters;
  /// Information about the retry policy settings. Detailed below.
  final pulumi.Input<ScheduleTargetRetryPolicy>? retryPolicy;
  /// ARN of the IAM role that EventBridge Scheduler will use for this target when the schedule is invoked. Read more in [Set up the execution role](https://docs.aws.amazon.com/scheduler/latest/UserGuide/setting-up.html#setting-up-execution-role).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleArn;
  /// Templated target type for the Amazon SageMaker AI [`StartPipelineExecution`](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StartPipelineExecution.html) API operation. Detailed below.
  final pulumi.Input<ScheduleTargetSagemakerPipelineParameters>? sagemakerPipelineParameters;
  /// The templated target type for the Amazon SQS [`SendMessage`](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html) API operation. Detailed below.
  final pulumi.Input<ScheduleTargetSqsParameters>? sqsParameters;

  /// Creates a new [ScheduleTarget].
  /// [arn] ARN of the target of this schedule, such as a SQS queue or ECS cluster. For universal targets, this is a [Service ARN specific to the target service](https://docs.aws.amazon.com/scheduler/latest/UserGuide/managing-targets-universal.html#supported-universal-targets).
  /// [deadLetterConfig] Information about an Amazon SQS queue that EventBridge Scheduler uses as a dead-letter queue for your schedule. If specified, EventBridge Scheduler delivers failed events that could not be successfully delivered to a target to the queue. Detailed below.
  /// [ecsParameters] Templated target type for the Amazon ECS [`RunTask`](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) API operation. Detailed below.
  /// [eventbridgeParameters] Templated target type for the EventBridge [`PutEvents`](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html) API operation. Detailed below.
  /// [input] Text, or well-formed JSON, passed to the target. Read more in [Universal target](https://docs.aws.amazon.com/scheduler/latest/UserGuide/managing-targets-universal.html).
  /// [kinesisParameters] Templated target type for the Amazon Kinesis [`PutRecord`](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_PutRecord.html) API operation. Detailed below.
  /// [retryPolicy] Information about the retry policy settings. Detailed below.
  /// [roleArn] ARN of the IAM role that EventBridge Scheduler will use for this target when the schedule is invoked. Read more in [Set up the execution role](https://docs.aws.amazon.com/scheduler/latest/UserGuide/setting-up.html#setting-up-execution-role).
  /// [sagemakerPipelineParameters] Templated target type for the Amazon SageMaker AI [`StartPipelineExecution`](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StartPipelineExecution.html) API operation. Detailed below.
  /// [sqsParameters] The templated target type for the Amazon SQS [`SendMessage`](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html) API operation. Detailed below.
  ScheduleTarget({
    required this.arn,
    this.deadLetterConfig,
    this.ecsParameters,
    this.eventbridgeParameters,
    this.input,
    this.kinesisParameters,
    this.retryPolicy,
    required this.roleArn,
    this.sagemakerPipelineParameters,
    this.sqsParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetDeadLetterConfig, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'ecsParameters': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetEcsParameters, Map<String, dynamic>>(ecsParameters, (value) => value.toMap()),
      'eventbridgeParameters': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetEventbridgeParameters, Map<String, dynamic>>(eventbridgeParameters, (value) => value.toMap()),
      'input': ?input,
      'kinesisParameters': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetKinesisParameters, Map<String, dynamic>>(kinesisParameters, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'roleArn': roleArn,
      'sagemakerPipelineParameters': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetSagemakerPipelineParameters, Map<String, dynamic>>(sagemakerPipelineParameters, (value) => value.toMap()),
      'sqsParameters': ?pulumi.Input.mapOptionalInputValue<ScheduleTargetSqsParameters, Map<String, dynamic>>(sqsParameters, (value) => value.toMap()),
    };
  }

  factory ScheduleTarget.fromMap(Map<String, dynamic> map) {
    return ScheduleTarget(
      arn: (map['arn'] as String).input(),
      deadLetterConfig: map['deadLetterConfig'] == null ? null : (ScheduleTargetDeadLetterConfig.fromMap((map['deadLetterConfig'] as Map).cast<String, dynamic>())).input(),
      ecsParameters: map['ecsParameters'] == null ? null : (ScheduleTargetEcsParameters.fromMap((map['ecsParameters'] as Map).cast<String, dynamic>())).input(),
      eventbridgeParameters: map['eventbridgeParameters'] == null ? null : (ScheduleTargetEventbridgeParameters.fromMap((map['eventbridgeParameters'] as Map).cast<String, dynamic>())).input(),
      input: map['input'] == null ? null : (map['input'] as String).input(),
      kinesisParameters: map['kinesisParameters'] == null ? null : (ScheduleTargetKinesisParameters.fromMap((map['kinesisParameters'] as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (ScheduleTargetRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      roleArn: (map['roleArn'] as String).input(),
      sagemakerPipelineParameters: map['sagemakerPipelineParameters'] == null ? null : (ScheduleTargetSagemakerPipelineParameters.fromMap((map['sagemakerPipelineParameters'] as Map).cast<String, dynamic>())).input(),
      sqsParameters: map['sqsParameters'] == null ? null : (ScheduleTargetSqsParameters.fromMap((map['sqsParameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

