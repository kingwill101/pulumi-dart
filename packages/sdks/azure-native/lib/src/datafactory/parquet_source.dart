// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_read_settings.dart';
import 'parquet_read_settings.dart';

/// A copy activity Parquet source.
class ParquetSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Parquet format settings.
  final pulumi.Input<ParquetReadSettings>? formatSettings;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Parquet store settings.
  final pulumi.Input<AmazonS3CompatibleReadSettings>? storeSettings;
  /// Copy source type.
  /// Expected value is 'ParquetSource'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [formatSettings] Parquet format settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [storeSettings] Parquet store settings.
  /// [type] Copy source type.
  ParquetSource({
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
      'formatSettings': ?pulumi.Input.mapOptionalInputValue<ParquetReadSettings, Map<String, dynamic>>(formatSettings, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'storeSettings': ?pulumi.Input.mapOptionalInputValue<AmazonS3CompatibleReadSettings, Map<String, dynamic>>(storeSettings, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ParquetSource.fromMap(Map<String, dynamic> map) {
    return ParquetSource(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      formatSettings: map['formatSettings'] == null ? null : (ParquetReadSettings.fromMap((map['formatSettings']! as Map).cast<String, dynamic>())).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      storeSettings: map['storeSettings'] == null ? null : (AmazonS3CompatibleReadSettings.fromMap((map['storeSettings']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

