// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedNotificationAdditionalChannelAssociation resources.
class ManagedNotificationAdditionalChannelAssociationState {
  /// ARN of the channel to associate with the managed notification.
  final pulumi.Input<String>? channelArn;

  /// ARN of the managed notification to associate the channel with.
  final pulumi.Input<String>? managedNotificationArn;

  /// Creates a new [ManagedNotificationAdditionalChannelAssociationState].
  /// [channelArn] ARN of the channel to associate with the managed notification.
  /// [managedNotificationArn] ARN of the managed notification to associate the channel with.
  ManagedNotificationAdditionalChannelAssociationState({
    this.channelArn,
    this.managedNotificationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelArn': ?channelArn,
      'managedNotificationArn': ?managedNotificationArn,
    };
  }

  factory ManagedNotificationAdditionalChannelAssociationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedNotificationAdditionalChannelAssociationState(
      channelArn: (() {
        final guardedValue = map['channelArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedNotificationArn: (() {
        final guardedValue = map['managedNotificationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
