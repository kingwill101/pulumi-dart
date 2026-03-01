// ignore_for_file: unused_element, unnecessary_cast


/// The request configuration.
class RestApiPollerRequestConfig {
  /// The API endpoint.
  final String apiEndpoint;
  /// The query parameter name which the remote server expect to end query. This property goes hand to hand with `startTimeAttributeName`
  final String? endTimeAttributeName;
  /// The header for the request for the remote server.
  final Map<String, String>? headers;
  /// The HTTP method, default value GET.
  final String? httpMethod;
  /// Flag to indicate if HTTP POST payload is in JSON format (vs form-urlencoded).
  final bool? isPostPayloadJson;
  /// The HTTP query parameters to RESTful API.
  final dynamic queryParameters;
  /// the query parameters template. Defines the query parameters template to use when passing query parameters in advanced scenarios.
  final String? queryParametersTemplate;
  /// The query time format. A remote server can have a query to pull data from range 'start' to 'end'. This property indicate what is the expected time format the remote server know to parse.
  final String? queryTimeFormat;
  /// The query parameter name which we need to send the server for query logs in time interval. Should be defined with `queryTimeIntervalPrepend` and `queryTimeIntervalDelimiter`
  final String? queryTimeIntervalAttributeName;
  /// The delimiter string between 2 QueryTimeFormat in the query parameter `queryTimeIntervalAttributeName`.
  final String? queryTimeIntervalDelimiter;
  /// The string prepend to the value of the query parameter in `queryTimeIntervalAttributeName`.
  final String? queryTimeIntervalPrepend;
  /// The query window in minutes for the request.
  final int? queryWindowInMin;
  /// The Rate limit queries per second for the request..
  final int? rateLimitQPS;
  /// The retry count.
  final int? retryCount;
  /// The query parameter name which the remote server expect to start query. This property goes hand to hand with `endTimeAttributeName`.
  final String? startTimeAttributeName;
  /// The timeout in seconds.
  final int? timeoutInSeconds;

  /// Creates a new [RestApiPollerRequestConfig].
  /// [apiEndpoint] The API endpoint.
  /// [endTimeAttributeName] The query parameter name which the remote server expect to end query. This property goes hand to hand with `startTimeAttributeName`
  /// [headers] The header for the request for the remote server.
  /// [httpMethod] The HTTP method, default value GET.
  /// [isPostPayloadJson] Flag to indicate if HTTP POST payload is in JSON format (vs form-urlencoded).
  /// [queryParameters] The HTTP query parameters to RESTful API.
  /// [queryParametersTemplate] the query parameters template. Defines the query parameters template to use when passing query parameters in advanced scenarios.
  /// [queryTimeFormat] The query time format. A remote server can have a query to pull data from range 'start' to 'end'. This property indicate what is the expected time format the remote server know to parse.
  /// [queryTimeIntervalAttributeName] The query parameter name which we need to send the server for query logs in time interval. Should be defined with `queryTimeIntervalPrepend` and `queryTimeIntervalDelimiter`
  /// [queryTimeIntervalDelimiter] The delimiter string between 2 QueryTimeFormat in the query parameter `queryTimeIntervalAttributeName`.
  /// [queryTimeIntervalPrepend] The string prepend to the value of the query parameter in `queryTimeIntervalAttributeName`.
  /// [queryWindowInMin] The query window in minutes for the request.
  /// [rateLimitQPS] The Rate limit queries per second for the request..
  /// [retryCount] The retry count.
  /// [startTimeAttributeName] The query parameter name which the remote server expect to start query. This property goes hand to hand with `endTimeAttributeName`.
  /// [timeoutInSeconds] The timeout in seconds.
  RestApiPollerRequestConfig({
    required this.apiEndpoint,
    this.endTimeAttributeName,
    this.headers,
    this.httpMethod,
    this.isPostPayloadJson,
    this.queryParameters,
    this.queryParametersTemplate,
    this.queryTimeFormat,
    this.queryTimeIntervalAttributeName,
    this.queryTimeIntervalDelimiter,
    this.queryTimeIntervalPrepend,
    this.queryWindowInMin,
    this.rateLimitQPS,
    this.retryCount,
    this.startTimeAttributeName,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': apiEndpoint,
      'endTimeAttributeName': ?endTimeAttributeName,
      'headers': ?headers,
      'httpMethod': ?httpMethod,
      'isPostPayloadJson': ?isPostPayloadJson,
      'queryParameters': ?queryParameters,
      'queryParametersTemplate': ?queryParametersTemplate,
      'queryTimeFormat': ?queryTimeFormat,
      'queryTimeIntervalAttributeName': ?queryTimeIntervalAttributeName,
      'queryTimeIntervalDelimiter': ?queryTimeIntervalDelimiter,
      'queryTimeIntervalPrepend': ?queryTimeIntervalPrepend,
      'queryWindowInMin': ?queryWindowInMin,
      'rateLimitQPS': ?rateLimitQPS,
      'retryCount': ?retryCount,
      'startTimeAttributeName': ?startTimeAttributeName,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory RestApiPollerRequestConfig.fromMap(Map<String, dynamic> map) {
    return RestApiPollerRequestConfig(
      apiEndpoint: map['apiEndpoint'] as String,
      endTimeAttributeName: map['endTimeAttributeName'] == null ? null : map['endTimeAttributeName'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      httpMethod: map['httpMethod'] == null ? null : map['httpMethod'] as String,
      isPostPayloadJson: map['isPostPayloadJson'] == null ? null : map['isPostPayloadJson'] as bool,
      queryParameters: map['queryParameters'] == null ? null : map['queryParameters'],
      queryParametersTemplate: map['queryParametersTemplate'] == null ? null : map['queryParametersTemplate'] as String,
      queryTimeFormat: map['queryTimeFormat'] == null ? null : map['queryTimeFormat'] as String,
      queryTimeIntervalAttributeName: map['queryTimeIntervalAttributeName'] == null ? null : map['queryTimeIntervalAttributeName'] as String,
      queryTimeIntervalDelimiter: map['queryTimeIntervalDelimiter'] == null ? null : map['queryTimeIntervalDelimiter'] as String,
      queryTimeIntervalPrepend: map['queryTimeIntervalPrepend'] == null ? null : map['queryTimeIntervalPrepend'] as String,
      queryWindowInMin: map['queryWindowInMin'] == null ? null : map['queryWindowInMin'] as int,
      rateLimitQPS: map['rateLimitQPS'] == null ? null : map['rateLimitQPS'] as int,
      retryCount: map['retryCount'] == null ? null : map['retryCount'] as int,
      startTimeAttributeName: map['startTimeAttributeName'] == null ? null : map['startTimeAttributeName'] as String,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
    );
  }
}

