// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_log_config_optional_mode_compute_v1.dart';

/// The available logging options for the load balancer traffic served by this backend service.
class BackendServiceLogConfigComputeV1 {
  /// Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  final bool? enable;

  /// This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  final List<String>? optionalFields;

  /// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  final BackendServiceLogConfigOptionalModeComputeV1? optionalMode;

  /// This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  final double? sampleRate;

  /// Creates a new [BackendServiceLogConfigComputeV1].
  /// [enable] Denotes whether to enable logging for the load balancer traffic served by this backend service. The default value is false.
  /// [optionalFields] This field can only be specified if logging is enabled for this backend service and "logConfig.optionalMode" was set to CUSTOM. Contains a list of optional fields you want to include in the logs. For example: serverInstance, serverGkeDetails.cluster, serverGkeDetails.pod.podNamespace
  /// [optionalMode] This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
  /// [sampleRate] This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  BackendServiceLogConfigComputeV1({
    this.enable,
    this.optionalFields,
    this.optionalMode,
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'optionalFields': ?optionalFields,
      'optionalMode': ?optionalMode == null ? null : optionalMode!.value,
      'sampleRate': ?sampleRate,
    };
  }

  factory BackendServiceLogConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceLogConfigComputeV1(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      optionalFields: map['optionalFields'] == null
          ? null
          : (map['optionalFields'] as List).cast<String>(),
      optionalMode: map['optionalMode'] == null
          ? null
          : BackendServiceLogConfigOptionalModeComputeV1.fromValue(
              map['optionalMode'] as String,
            ),
      sampleRate: map['sampleRate'] == null
          ? null
          : map['sampleRate'] as double,
    );
  }
}
