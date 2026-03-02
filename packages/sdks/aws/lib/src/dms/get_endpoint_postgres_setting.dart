// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointPostgresSetting {
  final pulumi.Input<String> afterConnectScript;
  final pulumi.Input<String> authenticationMethod;
  final pulumi.Input<String> babelfishDatabaseName;
  final pulumi.Input<bool> captureDdls;
  final pulumi.Input<String> databaseMode;
  final pulumi.Input<String> ddlArtifactsSchema;
  final pulumi.Input<int> executeTimeout;
  final pulumi.Input<bool> failTasksOnLobTruncation;
  final pulumi.Input<bool> heartbeatEnable;
  final pulumi.Input<int> heartbeatFrequency;
  final pulumi.Input<String> heartbeatSchema;
  final pulumi.Input<bool> mapBooleanAsBoolean;
  final pulumi.Input<bool> mapJsonbAsClob;
  final pulumi.Input<String> mapLongVarcharAs;
  final pulumi.Input<int> maxFileSize;
  final pulumi.Input<String> pluginName;
  final pulumi.Input<String> serviceAccessRoleArn;
  final pulumi.Input<String> slotName;

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
      afterConnectScript: (map['afterConnectScript'] as String).input(),
      authenticationMethod: (map['authenticationMethod'] as String).input(),
      babelfishDatabaseName: (map['babelfishDatabaseName'] as String).input(),
      captureDdls: (map['captureDdls'] as bool).input(),
      databaseMode: (map['databaseMode'] as String).input(),
      ddlArtifactsSchema: (map['ddlArtifactsSchema'] as String).input(),
      executeTimeout: (map['executeTimeout'] as int).input(),
      failTasksOnLobTruncation: (map['failTasksOnLobTruncation'] as bool).input(),
      heartbeatEnable: (map['heartbeatEnable'] as bool).input(),
      heartbeatFrequency: (map['heartbeatFrequency'] as int).input(),
      heartbeatSchema: (map['heartbeatSchema'] as String).input(),
      mapBooleanAsBoolean: (map['mapBooleanAsBoolean'] as bool).input(),
      mapJsonbAsClob: (map['mapJsonbAsClob'] as bool).input(),
      mapLongVarcharAs: (map['mapLongVarcharAs'] as String).input(),
      maxFileSize: (map['maxFileSize'] as int).input(),
      pluginName: (map['pluginName'] as String).input(),
      serviceAccessRoleArn: (map['serviceAccessRoleArn'] as String).input(),
      slotName: (map['slotName'] as String).input(),
    );
  }
}

