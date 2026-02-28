// ignore_for_file: unused_element, unnecessary_cast

import 'job_app_engine_http_target_app_engine_routing.dart';

class JobAppEngineHttpTarget {
  /// App Engine Routing setting for the job.
  /// Structure is documented below.
  final JobAppEngineHttpTargetAppEngineRouting? appEngineRouting;

  /// HTTP request body.
  /// A request body is allowed only if the HTTP method is POST or PUT.
  /// It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.
  /// A base64-encoded string.
  final String? body;

  /// HTTP request headers.
  /// This map contains the header field names and values.
  /// Headers can be set when the job is created.
  final Map<String, String>? headers;

  /// Which HTTP method to use for the request.
  final String? httpMethod;

  /// The relative URI.
  /// The relative URL must begin with "/" and must be a valid HTTP relative URL.
  /// It can contain a path, query string arguments, and \# fragments.
  /// If the relative URL is empty, then the root path "/" will be used.
  /// No spaces are allowed, and the maximum length allowed is 2083 characters
  final String relativeUri;

  /// Creates a new [JobAppEngineHttpTarget].
  /// [appEngineRouting] App Engine Routing setting for the job.
  /// [body] HTTP request body.
  /// [headers] HTTP request headers.
  /// [httpMethod] Which HTTP method to use for the request.
  /// [relativeUri] The relative URI.
  JobAppEngineHttpTarget({
    this.appEngineRouting,
    this.body,
    this.headers,
    this.httpMethod,
    required this.relativeUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineRoutingValue = appEngineRouting;
    if (appEngineRoutingValue != null) {
      map['appEngineRouting'] = appEngineRoutingValue.toMap();
    }
    final bodyValue = body;
    if (bodyValue != null) {
      map['body'] = bodyValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = headersValue;
    }
    final httpMethodValue = httpMethod;
    if (httpMethodValue != null) {
      map['httpMethod'] = httpMethodValue;
    }
    map['relativeUri'] = relativeUri;
    return map;
  }

  factory JobAppEngineHttpTarget.fromMap(Map<String, dynamic> map) {
    return JobAppEngineHttpTarget(
      appEngineRouting: map['appEngineRouting'] == null
          ? null
          : JobAppEngineHttpTargetAppEngineRouting.fromMap(
              (map['appEngineRouting'] as Map).cast<String, dynamic>()),
      body: map['body'] == null ? null : map['body'] as String,
      headers: map['headers'] == null
          ? null
          : (map['headers'] as Map).cast<String, String>(),
      httpMethod:
          map['httpMethod'] == null ? null : map['httpMethod'] as String,
      relativeUri: map['relativeUri'] as String,
    );
  }
}
