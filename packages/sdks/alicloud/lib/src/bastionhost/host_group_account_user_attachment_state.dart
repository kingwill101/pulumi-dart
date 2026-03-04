// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostGroupAccountUserAttachment resources.
class HostGroupAccountUserAttachmentState {
  /// A list names of the host account.
  final pulumi.Input<List<String>>? hostAccountNames;

  /// The ID of the host group.
  final pulumi.Input<String>? hostGroupId;

  /// The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  final pulumi.Input<String>? instanceId;

  /// The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String>? userId;

  /// Creates a new [HostGroupAccountUserAttachmentState].
  /// [hostAccountNames] A list names of the host account.
  /// [hostGroupId] The ID of the host group.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  /// [userId] The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  HostGroupAccountUserAttachmentState({
    this.hostAccountNames,
    this.hostGroupId,
    this.instanceId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountNames': ?hostAccountNames,
      'hostGroupId': ?hostGroupId,
      'instanceId': ?instanceId,
      'userId': ?userId,
    };
  }

  factory HostGroupAccountUserAttachmentState.fromMap(
    Map<String, dynamic> map,
  ) {
    return HostGroupAccountUserAttachmentState(
      hostAccountNames: (() {
        final guardedValue = map['hostAccountNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hostGroupId: (() {
        final guardedValue = map['hostGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
