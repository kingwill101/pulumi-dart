// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item.dart';

/// Azure data lake store write settings.
class AzureDataLakeStoreWriteSettings {
  /// The type of copy behavior for copy sink.
  final pulumi.Input<dynamic>? copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Specifies the expiry time of the written files. The time is applied to the UTC time zone in the format of "2018-12-01T05:00:00Z". Default value is NULL. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? expiryDateTime;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<List<MetadataItem>>? metadata;
  /// The write setting type.
  /// Expected value is 'AzureDataLakeStoreWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureDataLakeStoreWriteSettings].
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [expiryDateTime] Specifies the expiry time of the written files. The time is applied to the UTC time zone in the format of "2018-12-01T05:00:00Z". Default value is NULL. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [type] The write setting type.
  AzureDataLakeStoreWriteSettings({
    this.copyBehavior,
    this.disableMetricsCollection,
    this.expiryDateTime,
    this.maxConcurrentConnections,
    this.metadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyBehavior': ?copyBehavior,
      'disableMetricsCollection': ?disableMetricsCollection,
      'expiryDateTime': ?expiryDateTime,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<MetadataItem>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<MetadataItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AzureDataLakeStoreWriteSettings.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeStoreWriteSettings(
      copyBehavior: map['copyBehavior'] == null ? null : (map['copyBehavior']).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']).input(),
      expiryDateTime: map['expiryDateTime'] == null ? null : (map['expiryDateTime']).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']).input(),
      metadata: map['metadata'] == null ? null : (pulumi.Input.decodeList<MetadataItem>(map['metadata'], (value) => MetadataItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

