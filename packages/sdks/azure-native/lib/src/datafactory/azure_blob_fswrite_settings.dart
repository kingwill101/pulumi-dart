// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item.dart';

/// Azure blobFS write settings.
class AzureBlobFSWriteSettings {
  /// Indicates the block size(MB) when writing data to blob. Type: integer (or Expression with resultType integer).
  final dynamic blockSizeInMB;
  /// The type of copy behavior for copy sink.
  final dynamic copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final List<MetadataItem>? metadata;
  /// The write setting type.
  /// Expected value is 'AzureBlobFSWriteSettings'.
  final String type;

  /// Creates a new [AzureBlobFSWriteSettings].
  /// [blockSizeInMB] Indicates the block size(MB) when writing data to blob. Type: integer (or Expression with resultType integer).
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [type] The write setting type.
  AzureBlobFSWriteSettings({
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
      'metadata': ?metadata == null ? null : pulumi.Input.encodeList<MetadataItem, Map<String, dynamic>>(metadata!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AzureBlobFSWriteSettings.fromMap(Map<String, dynamic> map) {
    return AzureBlobFSWriteSettings(
      blockSizeInMB: map['blockSizeInMB'] == null ? null : map['blockSizeInMB'],
      copyBehavior: map['copyBehavior'] == null ? null : map['copyBehavior'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      metadata: map['metadata'] == null ? null : pulumi.Input.decodeList<MetadataItem>(map['metadata'], (value) => MetadataItem.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

