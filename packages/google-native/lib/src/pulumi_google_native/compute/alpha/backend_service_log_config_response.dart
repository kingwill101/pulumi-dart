// ignore_for_file: unused_element, unnecessary_cast

/// The available logging options for the load balancer traffic served by this backend service.
class BackendServiceLogConfigResponse {
  /// Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  final bool enable;

  /// Deprecated in favor of optionalMode. This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  final String optional;

  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  final List<String> optionalFields;

  /// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  final String optionalMode;

  /// This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  final double sampleRate;

  BackendServiceLogConfigResponse({
    required this.enable,
    required this.optional,
    required this.optionalFields,
    required this.optionalMode,
    required this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    map['optional'] = optional;
    map['optionalFields'] = optionalFields;
    map['optionalMode'] = optionalMode;
    map['sampleRate'] = sampleRate;
    return map;
  }

  factory BackendServiceLogConfigResponse.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfigResponse(
      enable: map['enable'] as bool,
      optional: map['optional'] as String,
      optionalFields: (map['optionalFields'] as List).cast<String>(),
      optionalMode: map['optionalMode'] as String,
      sampleRate: map['sampleRate'] as double,
    );
  }
}
