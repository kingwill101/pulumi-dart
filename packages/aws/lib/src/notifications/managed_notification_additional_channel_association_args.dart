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
    required String channelArn,
    required String managedNotificationArn,
  })  : channelArn = pulumi.Input.asInput<String>(channelArn),
        managedNotificationArn =
            pulumi.Input.asInput<String>(managedNotificationArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelArn'] = channelArn;
    map['managedNotificationArn'] = managedNotificationArn;
    return map;
  }

  factory ManagedNotificationAdditionalChannelAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagedNotificationAdditionalChannelAssociationArgs(
      channelArn: map['channelArn'] as String,
      managedNotificationArn: map['managedNotificationArn'] as String,
    );
  }
}
