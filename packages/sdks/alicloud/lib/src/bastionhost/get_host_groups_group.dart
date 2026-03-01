// ignore_for_file: unused_element, unnecessary_cast


class GetHostGroupsGroup {
  /// Specify the New Host Group of Notes, Supports up to 500 Characters.
  final String comment;
  /// Host Group ID.
  final String hostGroupId;
  /// Specify the New Host Group Name, Supports up to 128 Characters.
  final String hostGroupName;
  /// The ID of the Host Group.
  final String id;
  /// Specify the New Host Group Where the Bastion Host ID of.
  final String instanceId;

  /// Creates a new [GetHostGroupsGroup].
  /// [comment] Specify the New Host Group of Notes, Supports up to 500 Characters.
  /// [hostGroupId] Host Group ID.
  /// [hostGroupName] Specify the New Host Group Name, Supports up to 128 Characters.
  /// [id] The ID of the Host Group.
  /// [instanceId] Specify the New Host Group Where the Bastion Host ID of.
  GetHostGroupsGroup({
    required this.comment,
    required this.hostGroupId,
    required this.hostGroupName,
    required this.id,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'hostGroupId': hostGroupId,
      'hostGroupName': hostGroupName,
      'id': id,
      'instanceId': instanceId,
    };
  }

  factory GetHostGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetHostGroupsGroup(
      comment: map['comment'] as String,
      hostGroupId: map['hostGroupId'] as String,
      hostGroupName: map['hostGroupName'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

