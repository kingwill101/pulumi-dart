// ignore_for_file: unused_element, unnecessary_cast


class GetGroupsGroup {
  /// The name of the group.
  final String groupName;
  /// Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  final String groupType;
  /// The name of the group.
  final String id;
  /// Indicates whether namespaces are available. Read [Fields in SubscribeInfoDo](https://www.alibabacloud.com/help/doc-detail/29619.html) for further details.
  final bool independentNaming;
  /// ID of the ONS Instance that owns the groups.
  final String instanceId;
  /// The ID of the group owner, which is the Alibaba Cloud UID.
  final String owner;
  /// Remark of the group.
  final String remark;
  /// A map of tags assigned to the Ons instance.
  final Map<String, String> tags;

  /// Creates a new [GetGroupsGroup].
  /// [groupName] The name of the group.
  /// [groupType] Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  /// [id] The name of the group.
  /// [independentNaming] Indicates whether namespaces are available. Read [Fields in SubscribeInfoDo](https://www.alibabacloud.com/help/doc-detail/29619.html) for further details.
  /// [instanceId] ID of the ONS Instance that owns the groups.
  /// [owner] The ID of the group owner, which is the Alibaba Cloud UID.
  /// [remark] Remark of the group.
  /// [tags] A map of tags assigned to the Ons instance.
  GetGroupsGroup({
    required this.groupName,
    required this.groupType,
    required this.id,
    required this.independentNaming,
    required this.instanceId,
    required this.owner,
    required this.remark,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'groupType': groupType,
      'id': id,
      'independentNaming': independentNaming,
      'instanceId': instanceId,
      'owner': owner,
      'remark': remark,
      'tags': tags,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      groupName: map['groupName'] as String,
      groupType: map['groupType'] as String,
      id: map['id'] as String,
      independentNaming: map['independentNaming'] as bool,
      instanceId: map['instanceId'] as String,
      owner: map['owner'] as String,
      remark: map['remark'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

