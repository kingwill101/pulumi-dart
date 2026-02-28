// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointPostgresSetting {
  final String afterConnectScript;
  final String authenticationMethod;
  final String babelfishDatabaseName;
  final bool captureDdls;
  final String databaseMode;
  final String ddlArtifactsSchema;
  final int executeTimeout;
  final bool failTasksOnLobTruncation;
  final bool heartbeatEnable;
  final int heartbeatFrequency;
  final String heartbeatSchema;
  final bool mapBooleanAsBoolean;
  final bool mapJsonbAsClob;
  final String mapLongVarcharAs;
  final int maxFileSize;
  final String pluginName;
  final String serviceAccessRoleArn;
  final String slotName;

  /// Creates a new [GetEndpointPostgresSetting].
  /// [afterConnectScript] Required.
  /// [authenticationMethod] Required.
  /// [babelfishDatabaseName] Required.
  /// [captureDdls] Required.
  /// [databaseMode] Required.
  /// [ddlArtifactsSchema] Required.
  /// [executeTimeout] Required.
  /// [failTasksOnLobTruncation] Required.
  /// [heartbeatEnable] Required.
  /// [heartbeatFrequency] Required.
  /// [heartbeatSchema] Required.
  /// [mapBooleanAsBoolean] Required.
  /// [mapJsonbAsClob] Required.
  /// [mapLongVarcharAs] Required.
  /// [maxFileSize] Required.
  /// [pluginName] Required.
  /// [serviceAccessRoleArn] Required.
  /// [slotName] Required.
  GetEndpointPostgresSetting({
    required this.afterConnectScript,
    required this.authenticationMethod,
    required this.babelfishDatabaseName,
    required this.captureDdls,
    required this.databaseMode,
    required this.ddlArtifactsSchema,
    required this.executeTimeout,
    required this.failTasksOnLobTruncation,
    required this.heartbeatEnable,
    required this.heartbeatFrequency,
    required this.heartbeatSchema,
    required this.mapBooleanAsBoolean,
    required this.mapJsonbAsClob,
    required this.mapLongVarcharAs,
    required this.maxFileSize,
    required this.pluginName,
    required this.serviceAccessRoleArn,
    required this.slotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterConnectScript': afterConnectScript,
      'authenticationMethod': authenticationMethod,
      'babelfishDatabaseName': babelfishDatabaseName,
      'captureDdls': captureDdls,
      'databaseMode': databaseMode,
      'ddlArtifactsSchema': ddlArtifactsSchema,
      'executeTimeout': executeTimeout,
      'failTasksOnLobTruncation': failTasksOnLobTruncation,
      'heartbeatEnable': heartbeatEnable,
      'heartbeatFrequency': heartbeatFrequency,
      'heartbeatSchema': heartbeatSchema,
      'mapBooleanAsBoolean': mapBooleanAsBoolean,
      'mapJsonbAsClob': mapJsonbAsClob,
      'mapLongVarcharAs': mapLongVarcharAs,
      'maxFileSize': maxFileSize,
      'pluginName': pluginName,
      'serviceAccessRoleArn': serviceAccessRoleArn,
      'slotName': slotName,
    };
  }

  factory GetEndpointPostgresSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointPostgresSetting(
      afterConnectScript: map['afterConnectScript'] as String,
      authenticationMethod: map['authenticationMethod'] as String,
      babelfishDatabaseName: map['babelfishDatabaseName'] as String,
      captureDdls: map['captureDdls'] as bool,
      databaseMode: map['databaseMode'] as String,
      ddlArtifactsSchema: map['ddlArtifactsSchema'] as String,
      executeTimeout: map['executeTimeout'] as int,
      failTasksOnLobTruncation: map['failTasksOnLobTruncation'] as bool,
      heartbeatEnable: map['heartbeatEnable'] as bool,
      heartbeatFrequency: map['heartbeatFrequency'] as int,
      heartbeatSchema: map['heartbeatSchema'] as String,
      mapBooleanAsBoolean: map['mapBooleanAsBoolean'] as bool,
      mapJsonbAsClob: map['mapJsonbAsClob'] as bool,
      mapLongVarcharAs: map['mapLongVarcharAs'] as String,
      maxFileSize: map['maxFileSize'] as int,
      pluginName: map['pluginName'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] as String,
      slotName: map['slotName'] as String,
    );
  }
}

