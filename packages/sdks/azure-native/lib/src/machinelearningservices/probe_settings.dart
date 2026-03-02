// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment container liveness/readiness probe configuration.
class ProbeSettings {
  /// The number of failures to allow before returning an unhealthy status.
  final pulumi.Input<int>? failureThreshold;
  /// The delay before the first probe in ISO 8601 format.
  final pulumi.Input<String>? initialDelay;
  /// The length of time between probes in ISO 8601 format.
  final pulumi.Input<String>? period;
  /// The number of successful probes before returning a healthy status.
  final pulumi.Input<int>? successThreshold;
  /// The probe timeout in ISO 8601 format.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ProbeSettings].
  /// [failureThreshold] The number of failures to allow before returning an unhealthy status.
  /// [initialDelay] The delay before the first probe in ISO 8601 format.
  /// [period] The length of time between probes in ISO 8601 format.
  /// [successThreshold] The number of successful probes before returning a healthy status.
  /// [timeout] The probe timeout in ISO 8601 format.
  ProbeSettings({
    this.failureThreshold,
    this.initialDelay,
    this.period,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'initialDelay': ?initialDelay,
      'period': ?period,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory ProbeSettings.fromMap(Map<String, dynamic> map) {
    return ProbeSettings(
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      initialDelay: map['initialDelay'] == null ? null : (map['initialDelay']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as String).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

