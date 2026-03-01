// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceLogConfig {
  /// Whether to enable logging for the load balancer traffic served by this backend service.
  final bool enable;

  /// Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  final List<String> optionalFields;

  /// Specifies the optional logging mode for the load balancer traffic.
  /// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM. Possible values: ["INCLUDE_ALL_OPTIONAL", "EXCLUDE_ALL_OPTIONAL", "CUSTOM"]
  final String optionalMode;

  /// This field can only be specified if logging is enabled for this backend service. The value of
  /// the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
  /// where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
  /// The default value is 1.0.
  final double sampleRate;

  /// Creates a new [GetRegionBackendServiceLogConfig].
  /// [enable] Whether to enable logging for the load balancer traffic served by this backend service.
  /// [optionalFields] Specifies the fields to include in logging. This field can only be specified if logging is enabled for this backend service.
  /// [optionalMode] Specifies the optional logging mode for the load balancer traffic.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of
  GetRegionBackendServiceLogConfig({
    required this.enable,
    required this.optionalFields,
    required this.optionalMode,
    required this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'optionalFields': optionalFields,
      'optionalMode': optionalMode,
      'sampleRate': sampleRate,
    };
  }

  factory GetRegionBackendServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceLogConfig(
      enable: map['enable'] as bool,
      optionalFields: (map['optionalFields'] as List).cast<String>(),
      optionalMode: map['optionalMode'] as String,
      sampleRate: map['sampleRate'] as double,
    );
  }
}
