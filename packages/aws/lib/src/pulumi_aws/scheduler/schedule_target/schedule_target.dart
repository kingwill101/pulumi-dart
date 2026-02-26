// ignore_for_file: unused_element, unnecessary_cast

import '../schedule_target_dead_letter_config/schedule_target_dead_letter_config.dart';
import '../schedule_target_ecs_parameters/schedule_target_ecs_parameters.dart';
import '../schedule_target_eventbridge_parameters/schedule_target_eventbridge_parameters.dart';
import '../schedule_target_kinesis_parameters/schedule_target_kinesis_parameters.dart';
import '../schedule_target_retry_policy/schedule_target_retry_policy.dart';
import '../schedule_target_sagemaker_pipeline_parameters/schedule_target_sagemaker_pipeline_parameters.dart';
import '../schedule_target_sqs_parameters/schedule_target_sqs_parameters.dart';

class ScheduleTarget {
  /// ARN of the target of this schedule, such as a SQS queue or ECS cluster. For universal targets, this is a [Service ARN specific to the target service](https://docs.aws.amazon.com/scheduler/latest/UserGuide/managing-targets-universal.html#supported-universal-targets).
  final String arn;

  /// Information about an Amazon SQS queue that EventBridge Scheduler uses as a dead-letter queue for your schedule. If specified, EventBridge Scheduler delivers failed events that could not be successfully delivered to a target to the queue. Detailed below.
  final ScheduleTargetDeadLetterConfig? deadLetterConfig;

  /// Templated target type for the Amazon ECS [`RunTask`](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) API operation. Detailed below.
  final ScheduleTargetEcsParameters? ecsParameters;

  /// Templated target type for the EventBridge [`PutEvents`](https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html) API operation. Detailed below.
  final ScheduleTargetEventbridgeParameters? eventbridgeParameters;

  /// Text, or well-formed JSON, passed to the target. Read more in [Universal target](https://docs.aws.amazon.com/scheduler/latest/UserGuide/managing-targets-universal.html).
  final String? input;

  /// Templated target type for the Amazon Kinesis [`PutRecord`](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_PutRecord.html) API operation. Detailed below.
  final ScheduleTargetKinesisParameters? kinesisParameters;

  /// Information about the retry policy settings. Detailed below.
  final ScheduleTargetRetryPolicy? retryPolicy;

  /// ARN of the IAM role that EventBridge Scheduler will use for this target when the schedule is invoked. Read more in [Set up the execution role](https://docs.aws.amazon.com/scheduler/latest/UserGuide/setting-up.html#setting-up-execution-role).
  ///
  /// The following arguments are optional:
  final String roleArn;

  /// Templated target type for the Amazon SageMaker AI [`StartPipelineExecution`](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StartPipelineExecution.html) API operation. Detailed below.
  final ScheduleTargetSagemakerPipelineParameters? sagemakerPipelineParameters;

  /// The templated target type for the Amazon SQS [`SendMessage`](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html) API operation. Detailed below.
  final ScheduleTargetSqsParameters? sqsParameters;

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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final deadLetterConfigValue = deadLetterConfig;
    if (deadLetterConfigValue != null) {
      map['deadLetterConfig'] = deadLetterConfigValue.toMap();
    }
    final ecsParametersValue = ecsParameters;
    if (ecsParametersValue != null) {
      map['ecsParameters'] = ecsParametersValue.toMap();
    }
    final eventbridgeParametersValue = eventbridgeParameters;
    if (eventbridgeParametersValue != null) {
      map['eventbridgeParameters'] = eventbridgeParametersValue.toMap();
    }
    final inputValue = input;
    if (inputValue != null) {
      map['input'] = inputValue;
    }
    final kinesisParametersValue = kinesisParameters;
    if (kinesisParametersValue != null) {
      map['kinesisParameters'] = kinesisParametersValue.toMap();
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = retryPolicyValue.toMap();
    }
    map['roleArn'] = roleArn;
    final sagemakerPipelineParametersValue = sagemakerPipelineParameters;
    if (sagemakerPipelineParametersValue != null) {
      map['sagemakerPipelineParameters'] =
          sagemakerPipelineParametersValue.toMap();
    }
    final sqsParametersValue = sqsParameters;
    if (sqsParametersValue != null) {
      map['sqsParameters'] = sqsParametersValue.toMap();
    }
    return map;
  }

  factory ScheduleTarget.fromMap(Map<String, dynamic> map) {
    return ScheduleTarget(
      arn: map['arn'] as String,
      deadLetterConfig: map['deadLetterConfig'] == null
          ? null
          : ScheduleTargetDeadLetterConfig.fromMap(
              (map['deadLetterConfig'] as Map).cast<String, dynamic>()),
      ecsParameters: map['ecsParameters'] == null
          ? null
          : ScheduleTargetEcsParameters.fromMap(
              (map['ecsParameters'] as Map).cast<String, dynamic>()),
      eventbridgeParameters: map['eventbridgeParameters'] == null
          ? null
          : ScheduleTargetEventbridgeParameters.fromMap(
              (map['eventbridgeParameters'] as Map).cast<String, dynamic>()),
      input: map['input'] == null ? null : map['input'] as String,
      kinesisParameters: map['kinesisParameters'] == null
          ? null
          : ScheduleTargetKinesisParameters.fromMap(
              (map['kinesisParameters'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null
          ? null
          : ScheduleTargetRetryPolicy.fromMap(
              (map['retryPolicy'] as Map).cast<String, dynamic>()),
      roleArn: map['roleArn'] as String,
      sagemakerPipelineParameters: map['sagemakerPipelineParameters'] == null
          ? null
          : ScheduleTargetSagemakerPipelineParameters.fromMap(
              (map['sagemakerPipelineParameters'] as Map)
                  .cast<String, dynamic>()),
      sqsParameters: map['sqsParameters'] == null
          ? null
          : ScheduleTargetSqsParameters.fromMap(
              (map['sqsParameters'] as Map).cast<String, dynamic>()),
    );
  }
}
