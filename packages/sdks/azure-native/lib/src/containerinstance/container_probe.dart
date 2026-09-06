// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_exec.dart';
import 'container_http_get.dart';

/// The container probe, for liveness or readiness
class ContainerProbe {
  /// The execution command to probe
  final pulumi.Input<ContainerExec?>? exec;
  /// The failure threshold.
  final pulumi.Input<int?>? failureThreshold;
  /// The Http Get settings to probe
  final pulumi.Input<ContainerHttpGet?>? httpGet;
  /// The initial delay seconds.
  final pulumi.Input<int?>? initialDelaySeconds;
  /// The period seconds.
  final pulumi.Input<int?>? periodSeconds;
  /// The success threshold.
  final pulumi.Input<int?>? successThreshold;
  /// The timeout seconds.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [ContainerProbe].
  /// [exec] The execution command to probe
  /// [failureThreshold] The failure threshold.
  /// [httpGet] The Http Get settings to probe
  /// [initialDelaySeconds] The initial delay seconds.
  /// [periodSeconds] The period seconds.
  /// [successThreshold] The success threshold.
  /// [timeoutSeconds] The timeout seconds.
  const ContainerProbe({
    this.exec,
    this.failureThreshold,
    this.httpGet,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<ContainerExec, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'httpGet': ?pulumi.Input.mapOptionalInputValue<ContainerHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ContainerProbe.fromMap(Map<String, dynamic> map) {
    return ContainerProbe(
      exec: (() { final guardedValue = map['exec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerExec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
