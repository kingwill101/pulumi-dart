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
  /// The parameters for using an AWS Batch job as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersBatchJobParameters>? batchJobParameters;
  /// The parameters for using an CloudWatch Logs log stream as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersCloudwatchLogsParameters>? cloudwatchLogsParameters;
  /// The parameters for using an Amazon ECS task as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersEcsTaskParameters>? ecsTaskParameters;
  /// The parameters for using an EventBridge event bus as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersEventbridgeEventBusParameters>? eventbridgeEventBusParameters;
  /// These are custom parameter to be used when the target is an API Gateway REST APIs or EventBridge ApiDestinations. Detailed below.
  final pulumi.Input<PipeTargetParametersHttpParameters>? httpParameters;
  /// Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. Maximum length of 8192 characters.
  final pulumi.Input<String>? inputTemplate;
  /// The parameters for using a Kinesis stream as a source. Detailed below.
  final pulumi.Input<PipeTargetParametersKinesisStreamParameters>? kinesisStreamParameters;
  /// The parameters for using a Lambda function as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersLambdaFunctionParameters>? lambdaFunctionParameters;
  /// These are custom parameters to be used when the target is a Amazon Redshift cluster to invoke the Amazon Redshift Data API BatchExecuteStatement. Detailed below.
  final pulumi.Input<PipeTargetParametersRedshiftDataParameters>? redshiftDataParameters;
  /// The parameters for using a SageMaker AI pipeline as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersSagemakerPipelineParameters>? sagemakerPipelineParameters;
  /// The parameters for using a Amazon SQS stream as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersSqsQueueParameters>? sqsQueueParameters;
  /// The parameters for using a Step Functions state machine as a target. Detailed below.
  final pulumi.Input<PipeTargetParametersStepFunctionStateMachineParameters>? stepFunctionStateMachineParameters;

  /// Creates a new [PipeTargetParameters].
  /// [batchJobParameters] The parameters for using an AWS Batch job as a target. Detailed below.
  /// [cloudwatchLogsParameters] The parameters for using an CloudWatch Logs log stream as a target. Detailed below.
  /// [ecsTaskParameters] The parameters for using an Amazon ECS task as a target. Detailed below.
  /// [eventbridgeEventBusParameters] The parameters for using an EventBridge event bus as a target. Detailed below.
  /// [httpParameters] These are custom parameter to be used when the target is an API Gateway REST APIs or EventBridge ApiDestinations. Detailed below.
  /// [inputTemplate] Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. Maximum length of 8192 characters.
  /// [kinesisStreamParameters] The parameters for using a Kinesis stream as a source. Detailed below.
  /// [lambdaFunctionParameters] The parameters for using a Lambda function as a target. Detailed below.
  /// [redshiftDataParameters] These are custom parameters to be used when the target is a Amazon Redshift cluster to invoke the Amazon Redshift Data API BatchExecuteStatement. Detailed below.
  /// [sagemakerPipelineParameters] The parameters for using a SageMaker AI pipeline as a target. Detailed below.
  /// [sqsQueueParameters] The parameters for using a Amazon SQS stream as a target. Detailed below.
  /// [stepFunctionStateMachineParameters] The parameters for using a Step Functions state machine as a target. Detailed below.
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

