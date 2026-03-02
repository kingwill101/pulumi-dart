// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Common Data Service for Apps sink.
class CommonDataServiceForAppsSinkResponse {
  /// The logical name of the alternate key which will be used when upserting records. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? alternateKeyName;
  /// Controls the bypass of Dataverse custom business logic. Type: string (or Expression with resultType string). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? bypassBusinessLogicExecution;
  /// Controls the bypass of Power Automate flows. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? bypassPowerAutomateFlows;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The flag indicating whether to ignore null values from input dataset (except key fields) during write operation. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? ignoreNullValues;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'CommonDataServiceForAppsSink'.
  final pulumi.Input<String> type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;
  /// The write behavior for the operation.
  final pulumi.Input<String> writeBehavior;

  /// Creates a new [CommonDataServiceForAppsSinkResponse].
  /// [alternateKeyName] The logical name of the alternate key which will be used when upserting records. Type: string (or Expression with resultType string).
  /// [bypassBusinessLogicExecution] Controls the bypass of Dataverse custom business logic. Type: string (or Expression with resultType string). Type: string (or Expression with resultType string).
  /// [bypassPowerAutomateFlows] Controls the bypass of Power Automate flows. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [ignoreNullValues] The flag indicating whether to ignore null values from input dataset (except key fields) during write operation. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [writeBehavior] The write behavior for the operation.
  CommonDataServiceForAppsSinkResponse({
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

  factory CommonDataServiceForAppsSinkResponse.fromMap(Map<String, dynamic> map) {
    return CommonDataServiceForAppsSinkResponse(
      alternateKeyName: map['alternateKeyName'] == null ? null : (map['alternateKeyName']).input(),
      bypassBusinessLogicExecution: map['bypassBusinessLogicExecution'] == null ? null : (map['bypassBusinessLogicExecution']).input(),
      bypassPowerAutomateFlows: map['bypassPowerAutomateFlows'] == null ? null : (map['bypassPowerAutomateFlows']).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']).input(),
      ignoreNullValues: map['ignoreNullValues'] == null ? null : (map['ignoreNullValues']).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']).input(),
      sinkRetryCount: map['sinkRetryCount'] == null ? null : (map['sinkRetryCount']).input(),
      sinkRetryWait: map['sinkRetryWait'] == null ? null : (map['sinkRetryWait']).input(),
      type: (map['type'] as String).input(),
      writeBatchSize: map['writeBatchSize'] == null ? null : (map['writeBatchSize']).input(),
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : (map['writeBatchTimeout']).input(),
      writeBehavior: (map['writeBehavior'] as String).input(),
    );
  }
}

