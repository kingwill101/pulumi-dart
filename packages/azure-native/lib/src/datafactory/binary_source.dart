// ignore_for_file: unused_element, unnecessary_cast

import 'amazon_s3_compatible_read_settings.dart';
import 'binary_read_settings.dart';

/// A copy activity Binary source.
class BinarySource {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Binary format settings.
  final BinaryReadSettings? formatSettings;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Binary store settings.
  final AmazonS3CompatibleReadSettings? storeSettings;
  /// Copy source type.
  /// Expected value is 'BinarySource'.
  final String type;

  /// Creates a new [BinarySource].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [formatSettings] Binary format settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [storeSettings] Binary store settings.
  /// [type] Copy source type.
  BinarySource({
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
      'disableMetricsCollection': ?disableMetricsCollection,
      'formatSettings': ?formatSettings == null ? null : formatSettings!.toMap(),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'storeSettings': ?storeSettings == null ? null : storeSettings!.toMap(),
      'type': type,
    };
  }

  factory BinarySource.fromMap(Map<String, dynamic> map) {
    return BinarySource(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      formatSettings: map['formatSettings'] == null ? null : BinaryReadSettings.fromMap((map['formatSettings'] as Map).cast<String, dynamic>()),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      storeSettings: map['storeSettings'] == null ? null : AmazonS3CompatibleReadSettings.fromMap((map['storeSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

