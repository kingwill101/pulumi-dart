// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceLogConfig {
  /// Whether to enable logging for the load balancer traffic served by this backend service.
  final bool? enable;

  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode"
  /// was set to CUSTOM. Contains a list of optional fields you want to include in the logs.
  /// For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  /// For example: orca_load_report, tls.protocol
  final List<String>? optionalFields;

  /// Specifies the optional logging mode for the load balancer traffic.
  /// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM.
  /// Possible values are: `INCLUDE_ALL_OPTIONAL`, `EXCLUDE_ALL_OPTIONAL`, `CUSTOM`.
  final String? optionalMode;

  /// This field can only be specified if logging is enabled for this backend service. The value of
  /// the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
  /// where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
  /// The default value is 1.0.
  final double? sampleRate;

  /// Creates a new [BackendServiceLogConfig].
  /// [enable] Whether to enable logging for the load balancer traffic served by this backend service.
  /// [optionalFields] This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode"
  /// [optionalMode] Specifies the optional logging mode for the load balancer traffic.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of
  BackendServiceLogConfig({
    this.enable,
    this.optionalFields,
    this.optionalMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'optionalFields': ?optionalFields,
      'optionalMode': ?optionalMode,
      'sampleRate': ?sampleRate,
    };
  }

  factory BackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfig(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      optionalFields: map['optionalFields'] == null
          ? null
          : (map['optionalFields'] as List).cast<String>(),
      optionalMode: map['optionalMode'] == null
          ? null
          : map['optionalMode'] as String,
      sampleRate: map['sampleRate'] == null
          ? null
          : map['sampleRate'] as double,
    );
  }
}
