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
      afterConnectScript: pulumi.Input.fromValue(
        map['afterConnectScript'] as String,
      ),
      authenticationMethod: pulumi.Input.fromValue(
        map['authenticationMethod'] as String,
      ),
      babelfishDatabaseName: pulumi.Input.fromValue(
        map['babelfishDatabaseName'] as String,
      ),
      captureDdls: pulumi.Input.fromValue(map['captureDdls'] as bool),
      databaseMode: pulumi.Input.fromValue(map['databaseMode'] as String),
      ddlArtifactsSchema: pulumi.Input.fromValue(
        map['ddlArtifactsSchema'] as String,
      ),
      executeTimeout: pulumi.Input.fromValue(map['executeTimeout'] as int),
      failTasksOnLobTruncation: pulumi.Input.fromValue(
        map['failTasksOnLobTruncation'] as bool,
      ),
      heartbeatEnable: pulumi.Input.fromValue(map['heartbeatEnable'] as bool),
      heartbeatFrequency: pulumi.Input.fromValue(
        map['heartbeatFrequency'] as int,
      ),
      heartbeatSchema: pulumi.Input.fromValue(map['heartbeatSchema'] as String),
      mapBooleanAsBoolean: pulumi.Input.fromValue(
        map['mapBooleanAsBoolean'] as bool,
      ),
      mapJsonbAsClob: pulumi.Input.fromValue(map['mapJsonbAsClob'] as bool),
      mapLongVarcharAs: pulumi.Input.fromValue(
        map['mapLongVarcharAs'] as String,
      ),
      maxFileSize: pulumi.Input.fromValue(map['maxFileSize'] as int),
      pluginName: pulumi.Input.fromValue(map['pluginName'] as String),
      serviceAccessRoleArn: pulumi.Input.fromValue(
        map['serviceAccessRoleArn'] as String,
      ),
      slotName: pulumi.Input.fromValue(map['slotName'] as String),
    );
  }
}
