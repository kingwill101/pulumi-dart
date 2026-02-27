// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ChannelAssociation.
class ChannelAssociationArgs {
  /// ARN of the channel to associate with the notification configuration. Must match pattern `^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$`.
  final pulumi.Input<String> arn;

  /// ARN of the notification configuration to associate the channel with.
  final pulumi.Input<String> notificationConfigurationArn;

  ChannelAssociationArgs({
    required this.arn,
    required this.notificationConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['notificationConfigurationArn'] = notificationConfigurationArn;
    return map;
  }

  factory ChannelAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ChannelAssociationArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      notificationConfigurationArn:
          pulumi.Input.asInput<String>(map['notificationConfigurationArn']),
    );
  }
}
