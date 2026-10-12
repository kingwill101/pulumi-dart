// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_batch_job_parameters.dart';
import 'pipe_target_parameters_cloudwatch_logs_parameters.dart';
import 'pipe_target_parameters_ecs_task_parameters.dart';
import 'pipe_target_parameters_eventbridge_event_bus_parameters.dart';
import 'pipe_target_parameters_http_parameters.dart';
import 'pipe_target_parameters_kinesis_stream_parameters.dart';
import 'pipe_target_parameters_lambda_function_parameters.dart';
import 'pipe_target_parameters_redshift_data_parameters.dart';
import 'pipe_target_parameters_sagemaker_pipeline_parameters.dart';
import 'pipe_target_parameters_sqs_queue_parameters.dart';
import 'pipe_target_parameters_step_function_state_machine_parameters.dart';

class PipeTargetParameters {
  /// Parameters for using an AWS Batch job as a target. See `batchJobParameters` Block for details.
  final pulumi.Input<PipeTargetParametersBatchJobParameters?>? batchJobParameters;
  /// Parameters for using a CloudWatch Logs log stream as a target. See `cloudwatchLogsParameters` Block for details.
  final pulumi.Input<PipeTargetParametersCloudwatchLogsParameters?>? cloudwatchLogsParameters;
  /// Parameters for using an Amazon ECS task as a target. See `ecsTaskParameters` Block for details.
  final pulumi.Input<PipeTargetParametersEcsTaskParameters?>? ecsTaskParameters;
  /// Parameters for using an EventBridge event bus as a target. See `eventbridgeEventBusParameters` Block for details.
  final pulumi.Input<PipeTargetParametersEventbridgeEventBusParameters?>? eventbridgeEventBusParameters;
  /// Custom parameters used when the target is an API Gateway REST API or EventBridge ApiDestination. See `target_parameters.http_parameters` Block for details.
  final pulumi.Input<PipeTargetParametersHttpParameters?>? httpParameters;
  /// Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. Maximum length of 8192 characters.
  final pulumi.Input<String?>? inputTemplate;
  /// Parameters for using a Kinesis stream as a target. See `target_parameters.kinesis_stream_parameters` Block for details.
  final pulumi.Input<PipeTargetParametersKinesisStreamParameters?>? kinesisStreamParameters;
  /// Parameters for using a Lambda function as a target. See `lambdaFunctionParameters` Block for details.
  final pulumi.Input<PipeTargetParametersLambdaFunctionParameters?>? lambdaFunctionParameters;
  /// Custom parameters used when the target is an Amazon Redshift cluster to invoke the Amazon Redshift Data API BatchExecuteStatement. See `redshiftDataParameters` Block for details.
  final pulumi.Input<PipeTargetParametersRedshiftDataParameters?>? redshiftDataParameters;
  /// Parameters for using a SageMaker AI pipeline as a target. See `sagemakerPipelineParameters` Block for details.
  final pulumi.Input<PipeTargetParametersSagemakerPipelineParameters?>? sagemakerPipelineParameters;
  /// Parameters for using an Amazon SQS stream as a target. See `target_parameters.sqs_queue_parameters` Block for details.
  final pulumi.Input<PipeTargetParametersSqsQueueParameters?>? sqsQueueParameters;
  /// Parameters for using a Step Functions state machine as a target. See `stepFunctionStateMachineParameters` Block for details.
  final pulumi.Input<PipeTargetParametersStepFunctionStateMachineParameters?>? stepFunctionStateMachineParameters;

  /// Creates a new [PipeTargetParameters].
  /// [batchJobParameters] Parameters for using an AWS Batch job as a target. See `batchJobParameters` Block for details.
  /// [cloudwatchLogsParameters] Parameters for using a CloudWatch Logs log stream as a target. See `cloudwatchLogsParameters` Block for details.
  /// [ecsTaskParameters] Parameters for using an Amazon ECS task as a target. See `ecsTaskParameters` Block for details.
  /// [eventbridgeEventBusParameters] Parameters for using an EventBridge event bus as a target. See `eventbridgeEventBusParameters` Block for details.
  /// [httpParameters] Custom parameters used when the target is an API Gateway REST API or EventBridge ApiDestination. See `target_parameters.http_parameters` Block for details.
  /// [inputTemplate] Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. Maximum length of 8192 characters.
  /// [kinesisStreamParameters] Parameters for using a Kinesis stream as a target. See `target_parameters.kinesis_stream_parameters` Block for details.
  /// [lambdaFunctionParameters] Parameters for using a Lambda function as a target. See `lambdaFunctionParameters` Block for details.
  /// [redshiftDataParameters] Custom parameters used when the target is an Amazon Redshift cluster to invoke the Amazon Redshift Data API BatchExecuteStatement. See `redshiftDataParameters` Block for details.
  /// [sagemakerPipelineParameters] Parameters for using a SageMaker AI pipeline as a target. See `sagemakerPipelineParameters` Block for details.
  /// [sqsQueueParameters] Parameters for using an Amazon SQS stream as a target. See `target_parameters.sqs_queue_parameters` Block for details.
  /// [stepFunctionStateMachineParameters] Parameters for using a Step Functions state machine as a target. See `stepFunctionStateMachineParameters` Block for details.
  const PipeTargetParameters({
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
    return <String, dynamic>{
      'batchJobParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersBatchJobParameters, Map<String, dynamic>>(batchJobParameters, (value) => value.toMap()),
      'cloudwatchLogsParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersCloudwatchLogsParameters, Map<String, dynamic>>(cloudwatchLogsParameters, (value) => value.toMap()),
      'ecsTaskParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersEcsTaskParameters, Map<String, dynamic>>(ecsTaskParameters, (value) => value.toMap()),
      'eventbridgeEventBusParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersEventbridgeEventBusParameters, Map<String, dynamic>>(eventbridgeEventBusParameters, (value) => value.toMap()),
      'httpParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersHttpParameters, Map<String, dynamic>>(httpParameters, (value) => value.toMap()),
      'inputTemplate': ?inputTemplate,
      'kinesisStreamParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersKinesisStreamParameters, Map<String, dynamic>>(kinesisStreamParameters, (value) => value.toMap()),
      'lambdaFunctionParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersLambdaFunctionParameters, Map<String, dynamic>>(lambdaFunctionParameters, (value) => value.toMap()),
      'redshiftDataParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersRedshiftDataParameters, Map<String, dynamic>>(redshiftDataParameters, (value) => value.toMap()),
      'sagemakerPipelineParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersSagemakerPipelineParameters, Map<String, dynamic>>(sagemakerPipelineParameters, (value) => value.toMap()),
      'sqsQueueParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersSqsQueueParameters, Map<String, dynamic>>(sqsQueueParameters, (value) => value.toMap()),
      'stepFunctionStateMachineParameters': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersStepFunctionStateMachineParameters, Map<String, dynamic>>(stepFunctionStateMachineParameters, (value) => value.toMap()),
    };
  }

  factory PipeTargetParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParameters(
      batchJobParameters: (() { final guardedValue = map['batchJobParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersBatchJobParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudwatchLogsParameters: (() { final guardedValue = map['cloudwatchLogsParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersCloudwatchLogsParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ecsTaskParameters: (() { final guardedValue = map['ecsTaskParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersEcsTaskParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventbridgeEventBusParameters: (() { final guardedValue = map['eventbridgeEventBusParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersEventbridgeEventBusParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpParameters: (() { final guardedValue = map['httpParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersHttpParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputTemplate: (() { final guardedValue = map['inputTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kinesisStreamParameters: (() { final guardedValue = map['kinesisStreamParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersKinesisStreamParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambdaFunctionParameters: (() { final guardedValue = map['lambdaFunctionParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersLambdaFunctionParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshiftDataParameters: (() { final guardedValue = map['redshiftDataParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersRedshiftDataParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sagemakerPipelineParameters: (() { final guardedValue = map['sagemakerPipelineParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersSagemakerPipelineParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqsQueueParameters: (() { final guardedValue = map['sqsQueueParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersSqsQueueParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stepFunctionStateMachineParameters: (() { final guardedValue = map['stepFunctionStateMachineParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersStepFunctionStateMachineParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
