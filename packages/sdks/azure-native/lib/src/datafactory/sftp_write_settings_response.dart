// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item_response.dart';

/// Sftp write settings.
class SftpWriteSettingsResponse {
  /// The type of copy behavior for copy sink.
  final dynamic copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final List<MetadataItemResponse>? metadata;
  /// Specifies the timeout for writing each chunk to SFTP server. Default value: 01:00:00 (one hour). Type: string (or Expression with resultType string).
  final dynamic operationTimeout;
  /// The write setting type.
  /// Expected value is 'SftpWriteSettings'.
  final String type;
  /// Upload to temporary file(s) and rename. Disable this option if your SFTP server doesn't support rename operation. Type: boolean (or Expression with resultType boolean).
  final dynamic useTempFileRename;

  /// Creates a new [SftpWriteSettingsResponse].
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [operationTimeout] Specifies the timeout for writing each chunk to SFTP server. Default value: 01:00:00 (one hour). Type: string (or Expression with resultType string).
  /// [type] The write setting type.
  /// [useTempFileRename] Upload to temporary file(s) and rename. Disable this option if your SFTP server doesn't support rename operation. Type: boolean (or Expression with resultType boolean).
  SftpWriteSettingsResponse({
    this.copyBehavior,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.metadata,
    this.operationTimeout,
    required this.type,
    this.useTempFileRename,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyBehavior': ?copyBehavior,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'metadata': ?metadata == null ? null : pulumi.Input.encodeList<MetadataItemResponse, Map<String, dynamic>>(metadata!, (value) => value.toMap()),
      'operationTimeout': ?operationTimeout,
      'type': type,
      'useTempFileRename': ?useTempFileRename,
    };
  }

  factory SftpWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SftpWriteSettingsResponse(
      copyBehavior: map['copyBehavior'] == null ? null : map['copyBehavior'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      metadata: map['metadata'] == null ? null : pulumi.Input.decodeList<MetadataItemResponse>(map['metadata'], (value) => MetadataItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      operationTimeout: map['operationTimeout'] == null ? null : map['operationTimeout'],
      type: map['type'] as String,
      useTempFileRename: map['useTempFileRename'] == null ? null : map['useTempFileRename'],
    );
  }
}

