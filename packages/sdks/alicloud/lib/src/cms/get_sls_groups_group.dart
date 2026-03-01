// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sls_groups_group_sls_group_config.dart';

class GetSlsGroupsGroup {
  /// The creation time of the resource.
  final String createTime;
  /// The ID of the Sls Group. Its value is same as Queue Name.
  final String id;
  /// The Config of the Sls Group.
  final List<GetSlsGroupsGroupSlsGroupConfig> slsGroupConfigs;
  /// The Description of the Sls Group.
  final String slsGroupDescription;
  /// The name of the resource.
  final String slsGroupName;

  /// Creates a new [GetSlsGroupsGroup].
  /// [createTime] The creation time of the resource.
  /// [id] The ID of the Sls Group. Its value is same as Queue Name.
  /// [slsGroupConfigs] The Config of the Sls Group.
  /// [slsGroupDescription] The Description of the Sls Group.
  /// [slsGroupName] The name of the resource.
  GetSlsGroupsGroup({
    required this.createTime,
    required this.id,
    required this.slsGroupConfigs,
    required this.slsGroupDescription,
    required this.slsGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'slsGroupConfigs': pulumi.Input.encodeList<GetSlsGroupsGroupSlsGroupConfig, Map<String, dynamic>>(slsGroupConfigs, (value) => value.toMap()),
      'slsGroupDescription': slsGroupDescription,
      'slsGroupName': slsGroupName,
    };
  }

  factory GetSlsGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetSlsGroupsGroup(
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      slsGroupConfigs: pulumi.Input.decodeList<GetSlsGroupsGroupSlsGroupConfig>(map['slsGroupConfigs'], (value) => GetSlsGroupsGroupSlsGroupConfig.fromMap((value as Map).cast<String, dynamic>())),
      slsGroupDescription: map['slsGroupDescription'] as String,
      slsGroupName: map['slsGroupName'] as String,
    );
  }
}

