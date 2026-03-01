// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Azure Data Explorer sink.
class AzureDataExplorerSink {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// If set to true, any aggregation will be skipped. Default is false. Type: boolean.
  final dynamic flushImmediately;
  /// An explicit column mapping description provided in a json format. Type: string.
  final dynamic ingestionMappingAsJson;
  /// A name of a pre-created csv mapping that was defined on the target Kusto table. Type: string.
  final dynamic ingestionMappingName;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'AzureDataExplorerSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;

  /// Creates a new [AzureDataExplorerSink].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [flushImmediately] If set to true, any aggregation will be skipped. Default is false. Type: boolean.
  /// [ingestionMappingAsJson] An explicit column mapping description provided in a json format. Type: string.
  /// [ingestionMappingName] A name of a pre-created csv mapping that was defined on the target Kusto table. Type: string.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  AzureDataExplorerSink({
    this.disableMetricsCollection,
    this.flushImmediately,
    this.ingestionMappingAsJson,
    this.ingestionMappingName,
    this.maxConcurrentConnections,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'flushImmediately': ?flushImmediately,
      'ingestionMappingAsJson': ?ingestionMappingAsJson,
      'ingestionMappingName': ?ingestionMappingName,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory AzureDataExplorerSink.fromMap(Map<String, dynamic> map) {
    return AzureDataExplorerSink(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      flushImmediately: map['flushImmediately'] == null ? null : map['flushImmediately'],
      ingestionMappingAsJson: map['ingestionMappingAsJson'] == null ? null : map['ingestionMappingAsJson'],
      ingestionMappingName: map['ingestionMappingName'] == null ? null : map['ingestionMappingName'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
    );
  }
}

