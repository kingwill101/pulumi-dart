// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_configuration_response_scale.dart';

/// Settings for the ingress component, including workload profile, scaling, and connection handling.
class IngressConfigurationResponse {
  /// Maximum number of headers per request allowed by the ingress. Must be at least 1. Defaults to 100.
  final pulumi.Input<int>? headerCountLimit;
  /// Duration (in minutes) before idle requests are timed out. Must be at least 1 minute. Defaults to 4 minutes.
  final pulumi.Input<int>? requestIdleTimeout;
  /// Scaling configuration for the ingress component. Required.
  final pulumi.Input<IngressConfigurationResponseScale>? scale;
  /// Time (in seconds) to allow active connections to complete on termination. Must be between 0 and 3600. Defaults to 480 seconds.
  final pulumi.Input<int>? terminationGracePeriodSeconds;
  /// Name of the workload profile used by the ingress component. Required.
  final pulumi.Input<String>? workloadProfileName;

  /// Creates a new [IngressConfigurationResponse].
  /// [headerCountLimit] Maximum number of headers per request allowed by the ingress. Must be at least 1. Defaults to 100.
  /// [requestIdleTimeout] Duration (in minutes) before idle requests are timed out. Must be at least 1 minute. Defaults to 4 minutes.
  /// [scale] Scaling configuration for the ingress component. Required.
  /// [terminationGracePeriodSeconds] Time (in seconds) to allow active connections to complete on termination. Must be between 0 and 3600. Defaults to 480 seconds.
  /// [workloadProfileName] Name of the workload profile used by the ingress component. Required.
  IngressConfigurationResponse({
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
      'scale': ?pulumi.Input.mapOptionalInputValue<IngressConfigurationResponseScale, Map<String, dynamic>>(scale, (value) => value.toMap()),
      'terminationGracePeriodSeconds': ?terminationGracePeriodSeconds,
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory IngressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IngressConfigurationResponse(
      headerCountLimit: (() { final guardedValue = map['headerCountLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requestIdleTimeout: (() { final guardedValue = map['requestIdleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressConfigurationResponseScale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminationGracePeriodSeconds: (() { final guardedValue = map['terminationGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workloadProfileName: (() { final guardedValue = map['workloadProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

