// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Rest service source.
class RestSource {
  /// Specifies the additional columns to be added to source data. Type: key value pairs (value should be string type).
  final pulumi.Input<dynamic>? additionalColumns;
  /// The additional HTTP headers in the request to the RESTful API. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? additionalHeaders;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The timeout (TimeSpan) to get an HTTP response. It is the timeout to get a response, not the timeout to read response data. Default value: 00:01:40. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? httpRequestTimeout;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The pagination rules to compose next page requests. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? paginationRules;
  /// The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestBody;
  /// The time to await before sending next page request.
  final pulumi.Input<dynamic>? requestInterval;
  /// The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestMethod;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'RestSource'.
  final pulumi.Input<String> type;

  /// Creates a new [RestSource].
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
  RestSource({
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

  factory RestSource.fromMap(Map<String, dynamic> map) {
    return RestSource(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      additionalHeaders: map['additionalHeaders'] == null ? null : (map['additionalHeaders']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      httpRequestTimeout: map['httpRequestTimeout'] == null ? null : (map['httpRequestTimeout']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      paginationRules: map['paginationRules'] == null ? null : (map['paginationRules']!).input(),
      requestBody: map['requestBody'] == null ? null : (map['requestBody']!).input(),
      requestInterval: map['requestInterval'] == null ? null : (map['requestInterval']!).input(),
      requestMethod: map['requestMethod'] == null ? null : (map['requestMethod']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

