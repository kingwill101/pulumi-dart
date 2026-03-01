// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Dynamics CRM sink.
class DynamicsCrmSink {
  /// The logical name of the alternate key which will be used when upserting records. Type: string (or Expression with resultType string).
  final dynamic alternateKeyName;
  /// Controls the bypass of Dataverse custom business logic. Type: string (or Expression with resultType string). Type: string (or Expression with resultType string).
  final dynamic bypassBusinessLogicExecution;
  /// Controls the bypass of Power Automate flows. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic bypassPowerAutomateFlows;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The flag indicating whether to ignore null values from input dataset (except key fields) during write operation. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic ignoreNullValues;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'DynamicsCrmSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;
  /// The write behavior for the operation.
  final String writeBehavior;

  /// Creates a new [DynamicsCrmSink].
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
  DynamicsCrmSink({
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

  factory DynamicsCrmSink.fromMap(Map<String, dynamic> map) {
    return DynamicsCrmSink(
      alternateKeyName: map['alternateKeyName'] == null ? null : map['alternateKeyName'],
      bypassBusinessLogicExecution: map['bypassBusinessLogicExecution'] == null ? null : map['bypassBusinessLogicExecution'],
      bypassPowerAutomateFlows: map['bypassPowerAutomateFlows'] == null ? null : map['bypassPowerAutomateFlows'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      ignoreNullValues: map['ignoreNullValues'] == null ? null : map['ignoreNullValues'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
      writeBehavior: map['writeBehavior'] as String,
    );
  }
}

