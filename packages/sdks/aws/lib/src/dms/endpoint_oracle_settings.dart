// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointOracleSettings {
  /// Set this attribute to `false` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source.
  final pulumi.Input<bool>? accessAlternateDirectly;
  /// Set this attribute to set up table-level supplemental logging for the Oracle database. This attribute enables PRIMARY KEY supplemental logging on all tables selected for a migration task.
  final pulumi.Input<bool>? addSupplementalLogging;
  /// Set this attribute with `archived_log_dest_id` in a primary/standby setup. This attribute is useful in the case of a switchover.
  final pulumi.Input<int>? additionalArchivedLogDestId;
  /// Set this attribute to `true` to enable replication of Oracle tables containing columns that are nested tables or defined types.
  final pulumi.Input<bool>? allowSelectedNestedTables;
  /// Specifies the ID of the destination for the archived redo logs. This value should be the same as a number in the dest_id column of the v$archived_log view.
  final pulumi.Input<int>? archivedLogDestId;
  /// When this field is set to `true`, AWS DMS only accesses the archived redo logs.
  final pulumi.Input<bool>? archivedLogsOnly;
  /// For an Oracle source endpoint, your Oracle Automatic Storage Management (ASM) password.
  final pulumi.Input<String>? asmPassword;
  /// For an Oracle source endpoint, your ASM server address.
  final pulumi.Input<String>? asmServer;
  /// For an Oracle source endpoint, your ASM user name.
  final pulumi.Input<String>? asmUser;
  /// Authentication mechanism to access the Oracle source endpoint. Default is `password`. Valid values are `password` and `kerberos`.
  final pulumi.Input<String>? authenticationMethod;
  /// Specifies whether the length of a character column is in bytes or in characters. Valid values are `default`, `char`, and `byte`.
  final pulumi.Input<String>? charLengthSemantics;
  /// When `true`, converts timestamps with the timezone datatype to their UTC value.
  final pulumi.Input<bool>? convertTimestampWithZoneToUtc;
  /// When set to `true`, this attribute helps to increase the commit rate on the Oracle target database by writing directly to tables and not writing a trail to database logs.
  final pulumi.Input<bool>? directPathNoLog;
  /// When set to `true`, this attribute specifies a parallel load when use_direct_path_full_load is set to true.
  final pulumi.Input<bool>? directPathParallelLoad;
  /// Set this attribute to enable homogenous tablespace replication and create existing tables or indexes under the same tablespace on the target.
  final pulumi.Input<bool>? enableHomogenousTablespace;
  /// Specifies the IDs of one more destinations for one or more archived redo logs. These IDs are the values of the dest_id column in the v$archived_log view.
  final pulumi.Input<List<int>>? extraArchivedLogDestIds;
  /// When set to `true`, this attribute causes a task to fail if the actual size of an LOB column is greater than the specified lob_max_size.
  final pulumi.Input<bool>? failTaskOnLobTruncation;
  /// Specifies the number scale.
  final pulumi.Input<int>? numberDatatypeScale;
  /// The timeframe in minutes to check for open transactions for a CDC-only task. You can specify an integer value between 0 (the default) and 240 (the maximum).
  final pulumi.Input<int>? openTransactionWindow;
  /// Set this string attribute to the required value in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This value specifies the default Oracle root used to access the redo logs.
  final pulumi.Input<String>? oraclePathPrefix;
  /// Set this attribute to change the number of threads that DMS configures to perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can specify an integer value between 2 (the default) and 8 (the maximum).
  final pulumi.Input<int>? parallelAsmReadThreads;
  /// Set this attribute to change the number of read-ahead blocks that DMS configures to perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can specify an integer value between 1000 (the default) and 200,000 (the maximum).
  final pulumi.Input<int>? readAheadBlocks;
  /// When set to `true`, this attribute supports tablespace replication.
  final pulumi.Input<bool>? readTableSpaceName;
  /// Set this attribute to `true` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This setting tells DMS instance to replace the default Oracle root with the specified `use_path_prefix` setting to access the redo logs.
  final pulumi.Input<bool>? replacePathPrefix;
  /// Specifies the number of seconds that the system waits before resending a query.
  final pulumi.Input<int>? retryInterval;
  /// Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full ARN of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the `secrets_manager_oracle_asm_secret_id`.
  final pulumi.Input<String>? secretsManagerOracleAsmAccessRoleArn;
  /// Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full ARN, partial ARN, or friendly name of the secret that contains the Oracle ASM connection details for the Oracle endpoint.
  final pulumi.Input<String>? secretsManagerOracleAsmSecretId;
  /// For an Oracle source endpoint, the transparent data encryption (TDE) password required by AWM DMS to access Oracle redo logs encrypted by TDE using Binary Reader.
  final pulumi.Input<String>? securityDbEncryption;
  /// For an Oracle source endpoint, the name of a key used for the transparent data encryption (TDE) of the columns and tablespaces in an Oracle source database that is encrypted using TDE.
  final pulumi.Input<String>? securityDbEncryptionName;
  /// Use this attribute to convert SDO_GEOMETRY to GEOJSON format. By default, DMS calls the SDO2GEOJSON custom function if present and accessible.
  final pulumi.Input<String>? spatialDataOptionToGeoJsonFunctionName;
  /// Use this attribute to specify a time in minutes for the delay in standby sync. If the source is an Oracle Active Data Guard standby database, use this attribute to specify the time lag between primary and standby databases.
  final pulumi.Input<int>? standbyDelayTime;
  /// Use this attribute to trim data on CHAR and NCHAR data types during migration. The default value is `true`.
  final pulumi.Input<bool>? trimSpaceInChar;
  /// Set this attribute to `true` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This tells the DMS instance to use any specified prefix replacement to access all online redo logs.
  final pulumi.Input<bool>? useAlternateFolderForOnline;
  /// Set this attribute to `true` to capture change data using the Binary Reader utility. Set `use_logminer_reader` to `false` to set this attribute to `true`.
  final pulumi.Input<bool>? useBfile;
  /// Set this attribute to `true` to have AWS DMS use a direct path full load. Specify this value to use the direct path protocol in the Oracle Call Interface (OCI).
  final pulumi.Input<bool>? useDirectPathFullLoad;
  /// Set this attribute to `true` to capture change data using the Oracle LogMiner utility (the default). Set this attribute to `false` if you want to access the redo logs as a binary file.
  final pulumi.Input<bool>? useLogminerReader;
  /// Set this string attribute to the required value in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This value specifies the path prefix used to replace the default Oracle root to access the redo logs.
  final pulumi.Input<String>? usePathPrefix;

  /// Creates a new [EndpointOracleSettings].
  /// [accessAlternateDirectly] Set this attribute to `false` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source.
  /// [addSupplementalLogging] Set this attribute to set up table-level supplemental logging for the Oracle database. This attribute enables PRIMARY KEY supplemental logging on all tables selected for a migration task.
  /// [additionalArchivedLogDestId] Set this attribute with `archived_log_dest_id` in a primary/standby setup. This attribute is useful in the case of a switchover.
  /// [allowSelectedNestedTables] Set this attribute to `true` to enable replication of Oracle tables containing columns that are nested tables or defined types.
  /// [archivedLogDestId] Specifies the ID of the destination for the archived redo logs. This value should be the same as a number in the dest_id column of the v$archived_log view.
  /// [archivedLogsOnly] When this field is set to `true`, AWS DMS only accesses the archived redo logs.
  /// [asmPassword] For an Oracle source endpoint, your Oracle Automatic Storage Management (ASM) password.
  /// [asmServer] For an Oracle source endpoint, your ASM server address.
  /// [asmUser] For an Oracle source endpoint, your ASM user name.
  /// [authenticationMethod] Authentication mechanism to access the Oracle source endpoint. Default is `password`. Valid values are `password` and `kerberos`.
  /// [charLengthSemantics] Specifies whether the length of a character column is in bytes or in characters. Valid values are `default`, `char`, and `byte`.
  /// [convertTimestampWithZoneToUtc] When `true`, converts timestamps with the timezone datatype to their UTC value.
  /// [directPathNoLog] When set to `true`, this attribute helps to increase the commit rate on the Oracle target database by writing directly to tables and not writing a trail to database logs.
  /// [directPathParallelLoad] When set to `true`, this attribute specifies a parallel load when use_direct_path_full_load is set to true.
  /// [enableHomogenousTablespace] Set this attribute to enable homogenous tablespace replication and create existing tables or indexes under the same tablespace on the target.
  /// [extraArchivedLogDestIds] Specifies the IDs of one more destinations for one or more archived redo logs. These IDs are the values of the dest_id column in the v$archived_log view.
  /// [failTaskOnLobTruncation] When set to `true`, this attribute causes a task to fail if the actual size of an LOB column is greater than the specified lob_max_size.
  /// [numberDatatypeScale] Specifies the number scale.
  /// [openTransactionWindow] The timeframe in minutes to check for open transactions for a CDC-only task. You can specify an integer value between 0 (the default) and 240 (the maximum).
  /// [oraclePathPrefix] Set this string attribute to the required value in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This value specifies the default Oracle root used to access the redo logs.
  /// [parallelAsmReadThreads] Set this attribute to change the number of threads that DMS configures to perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can specify an integer value between 2 (the default) and 8 (the maximum).
  /// [readAheadBlocks] Set this attribute to change the number of read-ahead blocks that DMS configures to perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can specify an integer value between 1000 (the default) and 200,000 (the maximum).
  /// [readTableSpaceName] When set to `true`, this attribute supports tablespace replication.
  /// [replacePathPrefix] Set this attribute to `true` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This setting tells DMS instance to replace the default Oracle root with the specified `use_path_prefix` setting to access the redo logs.
  /// [retryInterval] Specifies the number of seconds that the system waits before resending a query.
  /// [secretsManagerOracleAsmAccessRoleArn] Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full ARN of the IAM role that specifies AWS DMS as the trusted entity and grants the required permissions to access the `secrets_manager_oracle_asm_secret_id`.
  /// [secretsManagerOracleAsmSecretId] Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full ARN, partial ARN, or friendly name of the secret that contains the Oracle ASM connection details for the Oracle endpoint.
  /// [securityDbEncryption] For an Oracle source endpoint, the transparent data encryption (TDE) password required by AWM DMS to access Oracle redo logs encrypted by TDE using Binary Reader.
  /// [securityDbEncryptionName] For an Oracle source endpoint, the name of a key used for the transparent data encryption (TDE) of the columns and tablespaces in an Oracle source database that is encrypted using TDE.
  /// [spatialDataOptionToGeoJsonFunctionName] Use this attribute to convert SDO_GEOMETRY to GEOJSON format. By default, DMS calls the SDO2GEOJSON custom function if present and accessible.
  /// [standbyDelayTime] Use this attribute to specify a time in minutes for the delay in standby sync. If the source is an Oracle Active Data Guard standby database, use this attribute to specify the time lag between primary and standby databases.
  /// [trimSpaceInChar] Use this attribute to trim data on CHAR and NCHAR data types during migration. The default value is `true`.
  /// [useAlternateFolderForOnline] Set this attribute to `true` in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This tells the DMS instance to use any specified prefix replacement to access all online redo logs.
  /// [useBfile] Set this attribute to `true` to capture change data using the Binary Reader utility. Set `use_logminer_reader` to `false` to set this attribute to `true`.
  /// [useDirectPathFullLoad] Set this attribute to `true` to have AWS DMS use a direct path full load. Specify this value to use the direct path protocol in the Oracle Call Interface (OCI).
  /// [useLogminerReader] Set this attribute to `true` to capture change data using the Oracle LogMiner utility (the default). Set this attribute to `false` if you want to access the redo logs as a binary file.
  /// [usePathPrefix] Set this string attribute to the required value in order to use the Binary Reader to capture change data for an Amazon RDS for Oracle as the source. This value specifies the path prefix used to replace the default Oracle root to access the redo logs.
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
    return <String, dynamic>{
      'accessAlternateDirectly': ?accessAlternateDirectly,
      'addSupplementalLogging': ?addSupplementalLogging,
      'additionalArchivedLogDestId': ?additionalArchivedLogDestId,
      'allowSelectedNestedTables': ?allowSelectedNestedTables,
      'archivedLogDestId': ?archivedLogDestId,
      'archivedLogsOnly': ?archivedLogsOnly,
      'asmPassword': ?asmPassword,
      'asmServer': ?asmServer,
      'asmUser': ?asmUser,
      'authenticationMethod': ?authenticationMethod,
      'charLengthSemantics': ?charLengthSemantics,
      'convertTimestampWithZoneToUtc': ?convertTimestampWithZoneToUtc,
      'directPathNoLog': ?directPathNoLog,
      'directPathParallelLoad': ?directPathParallelLoad,
      'enableHomogenousTablespace': ?enableHomogenousTablespace,
      'extraArchivedLogDestIds': ?extraArchivedLogDestIds,
      'failTaskOnLobTruncation': ?failTaskOnLobTruncation,
      'numberDatatypeScale': ?numberDatatypeScale,
      'openTransactionWindow': ?openTransactionWindow,
      'oraclePathPrefix': ?oraclePathPrefix,
      'parallelAsmReadThreads': ?parallelAsmReadThreads,
      'readAheadBlocks': ?readAheadBlocks,
      'readTableSpaceName': ?readTableSpaceName,
      'replacePathPrefix': ?replacePathPrefix,
      'retryInterval': ?retryInterval,
      'secretsManagerOracleAsmAccessRoleArn': ?secretsManagerOracleAsmAccessRoleArn,
      'secretsManagerOracleAsmSecretId': ?secretsManagerOracleAsmSecretId,
      'securityDbEncryption': ?securityDbEncryption,
      'securityDbEncryptionName': ?securityDbEncryptionName,
      'spatialDataOptionToGeoJsonFunctionName': ?spatialDataOptionToGeoJsonFunctionName,
      'standbyDelayTime': ?standbyDelayTime,
      'trimSpaceInChar': ?trimSpaceInChar,
      'useAlternateFolderForOnline': ?useAlternateFolderForOnline,
      'useBfile': ?useBfile,
      'useDirectPathFullLoad': ?useDirectPathFullLoad,
      'useLogminerReader': ?useLogminerReader,
      'usePathPrefix': ?usePathPrefix,
    };
  }

  factory EndpointOracleSettings.fromMap(Map<String, dynamic> map) {
    return EndpointOracleSettings(
      accessAlternateDirectly: map['accessAlternateDirectly'] == null ? null : ((map['accessAlternateDirectly'] as bool).input()).input(),
      addSupplementalLogging: map['addSupplementalLogging'] == null ? null : ((map['addSupplementalLogging'] as bool).input()).input(),
      additionalArchivedLogDestId: map['additionalArchivedLogDestId'] == null ? null : ((map['additionalArchivedLogDestId'] as int).input()).input(),
      allowSelectedNestedTables: map['allowSelectedNestedTables'] == null ? null : ((map['allowSelectedNestedTables'] as bool).input()).input(),
      archivedLogDestId: map['archivedLogDestId'] == null ? null : ((map['archivedLogDestId'] as int).input()).input(),
      archivedLogsOnly: map['archivedLogsOnly'] == null ? null : ((map['archivedLogsOnly'] as bool).input()).input(),
      asmPassword: map['asmPassword'] == null ? null : ((map['asmPassword'] as String).input()).input(),
      asmServer: map['asmServer'] == null ? null : ((map['asmServer'] as String).input()).input(),
      asmUser: map['asmUser'] == null ? null : ((map['asmUser'] as String).input()).input(),
      authenticationMethod: map['authenticationMethod'] == null ? null : ((map['authenticationMethod'] as String).input()).input(),
      charLengthSemantics: map['charLengthSemantics'] == null ? null : ((map['charLengthSemantics'] as String).input()).input(),
      convertTimestampWithZoneToUtc: map['convertTimestampWithZoneToUtc'] == null ? null : ((map['convertTimestampWithZoneToUtc'] as bool).input()).input(),
      directPathNoLog: map['directPathNoLog'] == null ? null : ((map['directPathNoLog'] as bool).input()).input(),
      directPathParallelLoad: map['directPathParallelLoad'] == null ? null : ((map['directPathParallelLoad'] as bool).input()).input(),
      enableHomogenousTablespace: map['enableHomogenousTablespace'] == null ? null : ((map['enableHomogenousTablespace'] as bool).input()).input(),
      extraArchivedLogDestIds: map['extraArchivedLogDestIds'] == null ? null : (((map['extraArchivedLogDestIds'] as List).cast<int>()).input()).input(),
      failTaskOnLobTruncation: map['failTaskOnLobTruncation'] == null ? null : ((map['failTaskOnLobTruncation'] as bool).input()).input(),
      numberDatatypeScale: map['numberDatatypeScale'] == null ? null : ((map['numberDatatypeScale'] as int).input()).input(),
      openTransactionWindow: map['openTransactionWindow'] == null ? null : ((map['openTransactionWindow'] as int).input()).input(),
      oraclePathPrefix: map['oraclePathPrefix'] == null ? null : ((map['oraclePathPrefix'] as String).input()).input(),
      parallelAsmReadThreads: map['parallelAsmReadThreads'] == null ? null : ((map['parallelAsmReadThreads'] as int).input()).input(),
      readAheadBlocks: map['readAheadBlocks'] == null ? null : ((map['readAheadBlocks'] as int).input()).input(),
      readTableSpaceName: map['readTableSpaceName'] == null ? null : ((map['readTableSpaceName'] as bool).input()).input(),
      replacePathPrefix: map['replacePathPrefix'] == null ? null : ((map['replacePathPrefix'] as bool).input()).input(),
      retryInterval: map['retryInterval'] == null ? null : ((map['retryInterval'] as int).input()).input(),
      secretsManagerOracleAsmAccessRoleArn: map['secretsManagerOracleAsmAccessRoleArn'] == null ? null : ((map['secretsManagerOracleAsmAccessRoleArn'] as String).input()).input(),
      secretsManagerOracleAsmSecretId: map['secretsManagerOracleAsmSecretId'] == null ? null : ((map['secretsManagerOracleAsmSecretId'] as String).input()).input(),
      securityDbEncryption: map['securityDbEncryption'] == null ? null : ((map['securityDbEncryption'] as String).input()).input(),
      securityDbEncryptionName: map['securityDbEncryptionName'] == null ? null : ((map['securityDbEncryptionName'] as String).input()).input(),
      spatialDataOptionToGeoJsonFunctionName: map['spatialDataOptionToGeoJsonFunctionName'] == null ? null : ((map['spatialDataOptionToGeoJsonFunctionName'] as String).input()).input(),
      standbyDelayTime: map['standbyDelayTime'] == null ? null : ((map['standbyDelayTime'] as int).input()).input(),
      trimSpaceInChar: map['trimSpaceInChar'] == null ? null : ((map['trimSpaceInChar'] as bool).input()).input(),
      useAlternateFolderForOnline: map['useAlternateFolderForOnline'] == null ? null : ((map['useAlternateFolderForOnline'] as bool).input()).input(),
      useBfile: map['useBfile'] == null ? null : ((map['useBfile'] as bool).input()).input(),
      useDirectPathFullLoad: map['useDirectPathFullLoad'] == null ? null : ((map['useDirectPathFullLoad'] as bool).input()).input(),
      useLogminerReader: map['useLogminerReader'] == null ? null : ((map['useLogminerReader'] as bool).input()).input(),
      usePathPrefix: map['usePathPrefix'] == null ? null : ((map['usePathPrefix'] as String).input()).input(),
    );
  }
}

