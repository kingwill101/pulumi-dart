// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Azure Table sink.
class AzureTableSinkResponse {
  /// Azure Table default partition key value. Type: string (or Expression with resultType string).
  final dynamic azureTableDefaultPartitionKeyValue;
  /// Azure Table insert type. Type: string (or Expression with resultType string).
  final dynamic azureTableInsertType;
  /// Azure Table partition key name. Type: string (or Expression with resultType string).
  final dynamic azureTablePartitionKeyName;
  /// Azure Table row key name. Type: string (or Expression with resultType string).
  final dynamic azureTableRowKeyName;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'AzureTableSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;

  /// Creates a new [AzureTableSinkResponse].
  /// [azureTableDefaultPartitionKeyValue] Azure Table default partition key value. Type: string (or Expression with resultType string).
  /// [azureTableInsertType] Azure Table insert type. Type: string (or Expression with resultType string).
  /// [azureTablePartitionKeyName] Azure Table partition key name. Type: string (or Expression with resultType string).
  /// [azureTableRowKeyName] Azure Table row key name. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  AzureTableSinkResponse({
    this.azureTableDefaultPartitionKeyValue,
    this.azureTableInsertType,
    this.azureTablePartitionKeyName,
    this.azureTableRowKeyName,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureTableDefaultPartitionKeyValue': ?azureTableDefaultPartitionKeyValue,
      'azureTableInsertType': ?azureTableInsertType,
      'azureTablePartitionKeyName': ?azureTablePartitionKeyName,
      'azureTableRowKeyName': ?azureTableRowKeyName,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory AzureTableSinkResponse.fromMap(Map<String, dynamic> map) {
    return AzureTableSinkResponse(
      azureTableDefaultPartitionKeyValue: map['azureTableDefaultPartitionKeyValue'] == null ? null : map['azureTableDefaultPartitionKeyValue'],
      azureTableInsertType: map['azureTableInsertType'] == null ? null : map['azureTableInsertType'],
      azureTablePartitionKeyName: map['azureTablePartitionKeyName'] == null ? null : map['azureTablePartitionKeyName'],
      azureTableRowKeyName: map['azureTableRowKeyName'] == null ? null : map['azureTableRowKeyName'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
    );
  }
}

