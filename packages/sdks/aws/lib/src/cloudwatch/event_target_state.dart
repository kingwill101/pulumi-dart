// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_target_appsync_target.dart';
import 'event_target_batch_target.dart';
import 'event_target_dead_letter_config.dart';
import 'event_target_ecs_target.dart';
import 'event_target_http_target.dart';
import 'event_target_input_transformer.dart';
import 'event_target_kinesis_target.dart';
import 'event_target_redshift_target.dart';
import 'event_target_retry_policy.dart';
import 'event_target_run_command_target.dart';
import 'event_target_sagemaker_pipeline_target.dart';
import 'event_target_sqs_target.dart';

/// Input properties used for looking up and filtering EventTarget resources.
class EventTargetState {
  /// Parameters used when you are using the rule to invoke an AppSync GraphQL API mutation. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetAppsyncTarget>? appsyncTarget;
  /// The Amazon Resource Name (ARN) of the target.
  final pulumi.Input<String>? arn;
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
  final pulumi.Input<String>? rule;
  /// Parameters used when you are using the rule to invoke Amazon EC2 Run Command. Documented below. A maximum of 5 are allowed.
  final pulumi.Input<List<EventTargetRunCommandTarget>>? runCommandTargets;
  /// Parameters used when you are using the rule to invoke an Amazon SageMaker AI Pipeline. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetSagemakerPipelineTarget>? sagemakerPipelineTarget;
  /// Parameters used when you are using the rule to invoke an Amazon SQS Queue. Documented below. A maximum of 1 are allowed.
  final pulumi.Input<EventTargetSqsTarget>? sqsTarget;
  /// The unique target assignment ID. If missing, will generate a random, unique id.
  final pulumi.Input<String>? targetId;

  /// Creates a new [EventTargetState].
  /// [appsyncTarget] Parameters used when you are using the rule to invoke an AppSync GraphQL API mutation. Documented below. A maximum of 1 are allowed.
  /// [arn] The Amazon Resource Name (ARN) of the target.
  /// [batchTarget] Parameters used when you are using the rule to invoke an Amazon Batch Job. Documented below. A maximum of 1 are allowed.
  /// [deadLetterConfig] Parameters used when you are providing a dead letter config. Documented below. A maximum of 1 are allowed.
  /// [ecsTarget] Parameters used when you are using the rule to invoke Amazon ECS Task. Documented below. A maximum of 1 are allowed.
  /// [eventBusName] The name or ARN of the event bus to associate with the rule.
  /// [forceDestroy] Used to delete managed rules created by AWS. Defaults to `false`.
  /// [httpTarget] Parameters used when you are using the rule to invoke an API Gateway REST endpoint. Documented below. A maximum of 1 is allowed.
  /// [input] Valid JSON text passed to the target. Conflicts with `input_path` and `input_transformer`.
  /// [inputPath] The value of the [JSONPath](http://goessner.net/articles/JsonPath/) that is used for extracting part of the matched event when passing it to the target. Conflicts with `input` and `input_transformer`.
  /// [inputTransformer] Parameters used when you are providing a custom input to a target based on certain event data. Conflicts with `input` and `input_path`.
  /// [kinesisTarget] Parameters used when you are using the rule to invoke an Amazon Kinesis Stream. Documented below. A maximum of 1 are allowed.
  /// [redshiftTarget] Parameters used when you are using the rule to invoke an Amazon Redshift Statement. Documented below. A maximum of 1 are allowed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retryPolicy] Parameters used when you are providing retry policies. Documented below. A maximum of 1 are allowed.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if `ecs_target` is used or target in `arn` is EC2 instance, Kinesis data stream, Step Functions state machine, or Event Bus in different account or region.
  /// [rule] The name of the rule you want to add targets to.
  /// [runCommandTargets] Parameters used when you are using the rule to invoke Amazon EC2 Run Command. Documented below. A maximum of 5 are allowed.
  /// [sagemakerPipelineTarget] Parameters used when you are using the rule to invoke an Amazon SageMaker AI Pipeline. Documented below. A maximum of 1 are allowed.
  /// [sqsTarget] Parameters used when you are using the rule to invoke an Amazon SQS Queue. Documented below. A maximum of 1 are allowed.
  /// [targetId] The unique target assignment ID. If missing, will generate a random, unique id.
  EventTargetState({
    this.appsyncTarget,
    this.arn,
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
    this.rule,
    this.runCommandTargets,
    this.sagemakerPipelineTarget,
    this.sqsTarget,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appsyncTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetAppsyncTarget, Map<String, dynamic>>(appsyncTarget, (value) => value.toMap()),
      'arn': ?arn,
      'batchTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetBatchTarget, Map<String, dynamic>>(batchTarget, (value) => value.toMap()),
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<EventTargetDeadLetterConfig, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'ecsTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetEcsTarget, Map<String, dynamic>>(ecsTarget, (value) => value.toMap()),
      'eventBusName': ?eventBusName,
      'forceDestroy': ?forceDestroy,
      'httpTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetHttpTarget, Map<String, dynamic>>(httpTarget, (value) => value.toMap()),
      'input': ?input,
      'inputPath': ?inputPath,
      'inputTransformer': ?pulumi.Input.mapOptionalInputValue<EventTargetInputTransformer, Map<String, dynamic>>(inputTransformer, (value) => value.toMap()),
      'kinesisTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetKinesisTarget, Map<String, dynamic>>(kinesisTarget, (value) => value.toMap()),
      'redshiftTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetRedshiftTarget, Map<String, dynamic>>(redshiftTarget, (value) => value.toMap()),
      'region': ?region,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<EventTargetRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'rule': ?rule,
      'runCommandTargets': ?pulumi.Input.mapOptionalInputValue<List<EventTargetRunCommandTarget>, List<Map<String, dynamic>>>(runCommandTargets, (value) => pulumi.Input.encodeList<EventTargetRunCommandTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sagemakerPipelineTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetSagemakerPipelineTarget, Map<String, dynamic>>(sagemakerPipelineTarget, (value) => value.toMap()),
      'sqsTarget': ?pulumi.Input.mapOptionalInputValue<EventTargetSqsTarget, Map<String, dynamic>>(sqsTarget, (value) => value.toMap()),
      'targetId': ?targetId,
    };
  }

  factory EventTargetState.fromMap(Map<String, dynamic> map) {
    return EventTargetState(
      appsyncTarget: map['appsyncTarget'] == null ? null : (EventTargetAppsyncTarget.fromMap((map['appsyncTarget'] as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      batchTarget: map['batchTarget'] == null ? null : (EventTargetBatchTarget.fromMap((map['batchTarget'] as Map).cast<String, dynamic>())).input(),
      deadLetterConfig: map['deadLetterConfig'] == null ? null : (EventTargetDeadLetterConfig.fromMap((map['deadLetterConfig'] as Map).cast<String, dynamic>())).input(),
      ecsTarget: map['ecsTarget'] == null ? null : (EventTargetEcsTarget.fromMap((map['ecsTarget'] as Map).cast<String, dynamic>())).input(),
      eventBusName: map['eventBusName'] == null ? null : (map['eventBusName'] as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      httpTarget: map['httpTarget'] == null ? null : (EventTargetHttpTarget.fromMap((map['httpTarget'] as Map).cast<String, dynamic>())).input(),
      input: map['input'] == null ? null : (map['input'] as String).input(),
      inputPath: map['inputPath'] == null ? null : (map['inputPath'] as String).input(),
      inputTransformer: map['inputTransformer'] == null ? null : (EventTargetInputTransformer.fromMap((map['inputTransformer'] as Map).cast<String, dynamic>())).input(),
      kinesisTarget: map['kinesisTarget'] == null ? null : (EventTargetKinesisTarget.fromMap((map['kinesisTarget'] as Map).cast<String, dynamic>())).input(),
      redshiftTarget: map['redshiftTarget'] == null ? null : (EventTargetRedshiftTarget.fromMap((map['redshiftTarget'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (EventTargetRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      rule: map['rule'] == null ? null : (map['rule'] as String).input(),
      runCommandTargets: map['runCommandTargets'] == null ? null : (pulumi.Input.decodeList<EventTargetRunCommandTarget>(map['runCommandTargets'], (value) => EventTargetRunCommandTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sagemakerPipelineTarget: map['sagemakerPipelineTarget'] == null ? null : (EventTargetSagemakerPipelineTarget.fromMap((map['sagemakerPipelineTarget'] as Map).cast<String, dynamic>())).input(),
      sqsTarget: map['sqsTarget'] == null ? null : (EventTargetSqsTarget.fromMap((map['sqsTarget'] as Map).cast<String, dynamic>())).input(),
      targetId: map['targetId'] == null ? null : (map['targetId'] as String).input(),
    );
  }
}

