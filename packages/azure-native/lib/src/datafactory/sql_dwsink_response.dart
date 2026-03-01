// ignore_for_file: unused_element, unnecessary_cast

import 'dwcopy_command_settings_response.dart';
import 'polybase_settings_response.dart';
import 'sql_dwupsert_settings_response.dart';

/// A copy activity SQL Data Warehouse sink.
class SqlDWSinkResponse {
  /// Indicates to use Copy Command to copy data into SQL Data Warehouse. Type: boolean (or Expression with resultType boolean).
  final dynamic allowCopyCommand;
  /// Indicates to use PolyBase to copy data into SQL Data Warehouse when applicable. Type: boolean (or Expression with resultType boolean).
  final dynamic allowPolyBase;
  /// Specifies Copy Command related settings when allowCopyCommand is true.
  final DWCopyCommandSettingsResponse? copyCommandSettings;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Specifies PolyBase-related settings when allowPolyBase is true.
  final PolybaseSettingsResponse? polyBaseSettings;
  /// SQL pre-copy script. Type: string (or Expression with resultType string).
  final dynamic preCopyScript;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Whether to use table lock during bulk copy. Type: boolean (or Expression with resultType boolean).
  final dynamic sqlWriterUseTableLock;
  /// The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  final dynamic tableOption;
  /// Copy sink type.
  /// Expected value is 'SqlDWSink'.
  final String type;
  /// SQL DW upsert settings.
  final SqlDWUpsertSettingsResponse? upsertSettings;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;
  /// Write behavior when copying data into azure SQL DW. Type: SqlDWWriteBehaviorEnum (or Expression with resultType SqlDWWriteBehaviorEnum)
  final dynamic writeBehavior;

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
  SqlDWSinkResponse({
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
      'copyCommandSettings': ?copyCommandSettings == null ? null : copyCommandSettings!.toMap(),
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'polyBaseSettings': ?polyBaseSettings == null ? null : polyBaseSettings!.toMap(),
      'preCopyScript': ?preCopyScript,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'sqlWriterUseTableLock': ?sqlWriterUseTableLock,
      'tableOption': ?tableOption,
      'type': type,
      'upsertSettings': ?upsertSettings == null ? null : upsertSettings!.toMap(),
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': ?writeBehavior,
    };
  }

  factory SqlDWSinkResponse.fromMap(Map<String, dynamic> map) {
    return SqlDWSinkResponse(
      allowCopyCommand: map['allowCopyCommand'] == null ? null : map['allowCopyCommand'],
      allowPolyBase: map['allowPolyBase'] == null ? null : map['allowPolyBase'],
      copyCommandSettings: map['copyCommandSettings'] == null ? null : DWCopyCommandSettingsResponse.fromMap((map['copyCommandSettings'] as Map).cast<String, dynamic>()),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      polyBaseSettings: map['polyBaseSettings'] == null ? null : PolybaseSettingsResponse.fromMap((map['polyBaseSettings'] as Map).cast<String, dynamic>()),
      preCopyScript: map['preCopyScript'] == null ? null : map['preCopyScript'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      sqlWriterUseTableLock: map['sqlWriterUseTableLock'] == null ? null : map['sqlWriterUseTableLock'],
      tableOption: map['tableOption'] == null ? null : map['tableOption'],
      type: map['type'] as String,
      upsertSettings: map['upsertSettings'] == null ? null : SqlDWUpsertSettingsResponse.fromMap((map['upsertSettings'] as Map).cast<String, dynamic>()),
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
      writeBehavior: map['writeBehavior'] == null ? null : map['writeBehavior'],
    );
  }
}

