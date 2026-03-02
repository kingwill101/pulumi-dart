// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetParameterGroupsGroup {
  /// The time when the parameter template was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> createTime;
  /// The type of the database engine. Only `MySQL` is supported.
  final pulumi.Input<String> dbType;
  /// The version number of the database engine. Valid values: `5.6`, `5.7`, `8.0`.
  final pulumi.Input<String> dbVersion;
  /// Indicates whether to restart the cluster when this parameter template is applied.
  final pulumi.Input<String> forceRestart;
  /// The ID of the Parameter Group.
  final pulumi.Input<String> id;
  /// The number of parameters in the parameter template.
  final pulumi.Input<int> parameterCounts;
  /// The description of the parameter template.
  final pulumi.Input<String> parameterGroupDesc;
  /// The ID of the Parameter Group.
  final pulumi.Input<String> parameterGroupId;
  /// The name of the parameter template.
  final pulumi.Input<String> parameterGroupName;
  /// The type of the parameter template.
  final pulumi.Input<String> parameterGroupType;

  /// Creates a new [GetParameterGroupsGroup].
  /// [createTime] The time when the parameter template was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [dbType] The type of the database engine. Only `MySQL` is supported.
  /// [dbVersion] The version number of the database engine. Valid values: `5.6`, `5.7`, `8.0`.
  /// [forceRestart] Indicates whether to restart the cluster when this parameter template is applied.
  /// [id] The ID of the Parameter Group.
  /// [parameterCounts] The number of parameters in the parameter template.
  /// [parameterGroupDesc] The description of the parameter template.
  /// [parameterGroupId] The ID of the Parameter Group.
  /// [parameterGroupName] The name of the parameter template.
  /// [parameterGroupType] The type of the parameter template.
  GetParameterGroupsGroup({
    required this.createTime,
    required this.dbType,
    required this.dbVersion,
    required this.forceRestart,
    required this.id,
    required this.parameterCounts,
    required this.parameterGroupDesc,
    required this.parameterGroupId,
    required this.parameterGroupName,
    required this.parameterGroupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dbType': dbType,
      'dbVersion': dbVersion,
      'forceRestart': forceRestart,
      'id': id,
      'parameterCounts': parameterCounts,
      'parameterGroupDesc': parameterGroupDesc,
      'parameterGroupId': parameterGroupId,
      'parameterGroupName': parameterGroupName,
      'parameterGroupType': parameterGroupType,
    };
  }

  factory GetParameterGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupsGroup(
      createTime: (map['createTime'] as String).input(),
      dbType: (map['dbType'] as String).input(),
      dbVersion: (map['dbVersion'] as String).input(),
      forceRestart: (map['forceRestart'] as String).input(),
      id: (map['id'] as String).input(),
      parameterCounts: (map['parameterCounts'] as int).input(),
      parameterGroupDesc: (map['parameterGroupDesc'] as String).input(),
      parameterGroupId: (map['parameterGroupId'] as String).input(),
      parameterGroupName: (map['parameterGroupName'] as String).input(),
      parameterGroupType: (map['parameterGroupType'] as String).input(),
    );
  }
}

