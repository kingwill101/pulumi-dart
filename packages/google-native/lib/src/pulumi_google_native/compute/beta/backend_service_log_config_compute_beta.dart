// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_log_config_optional_mode_compute_beta.dart';

/// The available logging options for the load balancer traffic served by this backend service.
class BackendServiceLogConfigComputeBeta {
  /// Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  final bool? enable;

  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  final List<String>? optionalFields;

  /// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  final BackendServiceLogConfigOptionalModeComputeBeta? optionalMode;

  /// This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  final double? sampleRate;

  BackendServiceLogConfigComputeBeta({
    this.enable,
    this.optionalFields,
    this.optionalMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final optionalFieldsValue = optionalFields;
    if (optionalFieldsValue != null) {
      map['optionalFields'] = optionalFieldsValue;
    }
    final optionalModeValue = optionalMode;
    if (optionalModeValue != null) {
      map['optionalMode'] = optionalModeValue.value;
    }
    final sampleRateValue = sampleRate;
    if (sampleRateValue != null) {
      map['sampleRate'] = sampleRateValue;
    }
    return map;
  }

  factory BackendServiceLogConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfigComputeBeta(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      optionalFields: map['optionalFields'] == null
          ? null
          : (map['optionalFields'] as List).cast<String>(),
      optionalMode: map['optionalMode'] == null
          ? null
          : BackendServiceLogConfigOptionalModeComputeBeta.fromValue(
              map['optionalMode'] as String),
      sampleRate:
          map['sampleRate'] == null ? null : map['sampleRate'] as double,
    );
  }
}
