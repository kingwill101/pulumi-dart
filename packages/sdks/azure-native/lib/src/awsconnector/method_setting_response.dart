// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MethodSetting
class MethodSettingResponse {
  /// Specifies whether the cached responses are encrypted.
  final bool? cacheDataEncrypted;
  /// Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.
  final int? cacheTtlInSeconds;
  /// Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.
  final bool? cachingEnabled;
  /// Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. This can be useful to troubleshoot APIs, but can result in logging sensitive data. We recommend that you don't enable this option for production APIs.
  final bool? dataTraceEnabled;
  /// The HTTP method. To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
  final String? httpMethod;
  /// Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. Valid values are ``OFF``, ``ERROR``, and ``INFO``. Choose ``ERROR`` to write only error-level entries to CloudWatch Logs, or choose ``INFO`` to include all ``ERROR`` events as well as extra informational events.
  final String? loggingLevel;
  /// Specifies whether Amazon CloudWatch metrics are enabled for this method.
  final bool? metricsEnabled;
  /// The resource path for this method. Forward slashes (``/``) are encoded as ``~1`` and the initial slash must include a forward slash. For example, the path value ``/resource/subresource`` must be encoded as ``/~1resource~1subresource``. To specify the root path, use only a slash (``/``). To apply settings to multiple resources and methods, specify an asterisk (``*``) for the ``HttpMethod`` and ``/*`` for the ``ResourcePath``. This parameter is required when you specify a ``MethodSetting``.
  final String? resourcePath;
  /// Specifies the throttling burst limit.
  final int? throttlingBurstLimit;
  /// Specifies the throttling rate limit.
  final int? throttlingRateLimit;

  /// Creates a new [MethodSettingResponse].
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
  MethodSettingResponse({
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

  factory MethodSettingResponse.fromMap(Map<String, dynamic> map) {
    return MethodSettingResponse(
      cacheDataEncrypted: map['cacheDataEncrypted'] == null ? null : map['cacheDataEncrypted'] as bool,
      cacheTtlInSeconds: map['cacheTtlInSeconds'] == null ? null : map['cacheTtlInSeconds'] as int,
      cachingEnabled: map['cachingEnabled'] == null ? null : map['cachingEnabled'] as bool,
      dataTraceEnabled: map['dataTraceEnabled'] == null ? null : map['dataTraceEnabled'] as bool,
      httpMethod: map['httpMethod'] == null ? null : map['httpMethod'] as String,
      loggingLevel: map['loggingLevel'] == null ? null : map['loggingLevel'] as String,
      metricsEnabled: map['metricsEnabled'] == null ? null : map['metricsEnabled'] as bool,
      resourcePath: map['resourcePath'] == null ? null : map['resourcePath'] as String,
      throttlingBurstLimit: map['throttlingBurstLimit'] == null ? null : map['throttlingBurstLimit'] as int,
      throttlingRateLimit: map['throttlingRateLimit'] == null ? null : map['throttlingRateLimit'] as int,
    );
  }
}

