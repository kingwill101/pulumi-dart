// ignore_for_file: unused_element, unnecessary_cast

import '../pipe_target_parameters_batch_job_parameters/pipe_target_parameters_batch_job_parameters.dart';
import '../pipe_target_parameters_cloudwatch_logs_parameters/pipe_target_parameters_cloudwatch_logs_parameters.dart';
import '../pipe_target_parameters_ecs_task_parameters/pipe_target_parameters_ecs_task_parameters.dart';
import '../pipe_target_parameters_eventbridge_event_bus_parameters/pipe_target_parameters_eventbridge_event_bus_parameters.dart';
import '../pipe_target_parameters_http_parameters/pipe_target_parameters_http_parameters.dart';
import '../pipe_target_parameters_kinesis_stream_parameters/pipe_target_parameters_kinesis_stream_parameters.dart';
import '../pipe_target_parameters_lambda_function_parameters/pipe_target_parameters_lambda_function_parameters.dart';
import '../pipe_target_parameters_redshift_data_parameters/pipe_target_parameters_redshift_data_parameters.dart';
import '../pipe_target_parameters_sagemaker_pipeline_parameters/pipe_target_parameters_sagemaker_pipeline_parameters.dart';
import '../pipe_target_parameters_sqs_queue_parameters/pipe_target_parameters_sqs_queue_parameters.dart';
import '../pipe_target_parameters_step_function_state_machine_parameters/pipe_target_parameters_step_function_state_machine_parameters.dart';

class PipeTargetParameters {
  /// The parameters for using an AWS Batch job as a target. Detailed below.
  final PipeTargetParametersBatchJobParameters? batchJobParameters;

  /// The parameters for using an CloudWatch Logs log stream as a target. Detailed below.
  final PipeTargetParametersCloudwatchLogsParameters? cloudwatchLogsParameters;

  /// The parameters for using an Amazon ECS task as a target. Detailed below.
  final PipeTargetParametersEcsTaskParameters? ecsTaskParameters;

  /// The parameters for using an EventBridge event bus as a target. Detailed below.
  final PipeTargetParametersEventbridgeEventBusParameters?
      eventbridgeEventBusParameters;

  /// These are custom parameter to be used when the target is an API Gateway REST APIs or EventBridge ApiDestinations. Detailed below.
  final PipeTargetParametersHttpParameters? httpParameters;

  /// Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. Maximum length of 8192 characters.
  final String? inputTemplate;

  /// The parameters for using a Kinesis stream as a source. Detailed below.
  final PipeTargetParametersKinesisStreamParameters? kinesisStreamParameters;

  /// The parameters for using a Lambda function as a target. Detailed below.
  final PipeTargetParametersLambdaFunctionParameters? lambdaFunctionParameters;

  /// These are custom parameters to be used when the target is a Amazon Redshift cluster to invoke the Amazon Redshift Data API BatchExecuteStatement. Detailed below.
  final PipeTargetParametersRedshiftDataParameters? redshiftDataParameters;

  /// The parameters for using a SageMaker AI pipeline as a target. Detailed below.
  final PipeTargetParametersSagemakerPipelineParameters?
      sagemakerPipelineParameters;

  /// The parameters for using a Amazon SQS stream as a target. Detailed below.
  final PipeTargetParametersSqsQueueParameters? sqsQueueParameters;

  /// The parameters for using a Step Functions state machine as a target. Detailed below.
  final PipeTargetParametersStepFunctionStateMachineParameters?
      stepFunctionStateMachineParameters;

  PipeTargetParameters({
    this.batchJobParameters,
    this.cloudwatchLogsParameters,
    this.ecsTaskParameters,
    this.eventbridgeEventBusParameters,
    this.httpParameters,
    this.inputTemplate,
    this.kinesisStreamParameters,
    this.lambdaFunctionParameters,
    this.redshiftDataParameters,
    this.sagemakerPipelineParameters,
    this.sqsQueueParameters,
    this.stepFunctionStateMachineParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchJobParametersValue = batchJobParameters;
    if (batchJobParametersValue != null) {
      map['batchJobParameters'] = batchJobParametersValue.toMap();
    }
    final cloudwatchLogsParametersValue = cloudwatchLogsParameters;
    if (cloudwatchLogsParametersValue != null) {
      map['cloudwatchLogsParameters'] = cloudwatchLogsParametersValue.toMap();
    }
    final ecsTaskParametersValue = ecsTaskParameters;
    if (ecsTaskParametersValue != null) {
      map['ecsTaskParameters'] = ecsTaskParametersValue.toMap();
    }
    final eventbridgeEventBusParametersValue = eventbridgeEventBusParameters;
    if (eventbridgeEventBusParametersValue != null) {
      map['eventbridgeEventBusParameters'] =
          eventbridgeEventBusParametersValue.toMap();
    }
    final httpParametersValue = httpParameters;
    if (httpParametersValue != null) {
      map['httpParameters'] = httpParametersValue.toMap();
    }
    final inputTemplateValue = inputTemplate;
    if (inputTemplateValue != null) {
      map['inputTemplate'] = inputTemplateValue;
    }
    final kinesisStreamParametersValue = kinesisStreamParameters;
    if (kinesisStreamParametersValue != null) {
      map['kinesisStreamParameters'] = kinesisStreamParametersValue.toMap();
    }
    final lambdaFunctionParametersValue = lambdaFunctionParameters;
    if (lambdaFunctionParametersValue != null) {
      map['lambdaFunctionParameters'] = lambdaFunctionParametersValue.toMap();
    }
    final redshiftDataParametersValue = redshiftDataParameters;
    if (redshiftDataParametersValue != null) {
      map['redshiftDataParameters'] = redshiftDataParametersValue.toMap();
    }
    final sagemakerPipelineParametersValue = sagemakerPipelineParameters;
    if (sagemakerPipelineParametersValue != null) {
      map['sagemakerPipelineParameters'] =
          sagemakerPipelineParametersValue.toMap();
    }
    final sqsQueueParametersValue = sqsQueueParameters;
    if (sqsQueueParametersValue != null) {
      map['sqsQueueParameters'] = sqsQueueParametersValue.toMap();
    }
    final stepFunctionStateMachineParametersValue =
        stepFunctionStateMachineParameters;
    if (stepFunctionStateMachineParametersValue != null) {
      map['stepFunctionStateMachineParameters'] =
          stepFunctionStateMachineParametersValue.toMap();
    }
    return map;
  }

  factory PipeTargetParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParameters(
      batchJobParameters: map['batchJobParameters'] == null
          ? null
          : PipeTargetParametersBatchJobParameters.fromMap(
              (map['batchJobParameters'] as Map).cast<String, dynamic>()),
      cloudwatchLogsParameters: map['cloudwatchLogsParameters'] == null
          ? null
          : PipeTargetParametersCloudwatchLogsParameters.fromMap(
              (map['cloudwatchLogsParameters'] as Map).cast<String, dynamic>()),
      ecsTaskParameters: map['ecsTaskParameters'] == null
          ? null
          : PipeTargetParametersEcsTaskParameters.fromMap(
              (map['ecsTaskParameters'] as Map).cast<String, dynamic>()),
      eventbridgeEventBusParameters:
          map['eventbridgeEventBusParameters'] == null
              ? null
              : PipeTargetParametersEventbridgeEventBusParameters.fromMap(
                  (map['eventbridgeEventBusParameters'] as Map)
                      .cast<String, dynamic>()),
      httpParameters: map['httpParameters'] == null
          ? null
          : PipeTargetParametersHttpParameters.fromMap(
              (map['httpParameters'] as Map).cast<String, dynamic>()),
      inputTemplate:
          map['inputTemplate'] == null ? null : map['inputTemplate'] as String,
      kinesisStreamParameters: map['kinesisStreamParameters'] == null
          ? null
          : PipeTargetParametersKinesisStreamParameters.fromMap(
              (map['kinesisStreamParameters'] as Map).cast<String, dynamic>()),
      lambdaFunctionParameters: map['lambdaFunctionParameters'] == null
          ? null
          : PipeTargetParametersLambdaFunctionParameters.fromMap(
              (map['lambdaFunctionParameters'] as Map).cast<String, dynamic>()),
      redshiftDataParameters: map['redshiftDataParameters'] == null
          ? null
          : PipeTargetParametersRedshiftDataParameters.fromMap(
              (map['redshiftDataParameters'] as Map).cast<String, dynamic>()),
      sagemakerPipelineParameters: map['sagemakerPipelineParameters'] == null
          ? null
          : PipeTargetParametersSagemakerPipelineParameters.fromMap(
              (map['sagemakerPipelineParameters'] as Map)
                  .cast<String, dynamic>()),
      sqsQueueParameters: map['sqsQueueParameters'] == null
          ? null
          : PipeTargetParametersSqsQueueParameters.fromMap(
              (map['sqsQueueParameters'] as Map).cast<String, dynamic>()),
      stepFunctionStateMachineParameters:
          map['stepFunctionStateMachineParameters'] == null
              ? null
              : PipeTargetParametersStepFunctionStateMachineParameters.fromMap(
                  (map['stepFunctionStateMachineParameters'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
