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
  const EventRuleArgs({
    this.eventPattern,
    required this.eventType,
    required this.notificationConfigurationArn,
    required this.regions,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventPattern': ?eventPattern,
      'eventType': eventType,
      'notificationConfigurationArn': notificationConfigurationArn,
      'regions': regions,
      'source': source,
    };
  }

  factory EventRuleArgs.fromMap(Map<String, dynamic> map) {
    return EventRuleArgs(
      eventPattern: (() { final guardedValue = map['eventPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      notificationConfigurationArn: pulumi.Input.fromValue(map['notificationConfigurationArn'] as String),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

