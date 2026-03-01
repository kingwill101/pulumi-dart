// ignore_for_file: unused_element, unnecessary_cast

import 'ingress_configuration_scale.dart';

/// Settings for the ingress component, including workload profile, scaling, and connection handling.
class IngressConfiguration {
  /// Maximum number of headers per request allowed by the ingress. Must be at least 1. Defaults to 100.
  final int? headerCountLimit;
  /// Duration (in minutes) before idle requests are timed out. Must be at least 1 minute. Defaults to 4 minutes.
  final int? requestIdleTimeout;
  /// Scaling configuration for the ingress component. Required.
  final IngressConfigurationScale? scale;
  /// Time (in seconds) to allow active connections to complete on termination. Must be between 0 and 3600. Defaults to 480 seconds.
  final int? terminationGracePeriodSeconds;
  /// Name of the workload profile used by the ingress component. Required.
  final String? workloadProfileName;

  /// Creates a new [IngressConfiguration].
  /// [headerCountLimit] Maximum number of headers per request allowed by the ingress. Must be at least 1. Defaults to 100.
  /// [requestIdleTimeout] Duration (in minutes) before idle requests are timed out. Must be at least 1 minute. Defaults to 4 minutes.
  /// [scale] Scaling configuration for the ingress component. Required.
  /// [terminationGracePeriodSeconds] Time (in seconds) to allow active connections to complete on termination. Must be between 0 and 3600. Defaults to 480 seconds.
  /// [workloadProfileName] Name of the workload profile used by the ingress component. Required.
  IngressConfiguration({
    this.headerCountLimit,
    this.requestIdleTimeout,
    this.scale,
    this.terminationGracePeriodSeconds,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerCountLimit': ?headerCountLimit,
      'requestIdleTimeout': ?requestIdleTimeout,
      'scale': ?scale == null ? null : scale!.toMap(),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory IngressConfiguration.fromMap(Map<String, dynamic> map) {
    return IngressConfiguration(
      headerCountLimit: map['headerCountLimit'] == null ? null : map['headerCountLimit'] as int,
      requestIdleTimeout: map['requestIdleTimeout'] == null ? null : map['requestIdleTimeout'] as int,
      scale: map['scale'] == null ? null : IngressConfigurationScale.fromMap((map['scale'] as Map).cast<String, dynamic>()),
      terminationGracePeriodSeconds: map['terminationGracePeriodSeconds'] == null ? null : map['terminationGracePeriodSeconds'] as int,
      workloadProfileName: map['workloadProfileName'] == null ? null : map['workloadProfileName'] as String,
    );
  }
}

