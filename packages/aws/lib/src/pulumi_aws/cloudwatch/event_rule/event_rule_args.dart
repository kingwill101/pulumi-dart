// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EventRule.
class EventRuleArgs {
  /// The description of the rule.
  final Input<String>? description;

  /// The name or ARN of the event bus to associate with this rule. If you omit this, the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus is used.
  final Input<String>? eventBusName;

  /// The event pattern described a JSON object. At least one of <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> or <span pulumi-lang-nodejs="`eventPattern`" pulumi-lang-dotnet="`EventPattern`" pulumi-lang-go="`eventPattern`" pulumi-lang-python="`event_pattern`" pulumi-lang-yaml="`eventPattern`" pulumi-lang-java="`eventPattern`">`event_pattern`</span> is required. See full documentation of [Events and Event Patterns in EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html) for details. **Note**: The event pattern size is 2048 by default but it is adjustable up to 4096 characters by submitting a service quota increase request. See [Amazon EventBridge quotas](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-quota.html) for details.
  final Input<String>? eventPattern;

  /// Used to delete managed rules created by AWS. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? forceDestroy;

  /// Whether the rule should be enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Conflicts with <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span>.
  final Input<bool>? isEnabled;

  /// The name of the rule. If omitted, this provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. **Note**: Due to the length of the generated suffix, must be 38 characters or less.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) associated with the role that is used for target invocation.
  final Input<String>? roleArn;

  /// The scheduling expression. For example, `cron(0 20 * * ? *)` or `rate(5 minutes)`. At least one of <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> or <span pulumi-lang-nodejs="`eventPattern`" pulumi-lang-dotnet="`EventPattern`" pulumi-lang-go="`eventPattern`" pulumi-lang-python="`event_pattern`" pulumi-lang-yaml="`eventPattern`" pulumi-lang-java="`eventPattern`">`event_pattern`</span> is required. Can only be used on the default event bus. For more information, refer to the AWS documentation [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  final Input<String>? scheduleExpression;

  /// State of the rule. Valid values are `DISABLED`, `ENABLED`, and `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. When state is `ENABLED`, the rule is enabled for all events except those delivered by CloudTrail. To also enable the rule for events delivered by CloudTrail, set <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> to `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. Defaults to `ENABLED`. Conflicts with <span pulumi-lang-nodejs="`isEnabled`" pulumi-lang-dotnet="`IsEnabled`" pulumi-lang-go="`isEnabled`" pulumi-lang-python="`is_enabled`" pulumi-lang-yaml="`isEnabled`" pulumi-lang-java="`isEnabled`">`is_enabled`</span>.
  final Input<String>? state;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** The rule state `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS` cannot be used in conjunction with the <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> argument.
  final Input<Map<String, String>>? tags;

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
      description: Input.asOptionalInput<String>(map['description']),
      eventBusName: Input.asOptionalInput<String>(map['eventBusName']),
      eventPattern: Input.asOptionalInput<String>(map['eventPattern']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      isEnabled: Input.asOptionalInput<bool>(map['isEnabled']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      scheduleExpression:
          Input.asOptionalInput<String>(map['scheduleExpression']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
