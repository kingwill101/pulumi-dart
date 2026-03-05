// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Replaced by `group_name` after version 1.98.0.
  final pulumi.Input<String>? groupId;
  /// Name of the group. Two groups on a single instance cannot have the same name. A `group_name` starts with "GID_" or "GID-", and contains letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String>? groupName;
  /// Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  final pulumi.Input<String>? groupType;
  /// ID of the ONS Instance that owns the groups.
  final pulumi.Input<String>? instanceId;
  /// This attribute is used to set the message reading enabled or disabled. It can only be set after the group is used by the client.
  final pulumi.Input<bool>? readEnable;
  /// This attribute is a concise description of group. The length cannot exceed 256.
  final pulumi.Input<String>? remark;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GroupState].
  /// [groupId] Replaced by `group_name` after version 1.98.0.
  /// [groupName] Name of the group. Two groups on a single instance cannot have the same name. A `group_name` starts with "GID_" or "GID-", and contains letters, numbers, hyphens (-), and underscores (_).
  /// [groupType] Specify the protocol applicable to the created Group ID. Valid values: `tcp`, `http`. Default to `tcp`.
  /// [instanceId] ID of the ONS Instance that owns the groups.
  /// [readEnable] This attribute is used to set the message reading enabled or disabled. It can only be set after the group is used by the client.
  /// [remark] This attribute is a concise description of group. The length cannot exceed 256.
  /// [tags] A mapping of tags to assign to the resource.
  GroupState({
    this.groupId,
    this.groupName,
    this.groupType,
    this.instanceId,
    this.readEnable,
    this.remark,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupName': ?groupName,
      'groupType': ?groupType,
      'instanceId': ?instanceId,
      'readEnable': ?readEnable,
      'remark': ?remark,
      'tags': ?tags,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readEnable: (() { final guardedValue = map['readEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

