// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notifications_channel_association_channel_association_args_doc}
/// The set of arguments for ChannelAssociation.
/// {@endtemplate}
/// {@macro pulumi_notifications_channel_association_channel_association_args_doc}
class ChannelAssociationArgs {
  /// ARN of the channel to associate with the notification configuration. Must match pattern `^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$`.
  final pulumi.Input<String> arn;
  /// ARN of the notification configuration to associate the channel with.
  final pulumi.Input<String> notificationConfigurationArn;

  /// Creates a new [ChannelAssociationArgs].
  /// [arn] ARN of the channel to associate with the notification configuration. Must match pattern `^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$`.
  /// [notificationConfigurationArn] ARN of the notification configuration to associate the channel with.
  const ChannelAssociationArgs({
    required this.arn,
    required this.notificationConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'notificationConfigurationArn': notificationConfigurationArn,
    };
  }

  factory ChannelAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ChannelAssociationArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      notificationConfigurationArn: pulumi.Input.fromValue(map['notificationConfigurationArn'] as String),
    );
  }
}
