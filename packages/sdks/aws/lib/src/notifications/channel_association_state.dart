// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChannelAssociation resources.
class ChannelAssociationState {
  /// ARN of the channel to associate with the notification configuration. Must match pattern `^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$`.
  final pulumi.Input<String>? arn;
  /// ARN of the notification configuration to associate the channel with.
  final pulumi.Input<String>? notificationConfigurationArn;

  /// Creates a new [ChannelAssociationState].
  /// [arn] ARN of the channel to associate with the notification configuration. Must match pattern `^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$`.
  /// [notificationConfigurationArn] ARN of the notification configuration to associate the channel with.
  ChannelAssociationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? notificationConfigurationArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      notificationConfigurationArn = pulumi.Input.asOptionalInput<String>(notificationConfigurationArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'notificationConfigurationArn': ?notificationConfigurationArn,
    };
  }

  factory ChannelAssociationState.fromMap(Map<String, dynamic> map) {
    return ChannelAssociationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      notificationConfigurationArn: map['notificationConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['notificationConfigurationArn'] as String),
    );
  }
}

