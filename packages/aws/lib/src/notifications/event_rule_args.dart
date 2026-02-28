// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notifications_event_rule_event_rule_args_doc}
/// The set of arguments for EventRule.
/// {@endtemplate}
/// {@macro pulumi_notifications_event_rule_event_rule_args_doc}
class EventRuleArgs {
  /// JSON string defining the event pattern to match. Maximum length is 4096 characters.
  final pulumi.Input<String>? eventPattern;

  /// Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  final pulumi.Input<String> eventType;

  /// ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  final pulumi.Input<String> notificationConfigurationArn;

  /// Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  final pulumi.Input<List<String>> regions;

  /// Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> source;

  /// Creates a new [EventRuleArgs].
  /// [eventPattern] JSON string defining the event pattern to match. Maximum length is 4096 characters.
  /// [eventType] Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  /// [notificationConfigurationArn] ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  /// [regions] Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  /// [source] Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  EventRuleArgs({
    String? eventPattern,
    required String eventType,
    required String notificationConfigurationArn,
    required List<String> regions,
    required String source,
  })  : eventPattern = pulumi.Input.asOptionalInput<String>(eventPattern),
        eventType = pulumi.Input.asInput<String>(eventType),
        notificationConfigurationArn =
            pulumi.Input.asInput<String>(notificationConfigurationArn),
        regions = pulumi.Input.asInput<List<String>>(regions),
        source = pulumi.Input.asInput<String>(source);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventPatternValue = eventPattern;
    if (eventPatternValue != null) {
      map['eventPattern'] = eventPatternValue;
    }
    map['eventType'] = eventType;
    map['notificationConfigurationArn'] = notificationConfigurationArn;
    map['regions'] = regions;
    map['source'] = source;
    return map;
  }

  factory EventRuleArgs.fromMap(Map<String, dynamic> map) {
    return EventRuleArgs(
      eventPattern:
          map['eventPattern'] == null ? null : map['eventPattern'] as String,
      eventType: map['eventType'] as String,
      notificationConfigurationArn:
          map['notificationConfigurationArn'] as String,
      regions: (map['regions'] as List).cast<String>(),
      source: map['source'] as String,
    );
  }
}
