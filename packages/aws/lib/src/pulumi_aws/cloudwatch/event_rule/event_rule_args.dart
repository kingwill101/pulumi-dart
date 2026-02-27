// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EventRule.
class EventRuleArgs {
  /// The description of the rule.
  final pulumi.Input<String>? description;

  /// The name or ARN of the event bus to associate with this rule. If you omit this, the `default` event bus is used.
  final pulumi.Input<String>? eventBusName;

  /// The event pattern described a JSON object. At least one of `schedule_expression` or `event_pattern` is required. See full documentation of [Events and Event Patterns in EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html) for details. **Note**: The event pattern size is 2048 by default but it is adjustable up to 4096 characters by submitting a service quota increase request. See [Amazon EventBridge quotas](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-quota.html) for details.
  final pulumi.Input<String>? eventPattern;

  /// Used to delete managed rules created by AWS. Defaults to `false`.
  final pulumi.Input<bool>? forceDestroy;

  /// Whether the rule should be enabled. Defaults to `true`. Conflicts with `state`.
  final pulumi.Input<bool>? isEnabled;

  /// The name of the rule. If omitted, this provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. **Note**: Due to the length of the generated suffix, must be 38 characters or less.
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) associated with the role that is used for target invocation.
  final pulumi.Input<String>? roleArn;

  /// The scheduling expression. For example, `cron(0 20 * * ? *)` or `rate(5 minutes)`. At least one of `schedule_expression` or `event_pattern` is required. Can only be used on the default event bus. For more information, refer to the AWS documentation [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  final pulumi.Input<String>? scheduleExpression;

  /// State of the rule. Valid values are `DISABLED`, `ENABLED`, and `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. When state is `ENABLED`, the rule is enabled for all events except those delivered by CloudTrail. To also enable the rule for events delivered by CloudTrail, set `state` to `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. Defaults to `ENABLED`. Conflicts with `is_enabled`.
  final pulumi.Input<String>? state;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** The rule state `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS` cannot be used in conjunction with the `schedule_expression` argument.
  final pulumi.Input<Map<String, String>>? tags;

  EventRuleArgs({
    this.description,
    this.eventBusName,
    this.eventPattern,
    this.forceDestroy,
    this.isEnabled,
    this.name,
    this.namePrefix,
    this.region,
    this.roleArn,
    this.scheduleExpression,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final eventBusNameValue = eventBusName;
    if (eventBusNameValue != null) {
      map['eventBusName'] = eventBusNameValue;
    }
    final eventPatternValue = eventPattern;
    if (eventPatternValue != null) {
      map['eventPattern'] = eventPatternValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final isEnabledValue = isEnabled;
    if (isEnabledValue != null) {
      map['isEnabled'] = isEnabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final scheduleExpressionValue = scheduleExpression;
    if (scheduleExpressionValue != null) {
      map['scheduleExpression'] = scheduleExpressionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EventRuleArgs.fromMap(Map<String, dynamic> map) {
    return EventRuleArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      eventBusName: pulumi.Input.asOptionalInput<String>(map['eventBusName']),
      eventPattern: pulumi.Input.asOptionalInput<String>(map['eventPattern']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      isEnabled: pulumi.Input.asOptionalInput<bool>(map['isEnabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      scheduleExpression:
          pulumi.Input.asOptionalInput<String>(map['scheduleExpression']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
