// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_fswrite_settings_response.dart';
import 'iceberg_write_settings_response.dart';

/// A copy activity Iceberg sink.
class IcebergSinkResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// Iceberg format settings.
  final pulumi.Input<IcebergWriteSettingsResponse>? formatSettings;

  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;

  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;

  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;

  /// Iceberg store settings.
  final pulumi.Input<AzureBlobFSWriteSettingsResponse>? storeSettings;

  /// Copy sink type.
  /// Expected value is 'IcebergSink'.
  final pulumi.Input<String> type;

  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;

  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// Creates a new [IcebergSinkResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [formatSettings] Iceberg format settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [storeSettings] Iceberg store settings.
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  IcebergSinkResponse({
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
      'formatSettings':
          ?pulumi.Input.mapOptionalInputValue<
            IcebergWriteSettingsResponse,
            Map<String, dynamic>
          >(formatSettings, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'storeSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AzureBlobFSWriteSettingsResponse,
            Map<String, dynamic>
          >(storeSettings, (value) => value.toMap()),
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory IcebergSinkResponse.fromMap(Map<String, dynamic> map) {
    return IcebergSinkResponse(
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      formatSettings: (() {
        final guardedValue = map['formatSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IcebergWriteSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxConcurrentConnections: (() {
        final guardedValue = map['maxConcurrentConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sinkRetryCount: (() {
        final guardedValue = map['sinkRetryCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sinkRetryWait: (() {
        final guardedValue = map['sinkRetryWait'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      storeSettings: (() {
        final guardedValue = map['storeSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureBlobFSWriteSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      writeBatchSize: (() {
        final guardedValue = map['writeBatchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      writeBatchTimeout: (() {
        final guardedValue = map['writeBatchTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
