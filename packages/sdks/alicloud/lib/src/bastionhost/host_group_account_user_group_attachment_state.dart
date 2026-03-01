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
    pulumi.Output<List<String>>? hostAccountNames,
    pulumi.Output<String>? hostGroupId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? userGroupId,
  }) :
      hostAccountNames = pulumi.Input.asOptionalInput<List<String>>(hostAccountNames),
      hostGroupId = pulumi.Input.asOptionalInput<String>(hostGroupId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId);

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
      hostAccountNames: map['hostAccountNames'] == null ? null : pulumi.Output.create<List<String>>((map['hostAccountNames'] as List).cast<String>()),
      hostGroupId: map['hostGroupId'] == null ? null : pulumi.Output.create<String>(map['hostGroupId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      userGroupId: map['userGroupId'] == null ? null : pulumi.Output.create<String>(map['userGroupId'] as String),
    );
  }
}

