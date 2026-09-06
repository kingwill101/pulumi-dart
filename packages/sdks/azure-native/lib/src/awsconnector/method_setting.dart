// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MethodSetting
class MethodSetting {
  /// Specifies whether the cached responses are encrypted.
  final pulumi.Input<bool?>? cacheDataEncrypted;
  /// Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.
  final pulumi.Input<int?>? cacheTtlInSeconds;
  /// Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.
  final pulumi.Input<bool?>? cachingEnabled;
  /// Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. This can be useful to troubleshoot APIs, but can result in logging sensitive data. We recommend that you don't enable this option for production APIs.
  final pulumi.Input<bool?>? dataTraceEnabled;
  /// The HTTP method. To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
  final pulumi.Input<String?>? httpMethod;
  /// Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. Valid values are ``OFF``, ``ERROR``, and ``INFO``. Choose ``ERROR`` to write only error-level entries to CloudWatch Logs, or choose ``INFO`` to include all ``ERROR`` events as well as extra informational events.
  final pulumi.Input<String?>? loggingLevel;
  /// Specifies whether Amazon CloudWatch metrics are enabled for this method.
  final pulumi.Input<bool?>? metricsEnabled;
  /// The resource path for this method. Forward slashes (``/``) are encoded as ``~1`` and the initial slash must include a forward slash. For example, the path value ``/resource/subresource`` must be encoded as ``/~1resource~1subresource``. To specify the root path, use only a slash (``/``). To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
  final pulumi.Input<String?>? resourcePath;
  /// Specifies the throttling burst limit.
  final pulumi.Input<int?>? throttlingBurstLimit;
  /// Specifies the throttling rate limit.
  final pulumi.Input<int?>? throttlingRateLimit;

  /// Creates a new [MethodSetting].
  /// [cacheDataEncrypted] Specifies whether the cached responses are encrypted.
  /// [cacheTtlInSeconds] Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.
  /// [cachingEnabled] Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.
  /// [dataTraceEnabled] Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. This can be useful to troubleshoot APIs, but can result in logging sensitive data. We recommend that you don't enable this option for production APIs.
  /// [httpMethod] The HTTP method. To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
  /// [loggingLevel] Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. Valid values are ``OFF``, ``ERROR``, and ``INFO``. Choose ``ERROR`` to write only error-level entries to CloudWatch Logs, or choose ``INFO`` to include all ``ERROR`` events as well as extra informational events.
  /// [metricsEnabled] Specifies whether Amazon CloudWatch metrics are enabled for this method.
  /// [resourcePath] The resource path for this method. Forward slashes (``/``) are encoded as ``~1`` and the initial slash must include a forward slash. For example, the path value ``/resource/subresource`` must be encoded as ``/~1resource~1subresource``. To specify the root path, use only a slash (``/``). To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
  /// [throttlingBurstLimit] Specifies the throttling burst limit.
  /// [throttlingRateLimit] Specifies the throttling rate limit.
  const MethodSetting({
    this.cacheDataEncrypted,
    this.cacheTtlInSeconds,
    this.cachingEnabled,
    this.dataTraceEnabled,
    this.httpMethod,
    this.loggingLevel,
    this.metricsEnabled,
    this.resourcePath,
    this.throttlingBurstLimit,
    this.throttlingRateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheDataEncrypted': ?cacheDataEncrypted,
      'cacheTtlInSeconds': ?cacheTtlInSeconds,
      'cachingEnabled': ?cachingEnabled,
      'dataTraceEnabled': ?dataTraceEnabled,
      'httpMethod': ?httpMethod,
      'loggingLevel': ?loggingLevel,
      'metricsEnabled': ?metricsEnabled,
      'resourcePath': ?resourcePath,
      'throttlingBurstLimit': ?throttlingBurstLimit,
      'throttlingRateLimit': ?throttlingRateLimit,
    };
  }

  factory MethodSetting.fromMap(Map<String, dynamic> map) {
    return MethodSetting(
      cacheDataEncrypted: (() { final guardedValue = map['cacheDataEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheTtlInSeconds: (() { final guardedValue = map['cacheTtlInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      cachingEnabled: (() { final guardedValue = map['cachingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataTraceEnabled: (() { final guardedValue = map['dataTraceEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingLevel: (() { final guardedValue = map['loggingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsEnabled: (() { final guardedValue = map['metricsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourcePath: (() { final guardedValue = map['resourcePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throttlingBurstLimit: (() { final guardedValue = map['throttlingBurstLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      throttlingRateLimit: (() { final guardedValue = map['throttlingRateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
