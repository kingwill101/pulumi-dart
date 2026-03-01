// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Rest service Sink.
class RestSink {
  /// The additional HTTP headers in the request to the RESTful API. Type: key value pairs (value should be string type).
  final dynamic additionalHeaders;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Http Compression Type to Send data in compressed format with Optimal Compression Level, Default is None. And The Only Supported option is Gzip. Type: string (or Expression with resultType string).
  final dynamic httpCompressionType;
  /// The timeout (TimeSpan) to get an HTTP response. It is the timeout to get a response, not the timeout to read response data. Default value: 00:01:40. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic httpRequestTimeout;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The time to await before sending next request, in milliseconds
  final dynamic requestInterval;
  /// The HTTP method used to call the RESTful API. The default is POST. Type: string (or Expression with resultType string).
  final dynamic requestMethod;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'RestSink'.
  final String type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;

  /// Creates a new [RestSink].
  /// [additionalHeaders] The additional HTTP headers in the request to the RESTful API. Type: key value pairs (value should be string type).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [httpCompressionType] Http Compression Type to Send data in compressed format with Optimal Compression Level, Default is None. And The Only Supported option is Gzip. Type: string (or Expression with resultType string).
  /// [httpRequestTimeout] The timeout (TimeSpan) to get an HTTP response. It is the timeout to get a response, not the timeout to read response data. Default value: 00:01:40. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [requestInterval] The time to await before sending next request, in milliseconds
  /// [requestMethod] The HTTP method used to call the RESTful API. The default is POST. Type: string (or Expression with resultType string).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  RestSink({
    this.additionalHeaders,
    this.disableMetricsCollection,
    this.httpCompressionType,
    this.httpRequestTimeout,
    this.maxConcurrentConnections,
    this.requestInterval,
    this.requestMethod,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalHeaders': ?additionalHeaders,
      'disableMetricsCollection': ?disableMetricsCollection,
      'httpCompressionType': ?httpCompressionType,
      'httpRequestTimeout': ?httpRequestTimeout,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'requestInterval': ?requestInterval,
      'requestMethod': ?requestMethod,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory RestSink.fromMap(Map<String, dynamic> map) {
    return RestSink(
      additionalHeaders: map['additionalHeaders'] == null ? null : map['additionalHeaders'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      httpCompressionType: map['httpCompressionType'] == null ? null : map['httpCompressionType'],
      httpRequestTimeout: map['httpRequestTimeout'] == null ? null : map['httpRequestTimeout'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      requestInterval: map['requestInterval'] == null ? null : map['requestInterval'],
      requestMethod: map['requestMethod'] == null ? null : map['requestMethod'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      type: map['type'] as String,
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
    );
  }
}

