// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item_response.dart';

/// Azure blob write settings.
class AzureBlobStorageWriteSettingsResponse {
  /// Indicates the block size(MB) when writing data to blob. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? blockSizeInMB;
  /// The type of copy behavior for copy sink.
  final pulumi.Input<dynamic>? copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<List<MetadataItemResponse>>? metadata;
  /// The write setting type.
  /// Expected value is 'AzureBlobStorageWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureBlobStorageWriteSettingsResponse].
  /// [blockSizeInMB] Indicates the block size(MB) when writing data to blob. Type: integer (or Expression with resultType integer).
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [type] The write setting type.
  AzureBlobStorageWriteSettingsResponse({
    this.blockSizeInMB,
    this.copyBehavior,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.metadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockSizeInMB': ?blockSizeInMB,
      'copyBehavior': ?copyBehavior,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<MetadataItemResponse>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<MetadataItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AzureBlobStorageWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageWriteSettingsResponse(
      blockSizeInMB: map['blockSizeInMB'] == null ? null : (map['blockSizeInMB']!).input(),
      copyBehavior: map['copyBehavior'] == null ? null : (map['copyBehavior']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      metadata: map['metadata'] == null ? null : (pulumi.Input.decodeList<MetadataItemResponse>(map['metadata']!, (value) => MetadataItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

