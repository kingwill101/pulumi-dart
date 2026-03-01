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
    pulumi.Output<String>? channelArn,
    pulumi.Output<String>? managedNotificationArn,
  }) :
      channelArn = pulumi.Input.asOptionalInput<String>(channelArn),
      managedNotificationArn = pulumi.Input.asOptionalInput<String>(managedNotificationArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelArn': ?channelArn,
      'managedNotificationArn': ?managedNotificationArn,
    };
  }

  factory ManagedNotificationAdditionalChannelAssociationState.fromMap(Map<String, dynamic> map) {
    return ManagedNotificationAdditionalChannelAssociationState(
      channelArn: map['channelArn'] == null ? null : pulumi.Output.create<String>(map['channelArn'] as String),
      managedNotificationArn: map['managedNotificationArn'] == null ? null : pulumi.Output.create<String>(map['managedNotificationArn'] as String),
    );
  }
}

