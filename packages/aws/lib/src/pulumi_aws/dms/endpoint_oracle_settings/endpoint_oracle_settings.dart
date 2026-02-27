// ignore_for_file: unused_element, unnecessary_cast

class EndpointOracleSettings {
  /// Set this attribute to `false` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source.
  final bool? accessAlternateDirectly;

  /// Set this attribute to set up table-level supplemental logging for the Oracle database. This attribute enables PRIMARY KEY supplemental logging on all tables selected for a migration task.
  final bool? addSupplementalLogging;

  /// Set this attribute with `archived_log_dest_id` in a primary/standby setup. This attribute is useful in the case of a switchover.
  final int? additionalArchivedLogDestId;

  /// Set this attribute to `true` to enable replication of Oracle tables containing columns that are nested tables or defined types.
  final bool? allowSelectedNestedTables;

  /// Specifies the ID of the destination for the archived redo logs. This value should be the same as a number in the dest_id column of the v$archived_log view.
  final int? archivedLogDestId;

  /// When this field is set to `true`, AWS DMS only accesses the archived redo logs.
  final bool? archivedLogsOnly;

  /// For an Oracle source endpoint, your Oracle Automatic Storage Management (ASM) password.
  final String? asmPassword;

  /// For an Oracle source endpoint, your ASM server address.
  final String? asmServer;

  /// For an Oracle source endpoint, your ASM user name.
  final String? asmUser;

  /// Authentication mechanism to access the Oracle source endpoint. Default is `password`. Valid values are `password` and `kerberos`.
  final String? authenticationMethod;

  /// Specifies whether the length of a character column is in bytes or in characters. Valid values are `default`, `char`, and `byte`.
  final String? charLengthSemantics;

  /// When `true`, converts timestamps with the timezone datatype to their UTC value.
  final bool? convertTimestampWithZoneToUtc;

  /// When set to `true`, this attribute helps to increase the commit rate on the Oracle target database by writing directly to tables and not writing a trail to database logs.
  final bool? directPathNoLog;

  /// When set to `true`, this attribute specifies a parallel load when use_direct_path_full_load is set to true.
  final bool? directPathParallelLoad;

  /// Set this attribute to enable homogenous tablespace replication and create existing tables or indexes under the same tablespace on the target.
  final bool? enableHomogenousTablespace;

  /// Specifies the IDs of one more destinations for one or more archived redo logs. These IDs are the values of the dest_id column in the v$archived_log view.
  final List<int>? extraArchivedLogDestIds;

  /// When set to `true`, this attribute causes a task to fail if the actual size of an LOB column is greater than the specified lob_max_size.
  final bool? failTaskOnLobTruncation;

  /// Specifies the number scale.
  final int? numberDatatypeScale;

  /// The timeframe in minutes to check for open transactions for a CDC-only task. You can specify an integer value between 0 (the default) and 240 (the maximum).
  final int? openTransactionWindow;

  /// Set this string attribute to the required value in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This value specifies the default Oracle root used to access the redo logs.
  final String? oraclePathPrefix;

  /// Set this attribute to change the number of threads that DMS configures to perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can specify an integer value between 2 (the default) and 8 (the maximum).
  final int? parallelAsmReadThreads;

  /// Set this attribute to change the number of read-ahead blocks that DMS configures to perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can specify an integer value between 1000 (the default) and 200,000 (the maximum).
  final int? readAheadBlocks;

  /// When set to `true`, this attribute supports tablespace replication.
  final bool? readTableSpaceName;

  /// Set this attribute to `true` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This setting tells DMS instance to replace the default Oracle root with the specified `use_path_prefix` setting to access the redo logs.
  final bool? replacePathPrefix;

  /// Specifies the number of seconds that the system waits before resending a query.
  final int? retryInterval;

  /// Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full ARN of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the `secrets_manager_oracle_asm_secret_id`.
  final String? secretsManagerOracleAsmAccessRoleArn;

  /// Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full ARN, partial ARN, or friendly name of the secret that contains the Oracle ASM connection details for the Oracle endpoint.
  final String? secretsManagerOracleAsmSecretId;

  /// For an Oracle source endpoint, the transparent data encryption (TDE) password required by AWM DMS to access Oracle redo logs encrypted by TDE using Binary Reader.
  final String? securityDbEncryption;

  /// For an Oracle source endpoint, the name of a key used for the transparent data encryption (TDE) of the columns and tablespaces in an Oracle source database that is encrypted using TDE.
  final String? securityDbEncryptionName;

  /// Use this attribute to convert SDO_GEOMETRY to GEOJSON format. By default, DMS calls the SDO2GEOJSON custom function if present and accessible.
  final String? spatialDataOptionToGeoJsonFunctionName;

  /// Use this attribute to specify a time in minutes for the delay in standby sync. If the source is an Oracle Active Data Guard standby database, use this attribute to specify the time lag between primary and standby databases.
  final int? standbyDelayTime;

  /// Use this attribute to trim data on CHAR and NCHAR data types during migration. The default value is `true`.
  final bool? trimSpaceInChar;

  /// Set this attribute to `true` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This tells the DMS instance to use any specified prefix replacement to access all online redo logs.
  final bool? useAlternateFolderForOnline;

  /// Set this attribute to `true` to capture change data using the Binary Reader utility. Set `use_logminer_reader` to `false` to set this attribute to `true`.
  final bool? useBfile;

  /// Set this attribute to `true` to have AWS DMS use a direct path full load. Specify this value to use the direct path protocol in the Oracle Call Interface (OCI).
  final bool? useDirectPathFullLoad;

  /// Set this attribute to `true` to capture change data using the Oracle LogMiner utility (the default). Set this attribute to `false` if you want to access the redo logs as a binary file.
  final bool? useLogminerReader;

  /// Set this string attribute to the required value in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This value specifies the path prefix used to replace the default Oracle root to access the redo logs.
  final String? usePathPrefix;

  EndpointOracleSettings({
    this.accessAlternateDirectly,
    this.addSupplementalLogging,
    this.additionalArchivedLogDestId,
    this.allowSelectedNestedTables,
    this.archivedLogDestId,
    this.archivedLogsOnly,
    this.asmPassword,
    this.asmServer,
    this.asmUser,
    this.authenticationMethod,
    this.charLengthSemantics,
    this.convertTimestampWithZoneToUtc,
    this.directPathNoLog,
    this.directPathParallelLoad,
    this.enableHomogenousTablespace,
    this.extraArchivedLogDestIds,
    this.failTaskOnLobTruncation,
    this.numberDatatypeScale,
    this.openTransactionWindow,
    this.oraclePathPrefix,
    this.parallelAsmReadThreads,
    this.readAheadBlocks,
    this.readTableSpaceName,
    this.replacePathPrefix,
    this.retryInterval,
    this.secretsManagerOracleAsmAccessRoleArn,
    this.secretsManagerOracleAsmSecretId,
    this.securityDbEncryption,
    this.securityDbEncryptionName,
    this.spatialDataOptionToGeoJsonFunctionName,
    this.standbyDelayTime,
    this.trimSpaceInChar,
    this.useAlternateFolderForOnline,
    this.useBfile,
    this.useDirectPathFullLoad,
    this.useLogminerReader,
    this.usePathPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessAlternateDirectlyValue = accessAlternateDirectly;
    if (accessAlternateDirectlyValue != null) {
      map['accessAlternateDirectly'] = accessAlternateDirectlyValue;
    }
    final addSupplementalLoggingValue = addSupplementalLogging;
    if (addSupplementalLoggingValue != null) {
      map['addSupplementalLogging'] = addSupplementalLoggingValue;
    }
    final additionalArchivedLogDestIdValue = additionalArchivedLogDestId;
    if (additionalArchivedLogDestIdValue != null) {
      map['additionalArchivedLogDestId'] = additionalArchivedLogDestIdValue;
    }
    final allowSelectedNestedTablesValue = allowSelectedNestedTables;
    if (allowSelectedNestedTablesValue != null) {
      map['allowSelectedNestedTables'] = allowSelectedNestedTablesValue;
    }
    final archivedLogDestIdValue = archivedLogDestId;
    if (archivedLogDestIdValue != null) {
      map['archivedLogDestId'] = archivedLogDestIdValue;
    }
    final archivedLogsOnlyValue = archivedLogsOnly;
    if (archivedLogsOnlyValue != null) {
      map['archivedLogsOnly'] = archivedLogsOnlyValue;
    }
    final asmPasswordValue = asmPassword;
    if (asmPasswordValue != null) {
      map['asmPassword'] = asmPasswordValue;
    }
    final asmServerValue = asmServer;
    if (asmServerValue != null) {
      map['asmServer'] = asmServerValue;
    }
    final asmUserValue = asmUser;
    if (asmUserValue != null) {
      map['asmUser'] = asmUserValue;
    }
    final authenticationMethodValue = authenticationMethod;
    if (authenticationMethodValue != null) {
      map['authenticationMethod'] = authenticationMethodValue;
    }
    final charLengthSemanticsValue = charLengthSemantics;
    if (charLengthSemanticsValue != null) {
      map['charLengthSemantics'] = charLengthSemanticsValue;
    }
    final convertTimestampWithZoneToUtcValue = convertTimestampWithZoneToUtc;
    if (convertTimestampWithZoneToUtcValue != null) {
      map['convertTimestampWithZoneToUtc'] = convertTimestampWithZoneToUtcValue;
    }
    final directPathNoLogValue = directPathNoLog;
    if (directPathNoLogValue != null) {
      map['directPathNoLog'] = directPathNoLogValue;
    }
    final directPathParallelLoadValue = directPathParallelLoad;
    if (directPathParallelLoadValue != null) {
      map['directPathParallelLoad'] = directPathParallelLoadValue;
    }
    final enableHomogenousTablespaceValue = enableHomogenousTablespace;
    if (enableHomogenousTablespaceValue != null) {
      map['enableHomogenousTablespace'] = enableHomogenousTablespaceValue;
    }
    final extraArchivedLogDestIdsValue = extraArchivedLogDestIds;
    if (extraArchivedLogDestIdsValue != null) {
      map['extraArchivedLogDestIds'] = extraArchivedLogDestIdsValue;
    }
    final failTaskOnLobTruncationValue = failTaskOnLobTruncation;
    if (failTaskOnLobTruncationValue != null) {
      map['failTaskOnLobTruncation'] = failTaskOnLobTruncationValue;
    }
    final numberDatatypeScaleValue = numberDatatypeScale;
    if (numberDatatypeScaleValue != null) {
      map['numberDatatypeScale'] = numberDatatypeScaleValue;
    }
    final openTransactionWindowValue = openTransactionWindow;
    if (openTransactionWindowValue != null) {
      map['openTransactionWindow'] = openTransactionWindowValue;
    }
    final oraclePathPrefixValue = oraclePathPrefix;
    if (oraclePathPrefixValue != null) {
      map['oraclePathPrefix'] = oraclePathPrefixValue;
    }
    final parallelAsmReadThreadsValue = parallelAsmReadThreads;
    if (parallelAsmReadThreadsValue != null) {
      map['parallelAsmReadThreads'] = parallelAsmReadThreadsValue;
    }
    final readAheadBlocksValue = readAheadBlocks;
    if (readAheadBlocksValue != null) {
      map['readAheadBlocks'] = readAheadBlocksValue;
    }
    final readTableSpaceNameValue = readTableSpaceName;
    if (readTableSpaceNameValue != null) {
      map['readTableSpaceName'] = readTableSpaceNameValue;
    }
    final replacePathPrefixValue = replacePathPrefix;
    if (replacePathPrefixValue != null) {
      map['replacePathPrefix'] = replacePathPrefixValue;
    }
    final retryIntervalValue = retryInterval;
    if (retryIntervalValue != null) {
      map['retryInterval'] = retryIntervalValue;
    }
    final secretsManagerOracleAsmAccessRoleArnValue =
        secretsManagerOracleAsmAccessRoleArn;
    if (secretsManagerOracleAsmAccessRoleArnValue != null) {
      map['secretsManagerOracleAsmAccessRoleArn'] =
          secretsManagerOracleAsmAccessRoleArnValue;
    }
    final secretsManagerOracleAsmSecretIdValue =
        secretsManagerOracleAsmSecretId;
    if (secretsManagerOracleAsmSecretIdValue != null) {
      map['secretsManagerOracleAsmSecretId'] =
          secretsManagerOracleAsmSecretIdValue;
    }
    final securityDbEncryptionValue = securityDbEncryption;
    if (securityDbEncryptionValue != null) {
      map['securityDbEncryption'] = securityDbEncryptionValue;
    }
    final securityDbEncryptionNameValue = securityDbEncryptionName;
    if (securityDbEncryptionNameValue != null) {
      map['securityDbEncryptionName'] = securityDbEncryptionNameValue;
    }
    final spatialDataOptionToGeoJsonFunctionNameValue =
        spatialDataOptionToGeoJsonFunctionName;
    if (spatialDataOptionToGeoJsonFunctionNameValue != null) {
      map['spatialDataOptionToGeoJsonFunctionName'] =
          spatialDataOptionToGeoJsonFunctionNameValue;
    }
    final standbyDelayTimeValue = standbyDelayTime;
    if (standbyDelayTimeValue != null) {
      map['standbyDelayTime'] = standbyDelayTimeValue;
    }
    final trimSpaceInCharValue = trimSpaceInChar;
    if (trimSpaceInCharValue != null) {
      map['trimSpaceInChar'] = trimSpaceInCharValue;
    }
    final useAlternateFolderForOnlineValue = useAlternateFolderForOnline;
    if (useAlternateFolderForOnlineValue != null) {
      map['useAlternateFolderForOnline'] = useAlternateFolderForOnlineValue;
    }
    final useBfileValue = useBfile;
    if (useBfileValue != null) {
      map['useBfile'] = useBfileValue;
    }
    final useDirectPathFullLoadValue = useDirectPathFullLoad;
    if (useDirectPathFullLoadValue != null) {
      map['useDirectPathFullLoad'] = useDirectPathFullLoadValue;
    }
    final useLogminerReaderValue = useLogminerReader;
    if (useLogminerReaderValue != null) {
      map['useLogminerReader'] = useLogminerReaderValue;
    }
    final usePathPrefixValue = usePathPrefix;
    if (usePathPrefixValue != null) {
      map['usePathPrefix'] = usePathPrefixValue;
    }
    return map;
  }

  factory EndpointOracleSettings.fromMap(Map<String, dynamic> map) {
    return EndpointOracleSettings(
      accessAlternateDirectly: map['accessAlternateDirectly'] == null
          ? null
          : map['accessAlternateDirectly'] as bool,
      addSupplementalLogging: map['addSupplementalLogging'] == null
          ? null
          : map['addSupplementalLogging'] as bool,
      additionalArchivedLogDestId: map['additionalArchivedLogDestId'] == null
          ? null
          : map['additionalArchivedLogDestId'] as int,
      allowSelectedNestedTables: map['allowSelectedNestedTables'] == null
          ? null
          : map['allowSelectedNestedTables'] as bool,
      archivedLogDestId: map['archivedLogDestId'] == null
          ? null
          : map['archivedLogDestId'] as int,
      archivedLogsOnly: map['archivedLogsOnly'] == null
          ? null
          : map['archivedLogsOnly'] as bool,
      asmPassword:
          map['asmPassword'] == null ? null : map['asmPassword'] as String,
      asmServer: map['asmServer'] == null ? null : map['asmServer'] as String,
      asmUser: map['asmUser'] == null ? null : map['asmUser'] as String,
      authenticationMethod: map['authenticationMethod'] == null
          ? null
          : map['authenticationMethod'] as String,
      charLengthSemantics: map['charLengthSemantics'] == null
          ? null
          : map['charLengthSemantics'] as String,
      convertTimestampWithZoneToUtc:
          map['convertTimestampWithZoneToUtc'] == null
              ? null
              : map['convertTimestampWithZoneToUtc'] as bool,
      directPathNoLog: map['directPathNoLog'] == null
          ? null
          : map['directPathNoLog'] as bool,
      directPathParallelLoad: map['directPathParallelLoad'] == null
          ? null
          : map['directPathParallelLoad'] as bool,
      enableHomogenousTablespace: map['enableHomogenousTablespace'] == null
          ? null
          : map['enableHomogenousTablespace'] as bool,
      extraArchivedLogDestIds: map['extraArchivedLogDestIds'] == null
          ? null
          : (map['extraArchivedLogDestIds'] as List).cast<int>(),
      failTaskOnLobTruncation: map['failTaskOnLobTruncation'] == null
          ? null
          : map['failTaskOnLobTruncation'] as bool,
      numberDatatypeScale: map['numberDatatypeScale'] == null
          ? null
          : map['numberDatatypeScale'] as int,
      openTransactionWindow: map['openTransactionWindow'] == null
          ? null
          : map['openTransactionWindow'] as int,
      oraclePathPrefix: map['oraclePathPrefix'] == null
          ? null
          : map['oraclePathPrefix'] as String,
      parallelAsmReadThreads: map['parallelAsmReadThreads'] == null
          ? null
          : map['parallelAsmReadThreads'] as int,
      readAheadBlocks:
          map['readAheadBlocks'] == null ? null : map['readAheadBlocks'] as int,
      readTableSpaceName: map['readTableSpaceName'] == null
          ? null
          : map['readTableSpaceName'] as bool,
      replacePathPrefix: map['replacePathPrefix'] == null
          ? null
          : map['replacePathPrefix'] as bool,
      retryInterval:
          map['retryInterval'] == null ? null : map['retryInterval'] as int,
      secretsManagerOracleAsmAccessRoleArn:
          map['secretsManagerOracleAsmAccessRoleArn'] == null
              ? null
              : map['secretsManagerOracleAsmAccessRoleArn'] as String,
      secretsManagerOracleAsmSecretId:
          map['secretsManagerOracleAsmSecretId'] == null
              ? null
              : map['secretsManagerOracleAsmSecretId'] as String,
      securityDbEncryption: map['securityDbEncryption'] == null
          ? null
          : map['securityDbEncryption'] as String,
      securityDbEncryptionName: map['securityDbEncryptionName'] == null
          ? null
          : map['securityDbEncryptionName'] as String,
      spatialDataOptionToGeoJsonFunctionName:
          map['spatialDataOptionToGeoJsonFunctionName'] == null
              ? null
              : map['spatialDataOptionToGeoJsonFunctionName'] as String,
      standbyDelayTime: map['standbyDelayTime'] == null
          ? null
          : map['standbyDelayTime'] as int,
      trimSpaceInChar: map['trimSpaceInChar'] == null
          ? null
          : map['trimSpaceInChar'] as bool,
      useAlternateFolderForOnline: map['useAlternateFolderForOnline'] == null
          ? null
          : map['useAlternateFolderForOnline'] as bool,
      useBfile: map['useBfile'] == null ? null : map['useBfile'] as bool,
      useDirectPathFullLoad: map['useDirectPathFullLoad'] == null
          ? null
          : map['useDirectPathFullLoad'] as bool,
      useLogminerReader: map['useLogminerReader'] == null
          ? null
          : map['useLogminerReader'] as bool,
      usePathPrefix:
          map['usePathPrefix'] == null ? null : map['usePathPrefix'] as String,
    );
  }
}
