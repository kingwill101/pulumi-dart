// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment container liveness/readiness probe configuration.
class ProbeSettingsResponse {
  /// The number of failures to allow before returning an unhealthy status.
  final pulumi.Input<int?>? failureThreshold;
  /// The delay before the first probe in ISO 8601 format.
  final pulumi.Input<String?>? initialDelay;
  /// The length of time between probes in ISO 8601 format.
  final pulumi.Input<String?>? period;
  /// The number of successful probes before returning a healthy status.
  final pulumi.Input<int?>? successThreshold;
  /// The probe timeout in ISO 8601 format.
  final pulumi.Input<String?>? timeout;

  /// Creates a new [ProbeSettingsResponse].
  /// [failureThreshold] The number of failures to allow before returning an unhealthy status.
  /// [initialDelay] The delay before the first probe in ISO 8601 format.
  /// [period] The length of time between probes in ISO 8601 format.
  /// [successThreshold] The number of successful probes before returning a healthy status.
  /// [timeout] The probe timeout in ISO 8601 format.
  ProbeSettingsResponse({
    pulumi.Input<int?>? failureThreshold,
    this.initialDelay,
    pulumi.Input<String?>? period,
    pulumi.Input<int?>? successThreshold,
    pulumi.Input<String?>? timeout,
  }) : failureThreshold = failureThreshold ?? pulumi.Input.fromValue(30), period = period ?? pulumi.Input.fromValue('PT10S'), successThreshold = successThreshold ?? pulumi.Input.fromValue(1), timeout = timeout ?? pulumi.Input.fromValue('PT2S');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'initialDelay': ?initialDelay,
      'period': ?period,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory ProbeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProbeSettingsResponse(
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      initialDelay: (() { final guardedValue = map['initialDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
