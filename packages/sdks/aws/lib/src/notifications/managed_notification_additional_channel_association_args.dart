// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notifications_managed_notification_additional_channel_association_managed_notification_additional_channel_association_args_doc}
/// The set of arguments for ManagedNotificationAdditionalChannelAssociation.
/// {@endtemplate}
/// {@macro pulumi_notifications_managed_notification_additional_channel_association_managed_notification_additional_channel_association_args_doc}
class ManagedNotificationAdditionalChannelAssociationArgs {
  /// ARN of the channel to associate with the managed notification.
  final pulumi.Input<String> channelArn;
  /// ARN of the managed notification to associate the channel with.
  final pulumi.Input<String> managedNotificationArn;

  /// Creates a new [ManagedNotificationAdditionalChannelAssociationArgs].
  /// [channelArn] ARN of the channel to associate with the managed notification.
  /// [managedNotificationArn] ARN of the managed notification to associate the channel with.
  ManagedNotificationAdditionalChannelAssociationArgs({
    required this.channelArn,
    required this.managedNotificationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelArn': channelArn,
      'managedNotificationArn': managedNotificationArn,
    };
  }

  factory ManagedNotificationAdditionalChannelAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNotificationAdditionalChannelAssociationArgs(
      channelArn: pulumi.Input.fromValue(map['channelArn'] as String),
      managedNotificationArn: pulumi.Input.fromValue(map['managedNotificationArn'] as String),
    );
  }
}

