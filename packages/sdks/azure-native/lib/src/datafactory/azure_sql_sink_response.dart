// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_upsert_settings_response.dart';

/// A copy activity Azure SQL sink.
class AzureSqlSinkResponse {
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
  /// Expected value is 'AzureSqlSink'.
  final pulumi.Input<String> type;

  /// SQL upsert settings.
  final pulumi.Input<SqlUpsertSettingsResponse>? upsertSettings;

  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;

  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// Write behavior when copying data into Azure SQL. Type: SqlWriteBehaviorEnum (or Expression with resultType SqlWriteBehaviorEnum)
  final pulumi.Input<dynamic>? writeBehavior;

  /// Creates a new [AzureSqlSinkResponse].
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
  /// [writeBehavior] Write behavior when copying data into Azure SQL. Type: SqlWriteBehaviorEnum (or Expression with resultType SqlWriteBehaviorEnum)
  AzureSqlSinkResponse({
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
      'storedProcedureTableTypeParameterName':
          ?storedProcedureTableTypeParameterName,
      'tableOption': ?tableOption,
      'type': type,
      'upsertSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SqlUpsertSettingsResponse,
            Map<String, dynamic>
          >(upsertSettings, (value) => value.toMap()),
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': ?writeBehavior,
    };
  }

  factory AzureSqlSinkResponse.fromMap(Map<String, dynamic> map) {
    return AzureSqlSinkResponse(
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      maxConcurrentConnections: (() {
        final guardedValue = map['maxConcurrentConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      preCopyScript: (() {
        final guardedValue = map['preCopyScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sinkRetryCount: (() {
        final guardedValue = map['sinkRetryCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sinkRetryWait: (() {
        final guardedValue = map['sinkRetryWait'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sqlWriterStoredProcedureName: (() {
        final guardedValue = map['sqlWriterStoredProcedureName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sqlWriterTableType: (() {
        final guardedValue = map['sqlWriterTableType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sqlWriterUseTableLock: (() {
        final guardedValue = map['sqlWriterUseTableLock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      storedProcedureParameters: (() {
        final guardedValue = map['storedProcedureParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      storedProcedureTableTypeParameterName: (() {
        final guardedValue = map['storedProcedureTableTypeParameterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      tableOption: (() {
        final guardedValue = map['tableOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      upsertSettings: (() {
        final guardedValue = map['upsertSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SqlUpsertSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      writeBatchSize: (() {
        final guardedValue = map['writeBatchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      writeBatchTimeout: (() {
        final guardedValue = map['writeBatchTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      writeBehavior: (() {
        final guardedValue = map['writeBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
