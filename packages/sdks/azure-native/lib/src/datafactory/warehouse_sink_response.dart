// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dwcopy_command_settings_response.dart';

/// A copy activity Microsoft Fabric Warehouse sink.
class WarehouseSinkResponse {
  /// Indicates to use Copy Command to copy data into SQL Data Warehouse. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? allowCopyCommand;
  /// Specifies Copy Command related settings when allowCopyCommand is true.
  final pulumi.Input<DWCopyCommandSettingsResponse>? copyCommandSettings;
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
  /// The option to handle sink table, such as autoCreate. For now only 'autoCreate' value is supported. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tableOption;
  /// Copy sink type.
  /// Expected value is 'WarehouseSink'.
  final pulumi.Input<String> type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;
  /// Write behavior when copying data into azure Microsoft Fabric Data Warehouse. Type: DWWriteBehaviorEnum (or Expression with resultType DWWriteBehaviorEnum)
  final pulumi.Input<dynamic>? writeBehavior;

  /// Creates a new [WarehouseSinkResponse].
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
  WarehouseSinkResponse({
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
      'copyCommandSettings': ?pulumi.Input.mapOptionalInputValue<DWCopyCommandSettingsResponse, Map<String, dynamic>>(copyCommandSettings, (value) => value.toMap()),
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

  factory WarehouseSinkResponse.fromMap(Map<String, dynamic> map) {
    return WarehouseSinkResponse(
      allowCopyCommand: map['allowCopyCommand'] == null ? null : (map['allowCopyCommand']).input(),
      copyCommandSettings: map['copyCommandSettings'] == null ? null : (DWCopyCommandSettingsResponse.fromMap((map['copyCommandSettings'] as Map).cast<String, dynamic>())).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']).input(),
      preCopyScript: map['preCopyScript'] == null ? null : (map['preCopyScript']).input(),
      sinkRetryCount: map['sinkRetryCount'] == null ? null : (map['sinkRetryCount']).input(),
      sinkRetryWait: map['sinkRetryWait'] == null ? null : (map['sinkRetryWait']).input(),
      tableOption: map['tableOption'] == null ? null : (map['tableOption']).input(),
      type: (map['type'] as String).input(),
      writeBatchSize: map['writeBatchSize'] == null ? null : (map['writeBatchSize']).input(),
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : (map['writeBatchTimeout']).input(),
      writeBehavior: map['writeBehavior'] == null ? null : (map['writeBehavior']).input(),
    );
  }
}

