// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_upsert_settings_response.dart';

/// A copy activity SQL server sink.
class SqlServerSinkResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// SQL pre-copy script. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? preCopyScript;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;
  /// SQL writer stored procedure name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sqlWriterStoredProcedureName;
  /// SQL writer table type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sqlWriterTableType;
  /// Whether to use table lock during bulk copy. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? sqlWriterUseTableLock;
  /// SQL stored procedure parameters.
  final pulumi.Input<dynamic>? storedProcedureParameters;
  /// The stored procedure parameter name of the table type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? storedProcedureTableTypeParameterName;
  /// The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tableOption;
  /// Copy sink type.
  /// Expected value is 'SqlServerSink'.
  final pulumi.Input<String> type;
  /// SQL upsert settings.
  final pulumi.Input<SqlUpsertSettingsResponse>? upsertSettings;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;
  /// Write behavior when copying data into sql server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? writeBehavior;

  /// Creates a new [SqlServerSinkResponse].
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
  /// [writeBehavior] Write behavior when copying data into sql server. Type: string (or Expression with resultType string).
  SqlServerSinkResponse({
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
      'upsertSettings': ?pulumi.Input.mapOptionalInputValue<SqlUpsertSettingsResponse, Map<String, dynamic>>(upsertSettings, (value) => value.toMap()),
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': ?writeBehavior,
    };
  }

  factory SqlServerSinkResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerSinkResponse(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']).input(),
      preCopyScript: map['preCopyScript'] == null ? null : (map['preCopyScript']).input(),
      sinkRetryCount: map['sinkRetryCount'] == null ? null : (map['sinkRetryCount']).input(),
      sinkRetryWait: map['sinkRetryWait'] == null ? null : (map['sinkRetryWait']).input(),
      sqlWriterStoredProcedureName: map['sqlWriterStoredProcedureName'] == null ? null : (map['sqlWriterStoredProcedureName']).input(),
      sqlWriterTableType: map['sqlWriterTableType'] == null ? null : (map['sqlWriterTableType']).input(),
      sqlWriterUseTableLock: map['sqlWriterUseTableLock'] == null ? null : (map['sqlWriterUseTableLock']).input(),
      storedProcedureParameters: map['storedProcedureParameters'] == null ? null : (map['storedProcedureParameters']).input(),
      storedProcedureTableTypeParameterName: map['storedProcedureTableTypeParameterName'] == null ? null : (map['storedProcedureTableTypeParameterName']).input(),
      tableOption: map['tableOption'] == null ? null : (map['tableOption']).input(),
      type: (map['type'] as String).input(),
      upsertSettings: map['upsertSettings'] == null ? null : (SqlUpsertSettingsResponse.fromMap((map['upsertSettings'] as Map).cast<String, dynamic>())).input(),
      writeBatchSize: map['writeBatchSize'] == null ? null : (map['writeBatchSize']).input(),
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : (map['writeBatchTimeout']).input(),
      writeBehavior: map['writeBehavior'] == null ? null : (map['writeBehavior']).input(),
    );
  }
}

