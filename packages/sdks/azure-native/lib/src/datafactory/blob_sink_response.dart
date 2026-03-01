// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item_response.dart';

/// A copy activity Azure Blob sink.
class BlobSinkResponse {
  /// Blob writer add header. Type: boolean (or Expression with resultType boolean).
  final dynamic blobWriterAddHeader;
  /// Blob writer date time format. Type: string (or Expression with resultType string).
  final dynamic blobWriterDateTimeFormat;
  /// Blob writer overwrite files. Type: boolean (or Expression with resultType boolean).
  final dynamic blobWriterOverwriteFiles;
  /// The type of copy behavior for copy sink.
  final dynamic copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final List<MetadataItemResponse>? metadata;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'BlobSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;

  /// Creates a new [BlobSinkResponse].
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
  BlobSinkResponse({
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
      'metadata': ?metadata == null ? null : pulumi.Input.encodeList<MetadataItemResponse, Map<String, dynamic>>(metadata!, (value) => value.toMap()),
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory BlobSinkResponse.fromMap(Map<String, dynamic> map) {
    return BlobSinkResponse(
      blobWriterAddHeader: map['blobWriterAddHeader'] == null ? null : map['blobWriterAddHeader'],
      blobWriterDateTimeFormat: map['blobWriterDateTimeFormat'] == null ? null : map['blobWriterDateTimeFormat'],
      blobWriterOverwriteFiles: map['blobWriterOverwriteFiles'] == null ? null : map['blobWriterOverwriteFiles'],
      copyBehavior: map['copyBehavior'] == null ? null : map['copyBehavior'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      metadata: map['metadata'] == null ? null : pulumi.Input.decodeList<MetadataItemResponse>(map['metadata'], (value) => MetadataItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
    );
  }
}

