// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerMonitor {
  /// The number of consecutive failed health checks before the backend is considered down, for example, 5.
  final int? consecutiveDown;
  /// The number of consecutive successful probes required to consider the target as up, e.g., 3.
  final int? consecutiveUp;
  /// Expected status code, such as 200,202, successful HTTP response.
  final String? expectedCodes;
  /// Whether to follow the redirect.
  final bool? followRedirects;
  /// The HTTP headers to be included in the health check request.
  final String? header;
  /// The monitoring interval, such as 60 seconds, checks the frequency.
  final int? interval;
  /// Monitor request methods, such as GET, methods in the HTTP protocol.
  final String? method;
  /// Probe Point Region, default to Global
  /// - `Global`: Global.
  /// - `ChineseMainland`: Chinese mainland.
  /// - `OutsideChineseMainland`: Global (excluding the Chinese mainland).
  final String? monitoringRegion;
  /// The monitor checks the path, such as/healthcheck, the HTTP request path.
  final String? path;
  /// The target port.
  final int? port;
  /// The timeout for the health check, in seconds. The value range is 1-10.
  final int? timeout;
  /// The type of monitor protocol, such as HTTP, used for health checks. When the value is off, it indicates that no check is performed.
  final String? type;

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
      consecutiveDown: map['consecutiveDown'] == null ? null : map['consecutiveDown'] as int,
      consecutiveUp: map['consecutiveUp'] == null ? null : map['consecutiveUp'] as int,
      expectedCodes: map['expectedCodes'] == null ? null : map['expectedCodes'] as String,
      followRedirects: map['followRedirects'] == null ? null : map['followRedirects'] as bool,
      header: map['header'] == null ? null : map['header'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      method: map['method'] == null ? null : map['method'] as String,
      monitoringRegion: map['monitoringRegion'] == null ? null : map['monitoringRegion'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

