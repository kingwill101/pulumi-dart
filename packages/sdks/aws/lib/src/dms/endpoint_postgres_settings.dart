// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointPostgresSettings {
  /// For use with change data capture (CDC) only, this attribute has AWS DMS bypass foreign keys and user triggers to reduce the time it takes to bulk load data.
  final pulumi.Input<String>? afterConnectScript;
  /// Specifies the authentication method. Valid values: `password`, `iam`.
  final pulumi.Input<String>? authenticationMethod;
  /// The Babelfish for Aurora PostgreSQL database name for the endpoint.
  final pulumi.Input<String>? babelfishDatabaseName;
  /// To capture DDL events, AWS DMS creates various artifacts in the PostgreSQL database when the task starts.
  final pulumi.Input<bool>? captureDdls;
  /// Specifies the default behavior of the replication's handling of PostgreSQL- compatible endpoints that require some additional configuration, such as Babelfish endpoints.
  final pulumi.Input<String>? databaseMode;
  /// Sets the schema in which the operational DDL database artifacts are created. Default is `public`.
  final pulumi.Input<String>? ddlArtifactsSchema;
  /// Sets the client statement timeout for the PostgreSQL instance, in seconds. Default value is `60`.
  final pulumi.Input<int>? executeTimeout;
  /// When set to `true`, this value causes a task to fail if the actual size of a LOB column is greater than the specified `LobMaxSize`. Default is `false`.
  final pulumi.Input<bool>? failTasksOnLobTruncation;
  /// The write-ahead log (WAL) heartbeat feature mimics a dummy transaction. By doing this, it prevents idle logical replication slots from holding onto old WAL logs, which can result in storage full situations on the source.
  final pulumi.Input<bool>? heartbeatEnable;
  /// Sets the WAL heartbeat frequency (in minutes). Default value is `5`.
  final pulumi.Input<int>? heartbeatFrequency;
  /// Sets the schema in which the heartbeat artifacts are created. Default value is `public`.
  final pulumi.Input<String>? heartbeatSchema;
  /// You can use PostgreSQL endpoint settings to map a boolean as a boolean from your PostgreSQL source to a Amazon Redshift target. Default value is `false`.
  final pulumi.Input<bool>? mapBooleanAsBoolean;
  /// Optional When true, DMS migrates JSONB values as CLOB.
  final pulumi.Input<bool>? mapJsonbAsClob;
  /// Optional When true, DMS migrates LONG values as VARCHAR.
  final pulumi.Input<String>? mapLongVarcharAs;
  /// Specifies the maximum size (in KB) of any .csv file used to transfer data to PostgreSQL. Default is `32,768 KB`.
  final pulumi.Input<int>? maxFileSize;
  /// Specifies the plugin to use to create a replication slot. Valid values: `pglogical`, `test-decoding`.
  final pulumi.Input<String>? pluginName;
  /// Specifies the IAM role to use to authenticate the connection.
  final pulumi.Input<String>? serviceAccessRoleArn;
  /// Sets the name of a previously created logical replication slot for a CDC load of the PostgreSQL source instance.
  final pulumi.Input<String>? slotName;

  /// Creates a new [EndpointPostgresSettings].
  /// [afterConnectScript] For use with change data capture (CDC) only, this attribute has AWS DMS bypass foreign keys and user triggers to reduce the time it takes to bulk load data.
  /// [authenticationMethod] Specifies the authentication method. Valid values: `password`, `iam`.
  /// [babelfishDatabaseName] The Babelfish for Aurora PostgreSQL database name for the endpoint.
  /// [captureDdls] To capture DDL events, AWS DMS creates various artifacts in the PostgreSQL database when the task starts.
  /// [databaseMode] Specifies the default behavior of the replication's handling of PostgreSQL- compatible endpoints that require some additional configuration, such as Babelfish endpoints.
  /// [ddlArtifactsSchema] Sets the schema in which the operational DDL database artifacts are created. Default is `public`.
  /// [executeTimeout] Sets the client statement timeout for the PostgreSQL instance, in seconds. Default value is `60`.
  /// [failTasksOnLobTruncation] When set to `true`, this value causes a task to fail if the actual size of a LOB column is greater than the specified `LobMaxSize`. Default is `false`.
  /// [heartbeatEnable] The write-ahead log (WAL) heartbeat feature mimics a dummy transaction. By doing this, it prevents idle logical replication slots from holding onto old WAL logs, which can result in storage full situations on the source.
  /// [heartbeatFrequency] Sets the WAL heartbeat frequency (in minutes). Default value is `5`.
  /// [heartbeatSchema] Sets the schema in which the heartbeat artifacts are created. Default value is `public`.
  /// [mapBooleanAsBoolean] You can use PostgreSQL endpoint settings to map a boolean as a boolean from your PostgreSQL source to a Amazon Redshift target. Default value is `false`.
  /// [mapJsonbAsClob] Optional When true, DMS migrates JSONB values as CLOB.
  /// [mapLongVarcharAs] Optional When true, DMS migrates LONG values as VARCHAR.
  /// [maxFileSize] Specifies the maximum size (in KB) of any .csv file used to transfer data to PostgreSQL. Default is `32,768 KB`.
  /// [pluginName] Specifies the plugin to use to create a replication slot. Valid values: `pglogical`, `test-decoding`.
  /// [serviceAccessRoleArn] Specifies the IAM role to use to authenticate the connection.
  /// [slotName] Sets the name of a previously created logical replication slot for a CDC load of the PostgreSQL source instance.
  EndpointPostgresSettings({
    this.afterConnectScript,
    this.authenticationMethod,
    this.babelfishDatabaseName,
    this.captureDdls,
    this.databaseMode,
    this.ddlArtifactsSchema,
    this.executeTimeout,
    this.failTasksOnLobTruncation,
    this.heartbeatEnable,
    this.heartbeatFrequency,
    this.heartbeatSchema,
    this.mapBooleanAsBoolean,
    this.mapJsonbAsClob,
    this.mapLongVarcharAs,
    this.maxFileSize,
    this.pluginName,
    this.serviceAccessRoleArn,
    this.slotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterConnectScript': ?afterConnectScript,
      'authenticationMethod': ?authenticationMethod,
      'babelfishDatabaseName': ?babelfishDatabaseName,
      'captureDdls': ?captureDdls,
      'databaseMode': ?databaseMode,
      'ddlArtifactsSchema': ?ddlArtifactsSchema,
      'executeTimeout': ?executeTimeout,
      'failTasksOnLobTruncation': ?failTasksOnLobTruncation,
      'heartbeatEnable': ?heartbeatEnable,
      'heartbeatFrequency': ?heartbeatFrequency,
      'heartbeatSchema': ?heartbeatSchema,
      'mapBooleanAsBoolean': ?mapBooleanAsBoolean,
      'mapJsonbAsClob': ?mapJsonbAsClob,
      'mapLongVarcharAs': ?mapLongVarcharAs,
      'maxFileSize': ?maxFileSize,
      'pluginName': ?pluginName,
      'serviceAccessRoleArn': ?serviceAccessRoleArn,
      'slotName': ?slotName,
    };
  }

  factory EndpointPostgresSettings.fromMap(Map<String, dynamic> map) {
    return EndpointPostgresSettings(
      afterConnectScript: map['afterConnectScript'] == null ? null : (map['afterConnectScript'] as String).input(),
      authenticationMethod: map['authenticationMethod'] == null ? null : (map['authenticationMethod'] as String).input(),
      babelfishDatabaseName: map['babelfishDatabaseName'] == null ? null : (map['babelfishDatabaseName'] as String).input(),
      captureDdls: map['captureDdls'] == null ? null : (map['captureDdls'] as bool).input(),
      databaseMode: map['databaseMode'] == null ? null : (map['databaseMode'] as String).input(),
      ddlArtifactsSchema: map['ddlArtifactsSchema'] == null ? null : (map['ddlArtifactsSchema'] as String).input(),
      executeTimeout: map['executeTimeout'] == null ? null : (map['executeTimeout'] as int).input(),
      failTasksOnLobTruncation: map['failTasksOnLobTruncation'] == null ? null : (map['failTasksOnLobTruncation'] as bool).input(),
      heartbeatEnable: map['heartbeatEnable'] == null ? null : (map['heartbeatEnable'] as bool).input(),
      heartbeatFrequency: map['heartbeatFrequency'] == null ? null : (map['heartbeatFrequency'] as int).input(),
      heartbeatSchema: map['heartbeatSchema'] == null ? null : (map['heartbeatSchema'] as String).input(),
      mapBooleanAsBoolean: map['mapBooleanAsBoolean'] == null ? null : (map['mapBooleanAsBoolean'] as bool).input(),
      mapJsonbAsClob: map['mapJsonbAsClob'] == null ? null : (map['mapJsonbAsClob'] as bool).input(),
      mapLongVarcharAs: map['mapLongVarcharAs'] == null ? null : (map['mapLongVarcharAs'] as String).input(),
      maxFileSize: map['maxFileSize'] == null ? null : (map['maxFileSize'] as int).input(),
      pluginName: map['pluginName'] == null ? null : (map['pluginName'] as String).input(),
      serviceAccessRoleArn: map['serviceAccessRoleArn'] == null ? null : (map['serviceAccessRoleArn'] as String).input(),
      slotName: map['slotName'] == null ? null : (map['slotName'] as String).input(),
    );
  }
}

