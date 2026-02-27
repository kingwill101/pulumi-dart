// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EventRule.
class EventRuleNotificationsArgs {
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

  EventRuleNotificationsArgs({
    this.eventPattern,
    required this.eventType,
    required this.notificationConfigurationArn,
    required this.regions,
    required this.source,
  });

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

  factory EventRuleNotificationsArgs.fromMap(Map<String, dynamic> map) {
    return EventRuleNotificationsArgs(
      eventPattern: pulumi.Input.asOptionalInput<String>(map['eventPattern']),
      eventType: pulumi.Input.asInput<String>(map['eventType']),
      notificationConfigurationArn:
          pulumi.Input.asInput<String>(map['notificationConfigurationArn']),
      regions: pulumi.Input.asInput<List<String>>(map['regions']),
      source: pulumi.Input.asInput<String>(map['source']),
    );
  }
}
