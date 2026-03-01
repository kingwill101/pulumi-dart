// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventRule resources.
class EventRuleState {
  /// ARN of the Event Rule.
  final pulumi.Input<String>? arn;
  /// JSON string defining the event pattern to match. Maximum length is 4096 characters.
  final pulumi.Input<String>? eventPattern;
  /// Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  final pulumi.Input<String>? eventType;
  /// ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  final pulumi.Input<String>? notificationConfigurationArn;
  /// Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  final pulumi.Input<List<String>>? regions;
  /// Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? source;

  /// Creates a new [EventRuleState].
  /// [arn] ARN of the Event Rule.
  /// [eventPattern] JSON string defining the event pattern to match. Maximum length is 4096 characters.
  /// [eventType] Type of event to match. Must be between 1 and 128 characters, and match the pattern `([a-zA-Z0-9 \-\(\)])+`.
  /// [notificationConfigurationArn] ARN of the notification configuration to associate with this event rule. Must match the pattern `arn:aws:notifications::[0-9]{12}:configuration/[a-z0-9]{27}`.
  /// [regions] Set of AWS regions where the event rule will be applied. Each region must be between 2 and 25 characters, and match the pattern `([a-z]{1,2})-([a-z]{1,15}-)+([0-9])`.
  /// [source] Source of the event. Must be between 1 and 36 characters, and match the pattern `aws.([a-z0-9\-])+`.
  EventRuleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? eventPattern,
    pulumi.Output<String>? eventType,
    pulumi.Output<String>? notificationConfigurationArn,
    pulumi.Output<List<String>>? regions,
    pulumi.Output<String>? source,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      eventPattern = pulumi.Input.asOptionalInput<String>(eventPattern),
      eventType = pulumi.Input.asOptionalInput<String>(eventType),
      notificationConfigurationArn = pulumi.Input.asOptionalInput<String>(notificationConfigurationArn),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      source = pulumi.Input.asOptionalInput<String>(source);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      eventPattern: map['eventPattern'] == null ? null : pulumi.Output.create<String>(map['eventPattern'] as String),
      eventType: map['eventType'] == null ? null : pulumi.Output.create<String>(map['eventType'] as String),
      notificationConfigurationArn: map['notificationConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['notificationConfigurationArn'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<String>>((map['regions'] as List).cast<String>()),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

