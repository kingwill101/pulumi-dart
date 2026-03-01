// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Salesforce Service Cloud sink.
class SalesforceServiceCloudSink {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The name of the external ID field for upsert operation. Default value is 'Id' column. Type: string (or Expression with resultType string).
  final dynamic externalIdFieldName;
  /// The flag indicating whether or not to ignore null values from input dataset (except key fields) during write operation. Default value is false. If set it to true, it means ADF will leave the data in the destination object unchanged when doing upsert/update operation and insert defined default value when doing insert operation, versus ADF will update the data in the destination object to NULL when doing upsert/update operation and insert NULL value when doing insert operation. Type: boolean (or Expression with resultType boolean).
  final dynamic ignoreNullValues;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'SalesforceServiceCloudSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;
  /// The write behavior for the operation. Default is Insert.
  final String? writeBehavior;

  /// Creates a new [SalesforceServiceCloudSink].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [externalIdFieldName] The name of the external ID field for upsert operation. Default value is 'Id' column. Type: string (or Expression with resultType string).
  /// [ignoreNullValues] The flag indicating whether or not to ignore null values from input dataset (except key fields) during write operation. Default value is false. If set it to true, it means ADF will leave the data in the destination object unchanged when doing upsert/update operation and insert defined default value when doing insert operation, versus ADF will update the data in the destination object to NULL when doing upsert/update operation and insert NULL value when doing insert operation. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [writeBehavior] The write behavior for the operation. Default is Insert.
  SalesforceServiceCloudSink({
    this.disableMetricsCollection,
    this.externalIdFieldName,
    this.ignoreNullValues,
    this.maxConcurrentConnections,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
    this.writeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'externalIdFieldName': ?externalIdFieldName,
      'ignoreNullValues': ?ignoreNullValues,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeBehavior': ?writeBehavior,
    };
  }

  factory SalesforceServiceCloudSink.fromMap(Map<String, dynamic> map) {
    return SalesforceServiceCloudSink(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      externalIdFieldName: map['externalIdFieldName'] == null ? null : map['externalIdFieldName'],
      ignoreNullValues: map['ignoreNullValues'] == null ? null : map['ignoreNullValues'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
      writeBehavior: map['writeBehavior'] == null ? null : map['writeBehavior'] as String,
    );
  }
}

