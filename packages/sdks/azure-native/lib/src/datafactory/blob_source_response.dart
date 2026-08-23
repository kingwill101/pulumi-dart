// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Azure Blob source.
class BlobSourceResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? recursive;
  /// Number of header lines to skip from each blob. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? skipHeaderLineCount;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Treat empty as null. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? treatEmptyAsNull;
  /// Copy source type.
  /// Expected value is 'BlobSource'.
  final pulumi.Input<String> type;

  /// Creates a new [BlobSourceResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [skipHeaderLineCount] Number of header lines to skip from each blob. Type: integer (or Expression with resultType integer).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [treatEmptyAsNull] Treat empty as null. Type: boolean (or Expression with resultType boolean).
  /// [type] Copy source type.
  const BlobSourceResponse({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.recursive,
    this.skipHeaderLineCount,
    this.sourceRetryCount,
    this.sourceRetryWait,
    this.treatEmptyAsNull,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'recursive': ?recursive,
      'skipHeaderLineCount': ?skipHeaderLineCount,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'treatEmptyAsNull': ?treatEmptyAsNull,
      'type': type,
    };
  }

  factory BlobSourceResponse.fromMap(Map<String, dynamic> map) {
    return BlobSourceResponse(
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      recursive: (() { final guardedValue = map['recursive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      skipHeaderLineCount: (() { final guardedValue = map['skipHeaderLineCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryCount: (() { final guardedValue = map['sourceRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sourceRetryWait: (() { final guardedValue = map['sourceRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      treatEmptyAsNull: (() { final guardedValue = map['treatEmptyAsNull']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
