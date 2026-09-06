// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item.dart';

/// Azure File Storage write settings.
class AzureFileStorageWriteSettings {
  /// The type of copy behavior for copy sink.
  final pulumi.Input<dynamic>? copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<List<MetadataItem>?>? metadata;
  /// The write setting type.
  /// Expected value is 'AzureFileStorageWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureFileStorageWriteSettings].
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [type] The write setting type.
  const AzureFileStorageWriteSettings({
    this.copyBehavior,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.metadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyBehavior': ?copyBehavior,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<MetadataItem>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<MetadataItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AzureFileStorageWriteSettings.fromMap(Map<String, dynamic> map) {
    return AzureFileStorageWriteSettings(
      copyBehavior: (() { final guardedValue = map['copyBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataItem>(guardedValue, (value) => MetadataItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
