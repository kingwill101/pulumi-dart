// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Rest service source.
class RestSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: key value pairs (value should be string type).
  final dynamic additionalColumns;
  /// The additional HTTP headers in the request to the RESTful API. Type: string (or Expression with resultType string).
  final dynamic additionalHeaders;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The timeout (TimeSpan) to get an HTTP response. It is the timeout to get a response, not the timeout to read response data. Default value: 00:01:40. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic httpRequestTimeout;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The pagination rules to compose next page requests. Type: string (or Expression with resultType string).
  final dynamic paginationRules;
  /// The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  final dynamic requestBody;
  /// The time to await before sending next page request.
  final dynamic requestInterval;
  /// The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  final dynamic requestMethod;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'RestSource'.
  final String type;

  /// Creates a new [RestSourceResponse].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: key value pairs (value should be string type).
  /// [additionalHeaders] The additional HTTP headers in the request to the RESTful API. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [httpRequestTimeout] The timeout (TimeSpan) to get an HTTP response. It is the timeout to get a response, not the timeout to read response data. Default value: 00:01:40. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [paginationRules] The pagination rules to compose next page requests. Type: string (or Expression with resultType string).
  /// [requestBody] The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  /// [requestInterval] The time to await before sending next page request.
  /// [requestMethod] The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  RestSourceResponse({
    this.additionalColumns,
    this.additionalHeaders,
    this.disableMetricsCollection,
    this.httpRequestTimeout,
    this.maxConcurrentConnections,
    this.paginationRules,
    this.requestBody,
    this.requestInterval,
    this.requestMethod,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'additionalHeaders': ?additionalHeaders,
      'disableMetricsCollection': ?disableMetricsCollection,
      'httpRequestTimeout': ?httpRequestTimeout,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'paginationRules': ?paginationRules,
      'requestBody': ?requestBody,
      'requestInterval': ?requestInterval,
      'requestMethod': ?requestMethod,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory RestSourceResponse.fromMap(Map<String, dynamic> map) {
    return RestSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      additionalHeaders: map['additionalHeaders'] == null ? null : map['additionalHeaders'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      httpRequestTimeout: map['httpRequestTimeout'] == null ? null : map['httpRequestTimeout'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      paginationRules: map['paginationRules'] == null ? null : map['paginationRules'],
      requestBody: map['requestBody'] == null ? null : map['requestBody'],
      requestInterval: map['requestInterval'] == null ? null : map['requestInterval'],
      requestMethod: map['requestMethod'] == null ? null : map['requestMethod'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

