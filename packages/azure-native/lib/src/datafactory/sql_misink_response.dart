// ignore_for_file: unused_element, unnecessary_cast

import 'sql_upsert_settings_response.dart';

/// A copy activity Azure SQL Managed Instance sink.
class SqlMISinkResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// SQL pre-copy script. Type: string (or Expression with resultType string).
  final dynamic preCopyScript;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// SQL writer stored procedure name. Type: string (or Expression with resultType string).
  final dynamic sqlWriterStoredProcedureName;
  /// SQL writer table type. Type: string (or Expression with resultType string).
  final dynamic sqlWriterTableType;
  /// Whether to use table lock during bulk copy. Type: boolean (or Expression with resultType boolean).
  final dynamic sqlWriterUseTableLock;
  /// SQL stored procedure parameters.
  final dynamic storedProcedureParameters;
  /// The stored procedure parameter name of the table type. Type: string (or Expression with resultType string).
  final dynamic storedProcedureTableTypeParameterName;
  /// The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  final dynamic tableOption;
  /// Copy sink type.
  /// Expected value is 'SqlMISink'.
  final String type;
  /// SQL upsert settings.
  final SqlUpsertSettingsResponse? upsertSettings;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;
  /// White behavior when copying data into azure SQL MI. Type: string (or Expression with resultType string)
  final dynamic writeBehavior;

  /// Creates a new [SqlMISinkResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [preCopyScript] SQL pre-copy script. Type: string (or Expression with resultType string).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sqlWriterStoredProcedureName] SQL writer stored procedure name. Type: string (or Expression with resultType string).
  /// [sqlWriterTableType] SQL writer table type. Type: string (or Expression with resultType string).
  /// [sqlWriterUseTableLock] Whether to use table lock during bulk copy. Type: boolean (or Expression with resultType boolean).
  /// [storedProcedureParameters] SQL stored procedure parameters.
  /// [storedProcedureTableTypeParameterName] The stored procedure parameter name of the table type. Type: string (or Expression with resultType string).
  /// [tableOption] The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  /// [type] Copy sink type.
  /// [upsertSettings] SQL upsert settings.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [writeBehavior] White behavior when copying data into azure SQL MI. Type: string (or Expression with resultType string)
  SqlMISinkResponse({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.preCopyScript,
    this.sinkRetryCount,
    this.sinkRetryWait,
    this.sqlWriterStoredProcedureName,
    this.sqlWriterTableType,
    this.sqlWriterUseTableLock,
    this.storedProcedureParameters,
    this.storedProcedureTableTypeParameterName,
    this.tableOption,
    required this.type,
    this.upsertSettings,
    this.writeBatchSize,
    this.writeBatchTimeout,
    this.writeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'preCopyScript': ?preCopyScript,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'sqlWriterStoredProcedureName': ?sqlWriterStoredProcedureName,
      'sqlWriterTableType': ?sqlWriterTableType,
      'sqlWriterUseTableLock': ?sqlWriterUseTableLock,
      'storedProcedureParameters': ?storedProcedureParameters,
      'storedProcedureTableTypeParameterName': ?storedProcedureTableTypeParameterName,
      'tableOption': ?tableOption,
      'type': type,
      'upsertSettings': ?upsertSettings == null ? null : upsertSettings!.toMap(),
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': ?writeBehavior,
    };
  }

  factory SqlMISinkResponse.fromMap(Map<String, dynamic> map) {
    return SqlMISinkResponse(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      preCopyScript: map['preCopyScript'] == null ? null : map['preCopyScript'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      sqlWriterStoredProcedureName: map['sqlWriterStoredProcedureName'] == null ? null : map['sqlWriterStoredProcedureName'],
      sqlWriterTableType: map['sqlWriterTableType'] == null ? null : map['sqlWriterTableType'],
      sqlWriterUseTableLock: map['sqlWriterUseTableLock'] == null ? null : map['sqlWriterUseTableLock'],
      storedProcedureParameters: map['storedProcedureParameters'] == null ? null : map['storedProcedureParameters'],
      storedProcedureTableTypeParameterName: map['storedProcedureTableTypeParameterName'] == null ? null : map['storedProcedureTableTypeParameterName'],
      tableOption: map['tableOption'] == null ? null : map['tableOption'],
      type: map['type'] as String,
      upsertSettings: map['upsertSettings'] == null ? null : SqlUpsertSettingsResponse.fromMap((map['upsertSettings'] as Map).cast<String, dynamic>()),
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
      writeBehavior: map['writeBehavior'] == null ? null : map['writeBehavior'],
    );
  }
}

