// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_target_appsync_target/event_target_appsync_target.dart';
import '../event_target_batch_target/event_target_batch_target.dart';
import '../event_target_dead_letter_config/event_target_dead_letter_config.dart';
import '../event_target_ecs_target/event_target_ecs_target.dart';
import '../event_target_http_target/event_target_http_target.dart';
import '../event_target_input_transformer/event_target_input_transformer.dart';
import '../event_target_kinesis_target/event_target_kinesis_target.dart';
import '../event_target_redshift_target/event_target_redshift_target.dart';
import '../event_target_retry_policy/event_target_retry_policy.dart';
import '../event_target_run_command_target/event_target_run_command_target.dart';
import '../event_target_sagemaker_pipeline_target/event_target_sagemaker_pipeline_target.dart';
import '../event_target_sqs_target/event_target_sqs_target.dart';

/// The set of arguments for EventTarget.
class EventTargetArgs {
  /// Parameters used when you are using the rule to invoke an AppSync GraphQL API mutation. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetAppsyncTarget>? appsyncTarget;

  /// The Amazon Resource Name (ARN) of the target.
  final pulumi.Input<String> arn;

  /// Parameters used when you are using the rule to invoke an Amazon Batch Job. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetBatchTarget>? batchTarget;

  /// Parameters used when you are providing a dead letter config. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetDeadLetterConfig>? deadLetterConfig;

  /// Parameters used when you are using the rule to invoke Amazon ECS Task. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetEcsTarget>? ecsTarget;

  /// The name or ARN of the event bus to associate with the rule.
  /// If you omit this, the `default` event bus is used.
  final pulumi.Input<String>? eventBusName;

  /// Used to delete managed rules created by AWS. Defaults to `false`.
  final pulumi.Input<bool>? forceDestroy;

  /// Parameters used when you are using the rule to invoke an API Gateway REST endpoint. Documented below. A maximum of 1 is allowed.
  final pulumi.Input<EventTargetHttpTarget>? httpTarget;

  /// Valid JSON text passed to the target. Conflicts with `input_path` and `input_transformer`.
  final pulumi.Input<String>? input;

  /// The value of the [JSONPath](http://goessner.net/articles/JsonPath/) that is used for extracting part of the matched event when passing it to the target. Conflicts with `input` and `input_transformer`.
  final pulumi.Input<String>? inputPath;

  /// Parameters used when you are providing a custom input to a target based on certain event data. Conflicts with `input` and `input_path`.
  final pulumi.Input<EventTargetInputTransformer>? inputTransformer;

  /// Parameters used when you are using the rule to invoke an Amazon Kinesis Stream. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetKinesisTarget>? kinesisTarget;

  /// Parameters used when you are using the rule to invoke an Amazon Redshift Statement. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetRedshiftTarget>? redshiftTarget;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Parameters used when you are providing retry policies. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetRetryPolicy>? retryPolicy;

  /// The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if `ecs_target` is used or target in `arn` is EC2 instance, Kinesis data stream, Step Functions state machine, or Event Bus in different account or region.
  final pulumi.Input<String>? roleArn;

  /// The name of the rule you want to add targets to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> rule;

  /// Parameters used when you are using the rule to invoke Amazon EC2 Run Command. Documented below. A maximum of 5 are allowed.
  final pulumi.Input<List<EventTargetRunCommandTarget>>? runCommandTargets;

  /// Parameters used when you are using the rule to invoke an Amazon SageMaker AI Pipeline. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetSagemakerPipelineTarget>?
      sagemakerPipelineTarget;

  /// Parameters used when you are using the rule to invoke an Amazon SQS Queue. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetSqsTarget>? sqsTarget;

  /// The unique target assignment ID. If missing, will generate a random, unique id.
  final pulumi.Input<String>? targetId;

  EventTargetArgs({
    this.appsyncTarget,
    required this.arn,
    this.batchTarget,
    this.deadLetterConfig,
    this.ecsTarget,
    this.eventBusName,
    this.forceDestroy,
    this.httpTarget,
    this.input,
    this.inputPath,
    this.inputTransformer,
    this.kinesisTarget,
    this.redshiftTarget,
    this.region,
    this.retryPolicy,
    this.roleArn,
    required this.rule,
    this.runCommandTargets,
    this.sagemakerPipelineTarget,
    this.sqsTarget,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appsyncTargetValue = appsyncTarget;
    if (appsyncTargetValue != null) {
      map['appsyncTarget'] = pulumi.Input.mapOptionalInputValue<
          EventTargetAppsyncTarget,
          Map<String, dynamic>>(appsyncTargetValue, (value) => value.toMap());
    }
    map['arn'] = arn;
    final batchTargetValue = batchTarget;
    if (batchTargetValue != null) {
      map['batchTarget'] = pulumi.Input.mapOptionalInputValue<
          EventTargetBatchTarget,
          Map<String, dynamic>>(batchTargetValue, (value) => value.toMap());
    }
    final deadLetterConfigValue = deadLetterConfig;
    if (deadLetterConfigValue != null) {
      map['deadLetterConfig'] = pulumi.Input.mapOptionalInputValue<
              EventTargetDeadLetterConfig, Map<String, dynamic>>(
          deadLetterConfigValue, (value) => value.toMap());
    }
    final ecsTargetValue = ecsTarget;
    if (ecsTargetValue != null) {
      map['ecsTarget'] = pulumi.Input.mapOptionalInputValue<
          EventTargetEcsTarget,
          Map<String, dynamic>>(ecsTargetValue, (value) => value.toMap());
    }
    final eventBusNameValue = eventBusName;
    if (eventBusNameValue != null) {
      map['eventBusName'] = eventBusNameValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] = pulumi.Input.mapOptionalInputValue<
          EventTargetHttpTarget,
          Map<String, dynamic>>(httpTargetValue, (value) => value.toMap());
    }
    final inputValue = input;
    if (inputValue != null) {
      map['input'] = inputValue;
    }
    final inputPathValue = inputPath;
    if (inputPathValue != null) {
      map['inputPath'] = inputPathValue;
    }
    final inputTransformerValue = inputTransformer;
    if (inputTransformerValue != null) {
      map['inputTransformer'] = pulumi.Input.mapOptionalInputValue<
              EventTargetInputTransformer, Map<String, dynamic>>(
          inputTransformerValue, (value) => value.toMap());
    }
    final kinesisTargetValue = kinesisTarget;
    if (kinesisTargetValue != null) {
      map['kinesisTarget'] = pulumi.Input.mapOptionalInputValue<
          EventTargetKinesisTarget,
          Map<String, dynamic>>(kinesisTargetValue, (value) => value.toMap());
    }
    final redshiftTargetValue = redshiftTarget;
    if (redshiftTargetValue != null) {
      map['redshiftTarget'] = pulumi.Input.mapOptionalInputValue<
          EventTargetRedshiftTarget,
          Map<String, dynamic>>(redshiftTargetValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = pulumi.Input.mapOptionalInputValue<
          EventTargetRetryPolicy,
          Map<String, dynamic>>(retryPolicyValue, (value) => value.toMap());
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['rule'] = rule;
    final runCommandTargetsValue = runCommandTargets;
    if (runCommandTargetsValue != null) {
      map['runCommandTargets'] = pulumi.Input.mapOptionalInputValue<
              List<EventTargetRunCommandTarget>, List<Map<String, dynamic>>>(
          runCommandTargetsValue,
          (value) => pulumi.Input.encodeList<EventTargetRunCommandTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sagemakerPipelineTargetValue = sagemakerPipelineTarget;
    if (sagemakerPipelineTargetValue != null) {
      map['sagemakerPipelineTarget'] = pulumi.Input.mapOptionalInputValue<
              EventTargetSagemakerPipelineTarget, Map<String, dynamic>>(
          sagemakerPipelineTargetValue, (value) => value.toMap());
    }
    final sqsTargetValue = sqsTarget;
    if (sqsTargetValue != null) {
      map['sqsTarget'] = pulumi.Input.mapOptionalInputValue<
          EventTargetSqsTarget,
          Map<String, dynamic>>(sqsTargetValue, (value) => value.toMap());
    }
    final targetIdValue = targetId;
    if (targetIdValue != null) {
      map['targetId'] = targetIdValue;
    }
    return map;
  }

  factory EventTargetArgs.fromMap(Map<String, dynamic> map) {
    return EventTargetArgs(
      appsyncTarget: pulumi.Input.asOptionalInput<EventTargetAppsyncTarget>(
          map['appsyncTarget']),
      arn: pulumi.Input.asInput<String>(map['arn']),
      batchTarget: pulumi.Input.asOptionalInput<EventTargetBatchTarget>(
          map['batchTarget']),
      deadLetterConfig:
          pulumi.Input.asOptionalInput<EventTargetDeadLetterConfig>(
              map['deadLetterConfig']),
      ecsTarget:
          pulumi.Input.asOptionalInput<EventTargetEcsTarget>(map['ecsTarget']),
      eventBusName: pulumi.Input.asOptionalInput<String>(map['eventBusName']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      httpTarget: pulumi.Input.asOptionalInput<EventTargetHttpTarget>(
          map['httpTarget']),
      input: pulumi.Input.asOptionalInput<String>(map['input']),
      inputPath: pulumi.Input.asOptionalInput<String>(map['inputPath']),
      inputTransformer:
          pulumi.Input.asOptionalInput<EventTargetInputTransformer>(
              map['inputTransformer']),
      kinesisTarget: pulumi.Input.asOptionalInput<EventTargetKinesisTarget>(
          map['kinesisTarget']),
      redshiftTarget: pulumi.Input.asOptionalInput<EventTargetRedshiftTarget>(
          map['redshiftTarget']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      retryPolicy: pulumi.Input.asOptionalInput<EventTargetRetryPolicy>(
          map['retryPolicy']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      rule: pulumi.Input.asInput<String>(map['rule']),
      runCommandTargets:
          pulumi.Input.asOptionalInput<List<EventTargetRunCommandTarget>>(
              map['runCommandTargets']),
      sagemakerPipelineTarget:
          pulumi.Input.asOptionalInput<EventTargetSagemakerPipelineTarget>(
              map['sagemakerPipelineTarget']),
      sqsTarget:
          pulumi.Input.asOptionalInput<EventTargetSqsTarget>(map['sqsTarget']),
      targetId: pulumi.Input.asOptionalInput<String>(map['targetId']),
    );
  }
}
