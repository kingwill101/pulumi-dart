import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_rule_args.dart';

/// Provides an EventBridge Rule resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the EventBridge rule.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `event_bus_name` (String) Name of the event bus.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EventBridge Rules using the `event_bus_name/rule_name` (if you omit `event_bus_name`, the `default` event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventRule:EventRule example example-event-bus/capture-console-sign-in
/// ```
class EventRule extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the rule.
  late final pulumi.Output<String> arn;

  /// The description of the rule.
  late final pulumi.Output<String?> description;

  /// The name or ARN of the event bus to associate with this rule. If you omit this, the `default` event bus is used.
  late final pulumi.Output<String?> eventBusName;

  /// The event pattern described a JSON object. At least one of `schedule_expression` or `event_pattern` is required. See full documentation of [Events and Event Patterns in EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html) for details. **Note**: The event pattern size is 2048 by default but it is adjustable up to 4096 characters by submitting a service quota increase request. See [Amazon EventBridge quotas](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-quota.html) for details.
  late final pulumi.Output<String?> eventPattern;

  /// Used to delete managed rules created by AWS. Defaults to `false`.
  late final pulumi.Output<bool?> forceDestroy;

  /// Whether the rule should be enabled. Defaults to `true`. Conflicts with `state`.
  late final pulumi.Output<bool?> isEnabled;

  /// The name of the rule. If omitted, this provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. **Note**: Due to the length of the generated suffix, must be 38 characters or less.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) associated with the role that is used for target invocation.
  late final pulumi.Output<String?> roleArn;

  /// The scheduling expression. For example, `cron(0 20 * * ? *)` or `rate(5 minutes)`. At least one of `schedule_expression` or `event_pattern` is required. Can only be used on the default event bus. For more information, refer to the AWS documentation [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  late final pulumi.Output<String?> scheduleExpression;

  /// State of the rule. Valid values are `DISABLED`, `ENABLED`, and `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. When state is `ENABLED`, the rule is enabled for all events except those delivered by CloudTrail. To also enable the rule for events delivered by CloudTrail, set `state` to `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. Defaults to `ENABLED`. Conflicts with `is_enabled`.
  late final pulumi.Output<String?> state;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** The rule state `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS` cannot be used in conjunction with the `schedule_expression` argument.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  EventRule(
    String name, {
    EventRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventRule:EventRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.eventPattern = registerOutput<String?>('eventPattern');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.scheduleExpression = registerOutput<String?>('scheduleExpression');
    this.state = registerOutput<String?>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
