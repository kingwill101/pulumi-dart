// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_fswrite_settings.dart';
import 'orc_write_settings.dart';

/// A copy activity ORC sink.
class OrcSink {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// ORC format settings.
  final pulumi.Input<OrcWriteSettings>? formatSettings;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;
  /// ORC store settings.
  final pulumi.Input<AzureBlobFSWriteSettings>? storeSettings;
  /// Copy sink type.
  /// Expected value is 'OrcSink'.
  final pulumi.Input<String> type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// Creates a new [OrcSink].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [formatSettings] ORC format settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [storeSettings] ORC store settings.
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  OrcSink({
    this.disableMetricsCollection,
    this.formatSettings,
    this.maxConcurrentConnections,
    this.sinkRetryCount,
    this.sinkRetryWait,
    this.storeSettings,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'formatSettings': ?pulumi.Input.mapOptionalInputValue<OrcWriteSettings, Map<String, dynamic>>(formatSettings, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'storeSettings': ?pulumi.Input.mapOptionalInputValue<AzureBlobFSWriteSettings, Map<String, dynamic>>(storeSettings, (value) => value.toMap()),
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory OrcSink.fromMap(Map<String, dynamic> map) {
    return OrcSink(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      formatSettings: map['formatSettings'] == null ? null : (OrcWriteSettings.fromMap((map['formatSettings']! as Map).cast<String, dynamic>())).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      sinkRetryCount: map['sinkRetryCount'] == null ? null : (map['sinkRetryCount']!).input(),
      sinkRetryWait: map['sinkRetryWait'] == null ? null : (map['sinkRetryWait']!).input(),
      storeSettings: map['storeSettings'] == null ? null : (AzureBlobFSWriteSettings.fromMap((map['storeSettings']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      writeBatchSize: map['writeBatchSize'] == null ? null : (map['writeBatchSize']!).input(),
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : (map['writeBatchTimeout']!).input(),
    );
  }
}

