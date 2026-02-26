// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ManagedNotificationAdditionalChannelAssociation.
class ManagedNotificationAdditionalChannelAssociationArgs {
  /// ARN of the channel to associate with the managed notification.
  final Input<String> channelArn;

  /// ARN of the managed notification to associate the channel with.
  final Input<String> managedNotificationArn;

  ManagedNotificationAdditionalChannelAssociationArgs({
    required this.channelArn,
    required this.managedNotificationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelArn'] = channelArn;
    map['managedNotificationArn'] = managedNotificationArn;
    return map;
  }

  factory ManagedNotificationAdditionalChannelAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagedNotificationAdditionalChannelAssociationArgs(
      channelArn: Input.asInput<String>(map['channelArn']),
      managedNotificationArn:
          Input.asInput<String>(map['managedNotificationArn']),
    );
  }
}
