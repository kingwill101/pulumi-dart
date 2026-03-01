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
  HostAccountUserGroupAttachmentState({
    pulumi.Output<List<String>>? hostAccountIds,
    pulumi.Output<String>? hostId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? userGroupId,
  }) :
      hostAccountIds = pulumi.Input.asOptionalInput<List<String>>(hostAccountIds),
      hostId = pulumi.Input.asOptionalInput<String>(hostId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId);

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
      hostAccountIds: map['hostAccountIds'] == null ? null : pulumi.Output.create<List<String>>((map['hostAccountIds'] as List).cast<String>()),
      hostId: map['hostId'] == null ? null : pulumi.Output.create<String>(map['hostId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      userGroupId: map['userGroupId'] == null ? null : pulumi.Output.create<String>(map['userGroupId'] as String),
    );
  }
}

