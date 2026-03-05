// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerMonitor {
  /// The number of consecutive failed health checks before the backend is considered down, for example, 5.
  final pulumi.Input<int>? consecutiveDown;
  /// The number of consecutive successful probes required to consider the target as up, e.g., 3.
  final pulumi.Input<int>? consecutiveUp;
  /// Expected status code, such as 200,202, successful HTTP response.
  final pulumi.Input<String>? expectedCodes;
  /// Whether to follow the redirect.
  final pulumi.Input<bool>? followRedirects;
  /// The HTTP headers to be included in the health check request.
  final pulumi.Input<String>? header;
  /// The monitoring interval, such as 60 seconds, checks the frequency.
  final pulumi.Input<int>? interval;
  /// Monitor request methods, such as GET, methods in the HTTP protocol.
  final pulumi.Input<String>? method;
  /// Probe Point Region, default to Global
  /// - `Global`: Global.
  /// - `ChineseMainland`: Chinese mainland.
  /// - `OutsideChineseMainland`: Global (excluding the Chinese mainland).
  final pulumi.Input<String>? monitoringRegion;
  /// The monitor checks the path, such as/healthcheck, the HTTP request path.
  final pulumi.Input<String>? path;
  /// The target port.
  final pulumi.Input<int>? port;
  /// The timeout for the health check, in seconds. The value range is 1-10.
  final pulumi.Input<int>? timeout;
  /// The type of monitor protocol, such as HTTP, used for health checks. When the value is off, it indicates that no check is performed.
  final pulumi.Input<String>? type;

  /// Creates a new [LoadBalancerMonitor].
  /// [consecutiveDown] The number of consecutive failed health checks before the backend is considered down, for example, 5.
  /// [consecutiveUp] The number of consecutive successful probes required to consider the target as up, e.g., 3.
  /// [expectedCodes] Expected status code, such as 200,202, successful HTTP response.
  /// [followRedirects] Whether to follow the redirect.
  /// [header] The HTTP headers to be included in the health check request.
  /// [interval] The monitoring interval, such as 60 seconds, checks the frequency.
  /// [method] Monitor request methods, such as GET, methods in the HTTP protocol.
  /// [monitoringRegion] Probe Point Region, default to Global
  /// [path] The monitor checks the path, such as/healthcheck, the HTTP request path.
  /// [port] The target port.
  /// [timeout] The timeout for the health check, in seconds. The value range is 1-10.
  /// [type] The type of monitor protocol, such as HTTP, used for health checks. When the value is off, it indicates that no check is performed.
  LoadBalancerMonitor({
    this.consecutiveDown,
    this.consecutiveUp,
    this.expectedCodes,
    this.followRedirects,
    this.header,
    this.interval,
    this.method,
    this.monitoringRegion,
    this.path,
    this.port,
    this.timeout,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consecutiveDown': ?consecutiveDown,
      'consecutiveUp': ?consecutiveUp,
      'expectedCodes': ?expectedCodes,
      'followRedirects': ?followRedirects,
      'header': ?header,
      'interval': ?interval,
      'method': ?method,
      'monitoringRegion': ?monitoringRegion,
      'path': ?path,
      'port': ?port,
      'timeout': ?timeout,
      'type': ?type,
    };
  }

  factory LoadBalancerMonitor.fromMap(Map<String, dynamic> map) {
    return LoadBalancerMonitor(
      consecutiveDown: (() { final guardedValue = map['consecutiveDown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      consecutiveUp: (() { final guardedValue = map['consecutiveUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expectedCodes: (() { final guardedValue = map['expectedCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      followRedirects: (() { final guardedValue = map['followRedirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringRegion: (() { final guardedValue = map['monitoringRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

