// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Prometheus alert rule configuration.
class PrometheusRuleResolveConfigurationResponse {
  /// Enable alert auto-resolution.
  final pulumi.Input<bool>? autoResolved;
  /// Alert auto-resolution timeout.
  final pulumi.Input<String>? timeToResolve;

  /// Creates a new [PrometheusRuleResolveConfigurationResponse].
  /// [autoResolved] Enable alert auto-resolution.
  /// [timeToResolve] Alert auto-resolution timeout.
  PrometheusRuleResolveConfigurationResponse({
    this.autoResolved,
    this.timeToResolve,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResolved': ?autoResolved,
      'timeToResolve': ?timeToResolve,
    };
  }

  factory PrometheusRuleResolveConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusRuleResolveConfigurationResponse(
      autoResolved: map['autoResolved'] == null ? null : (map['autoResolved']! as bool).input(),
      timeToResolve: map['timeToResolve'] == null ? null : (map['timeToResolve']! as String).input(),
    );
  }
}

