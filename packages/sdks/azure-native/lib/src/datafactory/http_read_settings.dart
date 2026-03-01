// ignore_for_file: unused_element, unnecessary_cast


/// Http read settings.
class HttpReadSettings {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// The additional HTTP headers in the request to the RESTful API. Type: string (or Expression with resultType string).
  final dynamic additionalHeaders;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  final dynamic requestBody;
  /// The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  final dynamic requestMethod;
  /// Specifies the timeout for a HTTP client to get HTTP response from HTTP server. Type: string (or Expression with resultType string).
  final dynamic requestTimeout;
  /// The read setting type.
  /// Expected value is 'HttpReadSettings'.
  final String type;

  /// Creates a new [HttpReadSettings].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [additionalHeaders] The additional HTTP headers in the request to the RESTful API. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [requestBody] The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  /// [requestMethod] The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  /// [requestTimeout] Specifies the timeout for a HTTP client to get HTTP response from HTTP server. Type: string (or Expression with resultType string).
  /// [type] The read setting type.
  HttpReadSettings({
    this.additionalColumns,
    this.additionalHeaders,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.requestBody,
    this.requestMethod,
    this.requestTimeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'additionalHeaders': ?additionalHeaders,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'requestBody': ?requestBody,
      'requestMethod': ?requestMethod,
      'requestTimeout': ?requestTimeout,
      'type': type,
    };
  }

  factory HttpReadSettings.fromMap(Map<String, dynamic> map) {
    return HttpReadSettings(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      additionalHeaders: map['additionalHeaders'] == null ? null : map['additionalHeaders'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      requestBody: map['requestBody'] == null ? null : map['requestBody'],
      requestMethod: map['requestMethod'] == null ? null : map['requestMethod'],
      requestTimeout: map['requestTimeout'] == null ? null : map['requestTimeout'],
      type: map['type'] as String,
    );
  }
}

