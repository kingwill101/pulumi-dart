// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item_response.dart';

/// Sftp write settings.
class SftpWriteSettingsResponse {
  /// The type of copy behavior for copy sink.
  final pulumi.Input<dynamic>? copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<List<MetadataItemResponse>>? metadata;
  /// Specifies the timeout for writing each chunk to SFTP server. Default value: 01:00:00 (one hour). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? operationTimeout;
  /// The write setting type.
  /// Expected value is 'SftpWriteSettings'.
  final pulumi.Input<String> type;
  /// Upload to temporary file(s) and rename. Disable this option if your SFTP server doesn't support rename operation. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useTempFileRename;

  /// Creates a new [SftpWriteSettingsResponse].
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [operationTimeout] Specifies the timeout for writing each chunk to SFTP server. Default value: 01:00:00 (one hour). Type: string (or Expression with resultType string).
  /// [type] The write setting type.
  /// [useTempFileRename] Upload to temporary file(s) and rename. Disable this option if your SFTP server doesn't support rename operation. Type: boolean (or Expression with resultType boolean).
  const SftpWriteSettingsResponse({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<MetadataItemResponse>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<MetadataItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operationTimeout': ?operationTimeout,
      'type': type,
      'useTempFileRename': ?useTempFileRename,
    };
  }

  factory SftpWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SftpWriteSettingsResponse(
      copyBehavior: (() { final guardedValue = map['copyBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataItemResponse>(guardedValue, (value) => MetadataItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operationTimeout: (() { final guardedValue = map['operationTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useTempFileRename: (() { final guardedValue = map['useTempFileRename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
