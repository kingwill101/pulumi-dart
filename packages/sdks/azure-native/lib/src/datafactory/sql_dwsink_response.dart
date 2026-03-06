// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dwcopy_command_settings_response.dart';
import 'polybase_settings_response.dart';
import 'sql_dwupsert_settings_response.dart';

/// A copy activity SQL Data Warehouse sink.
class SqlDWSinkResponse {
  /// Indicates to use Copy Command to copy data into SQL Data Warehouse. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? allowCopyCommand;
  /// Indicates to use PolyBase to copy data into SQL Data Warehouse when applicable. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? allowPolyBase;
  /// Specifies Copy Command related settings when allowCopyCommand is true.
  final pulumi.Input<DWCopyCommandSettingsResponse>? copyCommandSettings;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specifies PolyBase-related settings when allowPolyBase is true.
  final pulumi.Input<PolybaseSettingsResponse>? polyBaseSettings;
  /// SQL pre-copy script. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? preCopyScript;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;
  /// Whether to use table lock during bulk copy. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? sqlWriterUseTableLock;
  /// The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tableOption;
  /// Copy sink type.
  /// Expected value is 'SqlDWSink'.
  final pulumi.Input<String> type;
  /// SQL DW upsert settings.
  final pulumi.Input<SqlDWUpsertSettingsResponse>? upsertSettings;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;
  /// Write behavior when copying data into azure SQL DW. Type: SqlDWWriteBehaviorEnum (or Expression with resultType SqlDWWriteBehaviorEnum)
  final pulumi.Input<dynamic>? writeBehavior;

  /// Creates a new [SqlDWSinkResponse].
  /// [allowCopyCommand] Indicates to use Copy Command to copy data into SQL Data Warehouse. Type: boolean (or Expression with resultType boolean).
  /// [allowPolyBase] Indicates to use PolyBase to copy data into SQL Data Warehouse when applicable. Type: boolean (or Expression with resultType boolean).
  /// [copyCommandSettings] Specifies Copy Command related settings when allowCopyCommand is true.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [polyBaseSettings] Specifies PolyBase-related settings when allowPolyBase is true.
  /// [preCopyScript] SQL pre-copy script. Type: string (or Expression with resultType string).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sqlWriterUseTableLock] Whether to use table lock during bulk copy. Type: boolean (or Expression with resultType boolean).
  /// [tableOption] The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  /// [type] Copy sink type.
  /// [upsertSettings] SQL DW upsert settings.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [writeBehavior] Write behavior when copying data into azure SQL DW. Type: SqlDWWriteBehaviorEnum (or Expression with resultType SqlDWWriteBehaviorEnum)
  const SqlDWSinkResponse({
    this.allowCopyCommand,
    this.allowPolyBase,
    this.copyCommandSettings,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.polyBaseSettings,
    this.preCopyScript,
    this.sinkRetryCount,
    this.sinkRetryWait,
    this.sqlWriterUseTableLock,
    this.tableOption,
    required this.type,
    this.upsertSettings,
    this.writeBatchSize,
    this.writeBatchTimeout,
    this.writeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCopyCommand': ?allowCopyCommand,
      'allowPolyBase': ?allowPolyBase,
      'copyCommandSettings': ?pulumi.Input.mapOptionalInputValue<DWCopyCommandSettingsResponse, Map<String, dynamic>>(copyCommandSettings, (value) => value.toMap()),
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'polyBaseSettings': ?pulumi.Input.mapOptionalInputValue<PolybaseSettingsResponse, Map<String, dynamic>>(polyBaseSettings, (value) => value.toMap()),
      'preCopyScript': ?preCopyScript,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'sqlWriterUseTableLock': ?sqlWriterUseTableLock,
      'tableOption': ?tableOption,
      'type': type,
      'upsertSettings': ?pulumi.Input.mapOptionalInputValue<SqlDWUpsertSettingsResponse, Map<String, dynamic>>(upsertSettings, (value) => value.toMap()),
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': ?writeBehavior,
    };
  }

  factory SqlDWSinkResponse.fromMap(Map<String, dynamic> map) {
    return SqlDWSinkResponse(
      allowCopyCommand: (() { final guardedValue = map['allowCopyCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      allowPolyBase: (() { final guardedValue = map['allowPolyBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      copyCommandSettings: (() { final guardedValue = map['copyCommandSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DWCopyCommandSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      polyBaseSettings: (() { final guardedValue = map['polyBaseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolybaseSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preCopyScript: (() { final guardedValue = map['preCopyScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sinkRetryCount: (() { final guardedValue = map['sinkRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sinkRetryWait: (() { final guardedValue = map['sinkRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sqlWriterUseTableLock: (() { final guardedValue = map['sqlWriterUseTableLock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tableOption: (() { final guardedValue = map['tableOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      upsertSettings: (() { final guardedValue = map['upsertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlDWUpsertSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      writeBatchSize: (() { final guardedValue = map['writeBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      writeBatchTimeout: (() { final guardedValue = map['writeBatchTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      writeBehavior: (() { final guardedValue = map['writeBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

