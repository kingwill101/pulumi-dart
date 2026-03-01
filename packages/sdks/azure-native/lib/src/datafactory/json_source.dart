// ignore_for_file: unused_element, unnecessary_cast

import 'amazon_s3_compatible_read_settings.dart';
import 'json_read_settings.dart';

/// A copy activity Json source.
class JsonSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Json format settings.
  final JsonReadSettings? formatSettings;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Json store settings.
  final AmazonS3CompatibleReadSettings? storeSettings;
  /// Copy source type.
  /// Expected value is 'JsonSource'.
  final String type;

  /// Creates a new [JsonSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [formatSettings] Json format settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [storeSettings] Json store settings.
  /// [type] Copy source type.
  JsonSource({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.formatSettings,
    this.maxConcurrentConnections,
    this.sourceRetryCount,
    this.sourceRetryWait,
    this.storeSettings,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'formatSettings': ?formatSettings == null ? null : formatSettings!.toMap(),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'storeSettings': ?storeSettings == null ? null : storeSettings!.toMap(),
      'type': type,
    };
  }

  factory JsonSource.fromMap(Map<String, dynamic> map) {
    return JsonSource(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      formatSettings: map['formatSettings'] == null ? null : JsonReadSettings.fromMap((map['formatSettings'] as Map).cast<String, dynamic>()),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      storeSettings: map['storeSettings'] == null ? null : AmazonS3CompatibleReadSettings.fromMap((map['storeSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

