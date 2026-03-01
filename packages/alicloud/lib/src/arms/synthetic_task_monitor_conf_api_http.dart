// ignore_for_file: unused_element, unnecessary_cast

import 'synthetic_task_monitor_conf_api_http_request_body.dart';

class SyntheticTaskMonitorConfApiHttp {
  /// Connection timeout, in ms. Default 5000. Optional range: 1000-300000ms.
  final int? connectTimeout;
  /// HTTP method, GET or POST.
  final String? method;
  /// HTTP request body. See `request_body` below.
  final SyntheticTaskMonitorConfApiHttpRequestBody? requestBody;
  /// HTTP request header.
  final Map<String, String>? requestHeaders;
  /// The target URL.
  final String targetUrl;
  /// TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  final int? timeout;

  /// Creates a new [SyntheticTaskMonitorConfApiHttp].
  /// [connectTimeout] Connection timeout, in ms. Default 5000. Optional range: 1000-300000ms.
  /// [method] HTTP method, GET or POST.
  /// [requestBody] HTTP request body. See `request_body` below.
  /// [requestHeaders] HTTP request header.
  /// [targetUrl] The target URL.
  /// [timeout] TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  SyntheticTaskMonitorConfApiHttp({
    this.connectTimeout,
    this.method,
    this.requestBody,
    this.requestHeaders,
    required this.targetUrl,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeout': ?connectTimeout,
      'method': ?method,
      'requestBody': ?requestBody == null ? null : requestBody!.toMap(),
      'requestHeaders': ?requestHeaders,
      'targetUrl': targetUrl,
      'timeout': ?timeout,
    };
  }

  factory SyntheticTaskMonitorConfApiHttp.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfApiHttp(
      connectTimeout: map['connectTimeout'] == null ? null : map['connectTimeout'] as int,
      method: map['method'] == null ? null : map['method'] as String,
      requestBody: map['requestBody'] == null ? null : SyntheticTaskMonitorConfApiHttpRequestBody.fromMap((map['requestBody'] as Map).cast<String, dynamic>()),
      requestHeaders: map['requestHeaders'] == null ? null : (map['requestHeaders'] as Map).cast<String, String>(),
      targetUrl: map['targetUrl'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

