// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_read_settings.dart';
import 'binary_read_settings.dart';

/// A copy activity Binary source.
class BinarySource {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Binary format settings.
  final pulumi.Input<BinaryReadSettings>? formatSettings;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Binary store settings.
  final pulumi.Input<AmazonS3CompatibleReadSettings>? storeSettings;
  /// Copy source type.
  /// Expected value is 'BinarySource'.
  final pulumi.Input<String> type;

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
      'formatSettings': ?pulumi.Input.mapOptionalInputValue<BinaryReadSettings, Map<String, dynamic>>(formatSettings, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'storeSettings': ?pulumi.Input.mapOptionalInputValue<AmazonS3CompatibleReadSettings, Map<String, dynamic>>(storeSettings, (value) => value.toMap()),
      'type': type,
    };
  }

  factory BinarySource.fromMap(Map<String, dynamic> map) {
    return BinarySource(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      formatSettings: map['formatSettings'] == null ? null : (BinaryReadSettings.fromMap((map['formatSettings']! as Map).cast<String, dynamic>())).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      storeSettings: map['storeSettings'] == null ? null : (AmazonS3CompatibleReadSettings.fromMap((map['storeSettings']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

