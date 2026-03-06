// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostAccountUserGroupAttachment resources.
class HostAccountUserGroupAttachmentState {
  /// A list IDs of the host account.
  final pulumi.Input<List<String>>? hostAccountIds;
  /// The ID of the host.
  final pulumi.Input<String>? hostId;
  /// The ID of the Bastionhost instance where you want to authorize the user group to manage the specified hosts and host accounts.
  final pulumi.Input<String>? instanceId;
  /// The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String>? userGroupId;

  /// Creates a new [HostAccountUserGroupAttachmentState].
  /// [hostAccountIds] A list IDs of the host account.
  /// [hostId] The ID of the host.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user group to manage the specified hosts and host accounts.
  /// [userGroupId] The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  const HostAccountUserGroupAttachmentState({
    this.hostAccountIds,
    this.hostId,
    this.instanceId,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountIds': ?hostAccountIds,
      'hostId': ?hostId,
      'instanceId': ?instanceId,
      'userGroupId': ?userGroupId,
    };
  }

  factory HostAccountUserGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return HostAccountUserGroupAttachmentState(
      hostAccountIds: (() { final guardedValue = map['hostAccountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

