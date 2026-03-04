// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Dynamics sink.
class DynamicsSinkResponse {
  /// The logical name of the alternate key which will be used when upserting records. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? alternateKeyName;

  /// Controls the bypass of Dataverse custom business logic. Type: string (or Expression with resultType string). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? bypassBusinessLogicExecution;

  /// Controls the bypass of Power Automate flows. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? bypassPowerAutomateFlows;

  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// The flag indicating whether ignore null values from input dataset (except key fields) during write operation. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? ignoreNullValues;

  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;

  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;

  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;

  /// Copy sink type.
  /// Expected value is 'DynamicsSink'.
  final pulumi.Input<String> type;

  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;

  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// The write behavior for the operation.
  final pulumi.Input<String> writeBehavior;

  /// Creates a new [DynamicsSinkResponse].
  /// [alternateKeyName] The logical name of the alternate key which will be used when upserting records. Type: string (or Expression with resultType string).
  /// [bypassBusinessLogicExecution] Controls the bypass of Dataverse custom business logic. Type: string (or Expression with resultType string). Type: string (or Expression with resultType string).
  /// [bypassPowerAutomateFlows] Controls the bypass of Power Automate flows. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [ignoreNullValues] The flag indicating whether ignore null values from input dataset (except key fields) during write operation. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [writeBehavior] The write behavior for the operation.
  DynamicsSinkResponse({
    this.alternateKeyName,
    this.bypassBusinessLogicExecution,
    this.bypassPowerAutomateFlows,
    this.disableMetricsCollection,
    this.ignoreNullValues,
    this.maxConcurrentConnections,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
    required this.writeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateKeyName': ?alternateKeyName,
      'bypassBusinessLogicExecution': ?bypassBusinessLogicExecution,
      'bypassPowerAutomateFlows': ?bypassPowerAutomateFlows,
      'disableMetricsCollection': ?disableMetricsCollection,
      'ignoreNullValues': ?ignoreNullValues,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': writeBehavior,
    };
  }

  factory DynamicsSinkResponse.fromMap(Map<String, dynamic> map) {
    return DynamicsSinkResponse(
      alternateKeyName: (() {
        final guardedValue = map['alternateKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      bypassBusinessLogicExecution: (() {
        final guardedValue = map['bypassBusinessLogicExecution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      bypassPowerAutomateFlows: (() {
        final guardedValue = map['bypassPowerAutomateFlows'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      ignoreNullValues: (() {
        final guardedValue = map['ignoreNullValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
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
      writeBehavior: pulumi.Input.fromValue(map['writeBehavior'] as String),
    );
  }
}
