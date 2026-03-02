// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Http read settings.
class HttpReadSettingsResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// The additional HTTP headers in the request to the RESTful API. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? additionalHeaders;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestBody;
  /// The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestMethod;
  /// Specifies the timeout for a HTTP client to get HTTP response from HTTP server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? requestTimeout;
  /// The read setting type.
  /// Expected value is 'HttpReadSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [HttpReadSettingsResponse].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [additionalHeaders] The additional HTTP headers in the request to the RESTful API. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [requestBody] The HTTP request body to the RESTful API if requestMethod is POST. Type: string (or Expression with resultType string).
  /// [requestMethod] The HTTP method used to call the RESTful API. The default is GET. Type: string (or Expression with resultType string).
  /// [requestTimeout] Specifies the timeout for a HTTP client to get HTTP response from HTTP server. Type: string (or Expression with resultType string).
  /// [type] The read setting type.
  HttpReadSettingsResponse({
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

  factory HttpReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return HttpReadSettingsResponse(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      additionalHeaders: map['additionalHeaders'] == null ? null : (map['additionalHeaders']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      requestBody: map['requestBody'] == null ? null : (map['requestBody']!).input(),
      requestMethod: map['requestMethod'] == null ? null : (map['requestMethod']!).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

