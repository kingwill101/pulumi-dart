// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_exec.dart';
import 'container_http_get.dart';

/// The container probe, for liveness or readiness
class ContainerProbe {
  /// The execution command to probe
  final pulumi.Input<ContainerExec>? exec;
  /// The failure threshold.
  final pulumi.Input<int>? failureThreshold;
  /// The Http Get settings to probe
  final pulumi.Input<ContainerHttpGet>? httpGet;
  /// The initial delay seconds.
  final pulumi.Input<int>? initialDelaySeconds;
  /// The period seconds.
  final pulumi.Input<int>? periodSeconds;
  /// The success threshold.
  final pulumi.Input<int>? successThreshold;
  /// The timeout seconds.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [ContainerProbe].
  /// [exec] The execution command to probe
  /// [failureThreshold] The failure threshold.
  /// [httpGet] The Http Get settings to probe
  /// [initialDelaySeconds] The initial delay seconds.
  /// [periodSeconds] The period seconds.
  /// [successThreshold] The success threshold.
  /// [timeoutSeconds] The timeout seconds.
  ContainerProbe({
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
      exec: map['exec'] == null ? null : (ContainerExec.fromMap((map['exec']! as Map).cast<String, dynamic>())).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      httpGet: map['httpGet'] == null ? null : (ContainerHttpGet.fromMap((map['httpGet']! as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

