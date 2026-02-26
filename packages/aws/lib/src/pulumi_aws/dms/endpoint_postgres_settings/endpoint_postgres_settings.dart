// ignore_for_file: unused_element, unnecessary_cast

class EndpointPostgresSettings {
  /// For use with change data capture (CDC) only, this attribute has AWS DMS bypass foreign keys and user triggers to reduce the time it takes to bulk load data.
  final String? afterConnectScript;

  /// Specifies the authentication method. Valid values: <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>, <span pulumi-lang-nodejs="`iam`" pulumi-lang-dotnet="`Iam`" pulumi-lang-go="`iam`" pulumi-lang-python="`iam`" pulumi-lang-yaml="`iam`" pulumi-lang-java="`iam`">`iam`</span>.
  final String? authenticationMethod;

  /// The Babelfish for Aurora PostgreSQL database name for the endpoint.
  final String? babelfishDatabaseName;

  /// To capture DDL events, AWS DMS creates various artifacts in the PostgreSQL database when the task starts.
  final bool? captureDdls;

  /// Specifies the default behavior of the replication's handling of PostgreSQL- compatible endpoints that require some additional configuration, such as Babelfish endpoints.
  final String? databaseMode;

  /// Sets the schema in which the operational DDL database artifacts are created. Default is <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span>.
  final String? ddlArtifactsSchema;

  /// Sets the client statement timeout for the PostgreSQL instance, in seconds. Default value is <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final int? executeTimeout;

  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, this value causes a task to fail if the actual size of a LOB column is greater than the specified `LobMaxSize`. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? failTasksOnLobTruncation;

  /// The write-ahead log (WAL) heartbeat feature mimics a dummy transaction. By doing this, it prevents idle logical replication slots from holding onto old WAL logs, which can result in storage full situations on the source.
  final bool? heartbeatEnable;

  /// Sets the WAL heartbeat frequency (in minutes). Default value is <span pulumi-lang-nodejs="`5`" pulumi-lang-dotnet="`5`" pulumi-lang-go="`5`" pulumi-lang-python="`5`" pulumi-lang-yaml="`5`" pulumi-lang-java="`5`">`5`</span>.
  final int? heartbeatFrequency;

  /// Sets the schema in which the heartbeat artifacts are created. Default value is <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span>.
  final String? heartbeatSchema;

  /// You can use PostgreSQL endpoint settings to map a boolean as a boolean from your PostgreSQL source to a Amazon Redshift target. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? mapBooleanAsBoolean;

  /// Optional When true, DMS migrates JSONB values as CLOB.
  final bool? mapJsonbAsClob;

  /// Optional When true, DMS migrates LONG values as VARCHAR.
  final String? mapLongVarcharAs;

  /// Specifies the maximum size (in KB) of any .csv file used to transfer data to PostgreSQL. Default is `32,768 KB`.
  final int? maxFileSize;

  /// Specifies the plugin to use to create a replication slot. Valid values: <span pulumi-lang-nodejs="`pglogical`" pulumi-lang-dotnet="`Pglogical`" pulumi-lang-go="`pglogical`" pulumi-lang-python="`pglogical`" pulumi-lang-yaml="`pglogical`" pulumi-lang-java="`pglogical`">`pglogical`</span>, `test-decoding`.
  final String? pluginName;

  /// Specifies the IAM role to use to authenticate the connection.
  final String? serviceAccessRoleArn;

  /// Sets the name of a previously created logical replication slot for a CDC load of the PostgreSQL source instance.
  final String? slotName;

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
    final map = <String, dynamic>{};
    final afterConnectScriptValue = afterConnectScript;
    if (afterConnectScriptValue != null) {
      map['afterConnectScript'] = afterConnectScriptValue;
    }
    final authenticationMethodValue = authenticationMethod;
    if (authenticationMethodValue != null) {
      map['authenticationMethod'] = authenticationMethodValue;
    }
    final babelfishDatabaseNameValue = babelfishDatabaseName;
    if (babelfishDatabaseNameValue != null) {
      map['babelfishDatabaseName'] = babelfishDatabaseNameValue;
    }
    final captureDdlsValue = captureDdls;
    if (captureDdlsValue != null) {
      map['captureDdls'] = captureDdlsValue;
    }
    final databaseModeValue = databaseMode;
    if (databaseModeValue != null) {
      map['databaseMode'] = databaseModeValue;
    }
    final ddlArtifactsSchemaValue = ddlArtifactsSchema;
    if (ddlArtifactsSchemaValue != null) {
      map['ddlArtifactsSchema'] = ddlArtifactsSchemaValue;
    }
    final executeTimeoutValue = executeTimeout;
    if (executeTimeoutValue != null) {
      map['executeTimeout'] = executeTimeoutValue;
    }
    final failTasksOnLobTruncationValue = failTasksOnLobTruncation;
    if (failTasksOnLobTruncationValue != null) {
      map['failTasksOnLobTruncation'] = failTasksOnLobTruncationValue;
    }
    final heartbeatEnableValue = heartbeatEnable;
    if (heartbeatEnableValue != null) {
      map['heartbeatEnable'] = heartbeatEnableValue;
    }
    final heartbeatFrequencyValue = heartbeatFrequency;
    if (heartbeatFrequencyValue != null) {
      map['heartbeatFrequency'] = heartbeatFrequencyValue;
    }
    final heartbeatSchemaValue = heartbeatSchema;
    if (heartbeatSchemaValue != null) {
      map['heartbeatSchema'] = heartbeatSchemaValue;
    }
    final mapBooleanAsBooleanValue = mapBooleanAsBoolean;
    if (mapBooleanAsBooleanValue != null) {
      map['mapBooleanAsBoolean'] = mapBooleanAsBooleanValue;
    }
    final mapJsonbAsClobValue = mapJsonbAsClob;
    if (mapJsonbAsClobValue != null) {
      map['mapJsonbAsClob'] = mapJsonbAsClobValue;
    }
    final mapLongVarcharAsValue = mapLongVarcharAs;
    if (mapLongVarcharAsValue != null) {
      map['mapLongVarcharAs'] = mapLongVarcharAsValue;
    }
    final maxFileSizeValue = maxFileSize;
    if (maxFileSizeValue != null) {
      map['maxFileSize'] = maxFileSizeValue;
    }
    final pluginNameValue = pluginName;
    if (pluginNameValue != null) {
      map['pluginName'] = pluginNameValue;
    }
    final serviceAccessRoleArnValue = serviceAccessRoleArn;
    if (serviceAccessRoleArnValue != null) {
      map['serviceAccessRoleArn'] = serviceAccessRoleArnValue;
    }
    final slotNameValue = slotName;
    if (slotNameValue != null) {
      map['slotName'] = slotNameValue;
    }
    return map;
  }

  factory EndpointPostgresSettings.fromMap(Map<String, dynamic> map) {
    return EndpointPostgresSettings(
      afterConnectScript: map['afterConnectScript'] == null
          ? null
          : map['afterConnectScript'] as String,
      authenticationMethod: map['authenticationMethod'] == null
          ? null
          : map['authenticationMethod'] as String,
      babelfishDatabaseName: map['babelfishDatabaseName'] == null
          ? null
          : map['babelfishDatabaseName'] as String,
      captureDdls:
          map['captureDdls'] == null ? null : map['captureDdls'] as bool,
      databaseMode:
          map['databaseMode'] == null ? null : map['databaseMode'] as String,
      ddlArtifactsSchema: map['ddlArtifactsSchema'] == null
          ? null
          : map['ddlArtifactsSchema'] as String,
      executeTimeout:
          map['executeTimeout'] == null ? null : map['executeTimeout'] as int,
      failTasksOnLobTruncation: map['failTasksOnLobTruncation'] == null
          ? null
          : map['failTasksOnLobTruncation'] as bool,
      heartbeatEnable: map['heartbeatEnable'] == null
          ? null
          : map['heartbeatEnable'] as bool,
      heartbeatFrequency: map['heartbeatFrequency'] == null
          ? null
          : map['heartbeatFrequency'] as int,
      heartbeatSchema: map['heartbeatSchema'] == null
          ? null
          : map['heartbeatSchema'] as String,
      mapBooleanAsBoolean: map['mapBooleanAsBoolean'] == null
          ? null
          : map['mapBooleanAsBoolean'] as bool,
      mapJsonbAsClob:
          map['mapJsonbAsClob'] == null ? null : map['mapJsonbAsClob'] as bool,
      mapLongVarcharAs: map['mapLongVarcharAs'] == null
          ? null
          : map['mapLongVarcharAs'] as String,
      maxFileSize:
          map['maxFileSize'] == null ? null : map['maxFileSize'] as int,
      pluginName:
          map['pluginName'] == null ? null : map['pluginName'] as String,
      serviceAccessRoleArn: map['serviceAccessRoleArn'] == null
          ? null
          : map['serviceAccessRoleArn'] as String,
      slotName: map['slotName'] == null ? null : map['slotName'] as String,
    );
  }
}
