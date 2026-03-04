// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Azure MySql sink.
class AzureMySqlSinkResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;

  /// A query to execute before starting the copy. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? preCopyScript;

  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;

  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;

  /// Copy sink type.
  /// Expected value is 'AzureMySqlSink'.
  final pulumi.Input<String> type;

  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;

  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// Creates a new [AzureMySqlSinkResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [preCopyScript] A query to execute before starting the copy. Type: string (or Expression with resultType string).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  AzureMySqlSinkResponse({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.preCopyScript,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'preCopyScript': ?preCopyScript,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory AzureMySqlSinkResponse.fromMap(Map<String, dynamic> map) {
    return AzureMySqlSinkResponse(
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      maxConcurrentConnections: (() {
        final guardedValue = map['maxConcurrentConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      preCopyScript: (() {
        final guardedValue = map['preCopyScript'];
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
