// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_monitor_conf_api_http_request_body.dart';

class SyntheticTaskMonitorConfApiHttp {
  /// Connection timeout, in ms. Default 5000. Optional range: 1000-300000ms.
  final pulumi.Input<int>? connectTimeout;
  /// HTTP method, GET or POST.
  final pulumi.Input<String>? method;
  /// HTTP request body. See `request_body` below.
  final pulumi.Input<SyntheticTaskMonitorConfApiHttpRequestBody>? requestBody;
  /// HTTP request header.
  final pulumi.Input<Map<String, String>>? requestHeaders;
  /// The target URL.
  final pulumi.Input<String> targetUrl;
  /// TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  final pulumi.Input<int>? timeout;

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
      'requestBody': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConfApiHttpRequestBody, Map<String, dynamic>>(requestBody, (value) => value.toMap()),
      'requestHeaders': ?requestHeaders,
      'targetUrl': targetUrl,
      'timeout': ?timeout,
    };
  }

  factory SyntheticTaskMonitorConfApiHttp.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfApiHttp(
      connectTimeout: (() { final guardedValue = map['connectTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBody: (() { final guardedValue = map['requestBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SyntheticTaskMonitorConfApiHttpRequestBody.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

