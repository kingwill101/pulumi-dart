// ignore_for_file: unused_element, unnecessary_cast


class GetParameterGroupsGroup {
  /// The time when the parameter template was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final String createTime;
  /// The type of the database engine. Only `MySQL` is supported.
  final String dbType;
  /// The version number of the database engine. Valid values: `5.6`, `5.7`, `8.0`.
  final String dbVersion;
  /// Indicates whether to restart the cluster when this parameter template is applied.
  final String forceRestart;
  /// The ID of the Parameter Group.
  final String id;
  /// The number of parameters in the parameter template.
  final int parameterCounts;
  /// The description of the parameter template.
  final String parameterGroupDesc;
  /// The ID of the Parameter Group.
  final String parameterGroupId;
  /// The name of the parameter template.
  final String parameterGroupName;
  /// The type of the parameter template.
  final String parameterGroupType;

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
      createTime: map['createTime'] as String,
      dbType: map['dbType'] as String,
      dbVersion: map['dbVersion'] as String,
      forceRestart: map['forceRestart'] as String,
      id: map['id'] as String,
      parameterCounts: map['parameterCounts'] as int,
      parameterGroupDesc: map['parameterGroupDesc'] as String,
      parameterGroupId: map['parameterGroupId'] as String,
      parameterGroupName: map['parameterGroupName'] as String,
      parameterGroupType: map['parameterGroupType'] as String,
    );
  }
}

