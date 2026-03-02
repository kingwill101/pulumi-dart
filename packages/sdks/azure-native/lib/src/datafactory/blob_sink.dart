// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item.dart';

/// A copy activity Azure Blob sink.
class BlobSink {
  /// Blob writer add header. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? blobWriterAddHeader;
  /// Blob writer date time format. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? blobWriterDateTimeFormat;
  /// Blob writer overwrite files. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? blobWriterOverwriteFiles;
  /// The type of copy behavior for copy sink.
  final pulumi.Input<dynamic>? copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<List<MetadataItem>>? metadata;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'BlobSink'.
  final pulumi.Input<String> type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// Creates a new [BlobSink].
  /// [blobWriterAddHeader] Blob writer add header. Type: boolean (or Expression with resultType boolean).
  /// [blobWriterDateTimeFormat] Blob writer date time format. Type: string (or Expression with resultType string).
  /// [blobWriterOverwriteFiles] Blob writer overwrite files. Type: boolean (or Expression with resultType boolean).
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  BlobSink({
    this.blobWriterAddHeader,
    this.blobWriterDateTimeFormat,
    this.blobWriterOverwriteFiles,
    this.copyBehavior,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.metadata,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobWriterAddHeader': ?blobWriterAddHeader,
      'blobWriterDateTimeFormat': ?blobWriterDateTimeFormat,
      'blobWriterOverwriteFiles': ?blobWriterOverwriteFiles,
      'copyBehavior': ?copyBehavior,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<MetadataItem>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<MetadataItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory BlobSink.fromMap(Map<String, dynamic> map) {
    return BlobSink(
      blobWriterAddHeader: map['blobWriterAddHeader'] == null ? null : (map['blobWriterAddHeader']!).input(),
      blobWriterDateTimeFormat: map['blobWriterDateTimeFormat'] == null ? null : (map['blobWriterDateTimeFormat']!).input(),
      blobWriterOverwriteFiles: map['blobWriterOverwriteFiles'] == null ? null : (map['blobWriterOverwriteFiles']!).input(),
      copyBehavior: map['copyBehavior'] == null ? null : (map['copyBehavior']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      metadata: map['metadata'] == null ? null : (pulumi.Input.decodeList<MetadataItem>(map['metadata']!, (value) => MetadataItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sinkRetryCount: map['sinkRetryCount'] == null ? null : (map['sinkRetryCount']!).input(),
      sinkRetryWait: map['sinkRetryWait'] == null ? null : (map['sinkRetryWait']!).input(),
      type: (map['type'] as String).input(),
      writeBatchSize: map['writeBatchSize'] == null ? null : (map['writeBatchSize']!).input(),
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : (map['writeBatchTimeout']!).input(),
    );
  }
}

