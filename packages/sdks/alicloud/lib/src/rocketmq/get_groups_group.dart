// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroup {
  /// The name of the group.
  final pulumi.Input<String> groupName;
  /// Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  final pulumi.Input<String> groupType;
  /// The name of the group.
  final pulumi.Input<String> id;
  /// Indicates whether namespaces are available. Read [Fields in SubscribeInfoDo](https://www.alibabacloud.com/help/doc-detail/29619.html) for further details.
  final pulumi.Input<bool> independentNaming;
  /// ID of the ONS Instance that owns the groups.
  final pulumi.Input<String> instanceId;
  /// The ID of the group owner, which is the Alibaba Cloud UID.
  final pulumi.Input<String> owner;
  /// Remark of the group.
  final pulumi.Input<String> remark;
  /// A map of tags assigned to the Ons instance.
  final pulumi.Input<Map<String, String>> tags;

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
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      groupType: pulumi.Input.fromValue(map['groupType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      independentNaming: pulumi.Input.fromValue(map['independentNaming'] as bool),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}

