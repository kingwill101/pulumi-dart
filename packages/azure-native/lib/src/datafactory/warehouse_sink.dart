// ignore_for_file: unused_element, unnecessary_cast

import 'dwcopy_command_settings.dart';

/// A copy activity Microsoft Fabric Warehouse sink.
class WarehouseSink {
  /// Indicates to use Copy Command to copy data into SQL Data Warehouse. Type: boolean (or Expression with resultType boolean).
  final dynamic allowCopyCommand;
  /// Specifies Copy Command related settings when allowCopyCommand is true.
  final DWCopyCommandSettings? copyCommandSettings;
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
  /// The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  final dynamic tableOption;
  /// Copy sink type.
  /// Expected value is 'WarehouseSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;
  /// Write behavior when copying data into azure Microsoft Fabric Data Warehouse. Type: DWWriteBehaviorEnum (or Expression with resultType DWWriteBehaviorEnum)
  final dynamic writeBehavior;

  /// Creates a new [WarehouseSink].
  /// [allowCopyCommand] Indicates to use Copy Command to copy data into SQL Data Warehouse. Type: boolean (or Expression with resultType boolean).
  /// [copyCommandSettings] Specifies Copy Command related settings when allowCopyCommand is true.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [preCopyScript] SQL pre-copy script. Type: string (or Expression with resultType string).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [tableOption] The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [writeBehavior] Write behavior when copying data into azure Microsoft Fabric Data Warehouse. Type: DWWriteBehaviorEnum (or Expression with resultType DWWriteBehaviorEnum)
  WarehouseSink({
    this.allowCopyCommand,
    this.copyCommandSettings,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.preCopyScript,
    this.sinkRetryCount,
    this.sinkRetryWait,
    this.tableOption,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
    this.writeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCopyCommand': ?allowCopyCommand,
      'copyCommandSettings': ?copyCommandSettings == null ? null : copyCommandSettings!.toMap(),
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'preCopyScript': ?preCopyScript,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'tableOption': ?tableOption,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': ?writeBehavior,
    };
  }

  factory WarehouseSink.fromMap(Map<String, dynamic> map) {
    return WarehouseSink(
      allowCopyCommand: map['allowCopyCommand'] == null ? null : map['allowCopyCommand'],
      copyCommandSettings: map['copyCommandSettings'] == null ? null : DWCopyCommandSettings.fromMap((map['copyCommandSettings'] as Map).cast<String, dynamic>()),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      preCopyScript: map['preCopyScript'] == null ? null : map['preCopyScript'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      tableOption: map['tableOption'] == null ? null : map['tableOption'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
      writeBehavior: map['writeBehavior'] == null ? null : map['writeBehavior'],
    );
  }
}

