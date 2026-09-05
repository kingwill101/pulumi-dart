// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventRule resources.
class EventRuleState {
  /// ARN of the Event Rule.
  final pulumi.Input<String?>? arn;
  /// JSON string defining the event pattern to match. Maximum length is 4096 characters.
  final pulumi.Input<String?>? eventPattern;
  /// Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  final pulumi.Input<String?>? eventType;
  /// ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  final pulumi.Input<String?>? notificationConfigurationArn;
  /// Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  final pulumi.Input<List<String>?>? regions;
  /// Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? source;

  /// Creates a new [EventRuleState].
  /// [arn] ARN of the Event Rule.
  /// [eventPattern] JSON string defining the event pattern to match. Maximum length is 4096 characters.
  /// [eventType] Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  /// [notificationConfigurationArn] ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  /// [regions] Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  /// [source] Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  const EventRuleState({
    this.arn,
    this.eventPattern,
    this.eventType,
    this.notificationConfigurationArn,
    this.regions,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'eventPattern': ?eventPattern,
      'eventType': ?eventType,
      'notificationConfigurationArn': ?notificationConfigurationArn,
      'regions': ?regions,
      'source': ?source,
    };
  }

  factory EventRuleState.fromMap(Map<String, dynamic> map) {
    return EventRuleState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventPattern: (() { final guardedValue = map['eventPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfigurationArn: (() { final guardedValue = map['notificationConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
