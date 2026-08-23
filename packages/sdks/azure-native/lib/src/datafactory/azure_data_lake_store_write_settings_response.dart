// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_item_response.dart';

/// Azure data lake store write settings.
class AzureDataLakeStoreWriteSettingsResponse {
  /// The type of copy behavior for copy sink.
  final pulumi.Input<dynamic>? copyBehavior;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Specifies the expiry time of the written files. The time is applied to the UTC time zone in the format of "2018-12-01T05:00:00Z". Default value is NULL. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? expiryDateTime;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<List<MetadataItemResponse>>? metadata;
  /// The write setting type.
  /// Expected value is 'AzureDataLakeStoreWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureDataLakeStoreWriteSettingsResponse].
  /// [copyBehavior] The type of copy behavior for copy sink.
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [expiryDateTime] Specifies the expiry time of the written files. The time is applied to the UTC time zone in the format of "2018-12-01T05:00:00Z". Default value is NULL. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [metadata] Specify the custom metadata to be added to sink data. Type: array of objects (or Expression with resultType array of objects).
  /// [type] The write setting type.
  const AzureDataLakeStoreWriteSettingsResponse({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<List<MetadataItemResponse>, List<Map<String, dynamic>>>(metadata, (value) => pulumi.Input.encodeList<MetadataItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory AzureDataLakeStoreWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeStoreWriteSettingsResponse(
      copyBehavior: (() { final guardedValue = map['copyBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      expiryDateTime: (() { final guardedValue = map['expiryDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataItemResponse>(guardedValue, (value) => MetadataItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
