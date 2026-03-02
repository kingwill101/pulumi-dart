// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostGroupAccountUserGroupAttachment resources.
class HostGroupAccountUserGroupAttachmentState {
  /// A list names of the host account.
  final pulumi.Input<List<String>>? hostAccountNames;
  /// The ID of the host group.
  final pulumi.Input<String>? hostGroupId;
  /// The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  final pulumi.Input<String>? instanceId;
  /// The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String>? userGroupId;

  /// Creates a new [HostGroupAccountUserGroupAttachmentState].
  /// [hostAccountNames] A list names of the host account.
  /// [hostGroupId] The ID of the host group.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  /// [userGroupId] The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  HostGroupAccountUserGroupAttachmentState({
    this.hostAccountNames,
    this.hostGroupId,
    this.instanceId,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountNames': ?hostAccountNames,
      'hostGroupId': ?hostGroupId,
      'instanceId': ?instanceId,
      'userGroupId': ?userGroupId,
    };
  }

  factory HostGroupAccountUserGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return HostGroupAccountUserGroupAttachmentState(
      hostAccountNames: map['hostAccountNames'] == null ? null : ((map['hostAccountNames'] as List).cast<String>()).input(),
      hostGroupId: map['hostGroupId'] == null ? null : (map['hostGroupId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      userGroupId: map['userGroupId'] == null ? null : (map['userGroupId'] as String).input(),
    );
  }
}

