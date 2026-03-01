// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob_fswrite_settings.dart';
import 'iceberg_write_settings.dart';

/// A copy activity Iceberg sink.
class IcebergSink {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Iceberg format settings.
  final IcebergWriteSettings? formatSettings;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Iceberg store settings.
  final AzureBlobFSWriteSettings? storeSettings;
  /// Copy sink type.
  /// Expected value is 'IcebergSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;

  /// Creates a new [IcebergSink].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [formatSettings] Iceberg format settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [storeSettings] Iceberg store settings.
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  IcebergSink({
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
      'formatSettings': ?formatSettings == null ? null : formatSettings!.toMap(),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'storeSettings': ?storeSettings == null ? null : storeSettings!.toMap(),
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory IcebergSink.fromMap(Map<String, dynamic> map) {
    return IcebergSink(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      formatSettings: map['formatSettings'] == null ? null : IcebergWriteSettings.fromMap((map['formatSettings'] as Map).cast<String, dynamic>()),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      storeSettings: map['storeSettings'] == null ? null : AzureBlobFSWriteSettings.fromMap((map['storeSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
    );
  }
}

