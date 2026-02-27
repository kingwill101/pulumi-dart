import 'package:pulumi/pulumi.dart';
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
import 'event_target_args.dart';

/// Provides an EventBridge Target resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// > **Note:** In order to be able to have your AWS Lambda function or
/// SNS topic invoked by an EventBridge rule, you must set up the right permissions
/// using `aws.lambda.Permission`
/// or `aws.sns.TopicPolicy`.
/// More info [here](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-use-resource-based.html).
///
/// ## Example Usage
///
/// ### Kinesis Usage
///
///
///
/// ### SSM Document Usage
///
///
///
/// ### RunCommand Usage
///
///
///
/// ### ECS Run Task with Role and Task Override Usage
///
///
///
/// ### API Gateway target
///
///
///
/// ### Cross-Account Event Bus target
///
///
///
/// ### Input Transformer Usage - JSON Object
///
///
///
/// ### Input Transformer Usage - Simple String
///
///
///
/// ### Cloudwatch Log Group Usage
///
///
///
/// ### AppSync Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `event_bus_name` (String) Event bus name for the target.
/// * `rule` (String) Rule name for the target.
/// * `target_id` (String) Target ID.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EventBridge Targets using `event_bus_name/rule-name/target-id` (if you omit `event_bus_name`, the `default` event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventTarget:EventTarget example rule-name/target-id
/// ```
class EventTarget extends CustomResource {
  /// Parameters used when you are using the rule to invoke an AppSync GraphQL API mutation. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetAppsyncTarget?> appsyncTarget;

  /// The Amazon Resource Name (ARN) of the target.
  late final Output<String> arn;

  /// Parameters used when you are using the rule to invoke an Amazon Batch Job. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetBatchTarget?> batchTarget;

  /// Parameters used when you are providing a dead letter config. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetDeadLetterConfig?> deadLetterConfig;

  /// Parameters used when you are using the rule to invoke Amazon ECS Task. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetEcsTarget?> ecsTarget;

  /// The name or ARN of the event bus to associate with the rule.
  /// If you omit this, the `default` event bus is used.
  late final Output<String?> eventBusName;

  /// Used to delete managed rules created by AWS. Defaults to `false`.
  late final Output<bool?> forceDestroy;

  /// Parameters used when you are using the rule to invoke an API Gateway REST endpoint. Documented below. A maximum of 1 is allowed.
  late final Output<EventTargetHttpTarget?> httpTarget;

  /// Valid JSON text passed to the target. Conflicts with `input_path` and `input_transformer`.
  late final Output<String?> input;

  /// The value of the [JSONPath](http://goessner.net/articles/JsonPath/) that is used for extracting part of the matched event when passing it to the target. Conflicts with `input` and `input_transformer`.
  late final Output<String?> inputPath;

  /// Parameters used when you are providing a custom input to a target based on certain event data. Conflicts with `input` and `input_path`.
  late final Output<EventTargetInputTransformer?> inputTransformer;

  /// Parameters used when you are using the rule to invoke an Amazon Kinesis Stream. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetKinesisTarget?> kinesisTarget;

  /// Parameters used when you are using the rule to invoke an Amazon Redshift Statement. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetRedshiftTarget?> redshiftTarget;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Parameters used when you are providing retry policies. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetRetryPolicy?> retryPolicy;

  /// The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if `ecs_target` is used or target in `arn` is EC2 instance, Kinesis data stream, Step Functions state machine, or Event Bus in different account or region.
  late final Output<String?> roleArn;

  /// The name of the rule you want to add targets to.
  ///
  /// The following arguments are optional:
  late final Output<String> rule;

  /// Parameters used when you are using the rule to invoke Amazon EC2 Run Command. Documented below. A maximum of 5 are allowed.
  late final Output<List<EventTargetRunCommandTarget>?> runCommandTargets;

  /// Parameters used when you are using the rule to invoke an Amazon SageMaker AI Pipeline. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetSagemakerPipelineTarget?>
      sagemakerPipelineTarget;

  /// Parameters used when you are using the rule to invoke an Amazon SQS Queue. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetSqsTarget?> sqsTarget;

  /// The unique target assignment ID. If missing, will generate a random, unique id.
  late final Output<String> targetId;

  EventTarget(
    String name, {
    EventTargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventTarget:EventTarget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appsyncTarget =
        registerOutput<EventTargetAppsyncTarget?>('appsyncTarget');
    this.arn = registerOutput<String>('arn');
    this.batchTarget = registerOutput<EventTargetBatchTarget?>('batchTarget');
    this.deadLetterConfig =
        registerOutput<EventTargetDeadLetterConfig?>('deadLetterConfig');
    this.ecsTarget = registerOutput<EventTargetEcsTarget?>('ecsTarget');
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.httpTarget = registerOutput<EventTargetHttpTarget?>('httpTarget');
    this.input = registerOutput<String?>('input');
    this.inputPath = registerOutput<String?>('inputPath');
    this.inputTransformer =
        registerOutput<EventTargetInputTransformer?>('inputTransformer');
    this.kinesisTarget =
        registerOutput<EventTargetKinesisTarget?>('kinesisTarget');
    this.redshiftTarget =
        registerOutput<EventTargetRedshiftTarget?>('redshiftTarget');
    this.region = registerOutput<String>('region');
    this.retryPolicy = registerOutput<EventTargetRetryPolicy?>('retryPolicy');
    this.roleArn = registerOutput<String?>('roleArn');
    this.rule = registerOutput<String>('rule');
    this.runCommandTargets =
        registerOutput<List<EventTargetRunCommandTarget>?>('runCommandTargets');
    this.sagemakerPipelineTarget =
        registerOutput<EventTargetSagemakerPipelineTarget?>(
            'sagemakerPipelineTarget');
    this.sqsTarget = registerOutput<EventTargetSqsTarget?>('sqsTarget');
    this.targetId = registerOutput<String>('targetId');
  }
}
