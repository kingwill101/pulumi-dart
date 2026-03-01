// ignore_for_file: unused_element, unnecessary_cast

import 'container_exec.dart';
import 'container_http_get.dart';

/// The container probe, for liveness or readiness
class ContainerProbe {
  /// The execution command to probe
  final ContainerExec? exec;
  /// The failure threshold.
  final int? failureThreshold;
  /// The Http Get settings to probe
  final ContainerHttpGet? httpGet;
  /// The initial delay seconds.
  final int? initialDelaySeconds;
  /// The period seconds.
  final int? periodSeconds;
  /// The success threshold.
  final int? successThreshold;
  /// The timeout seconds.
  final int? timeoutSeconds;

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
      'exec': ?exec == null ? null : exec!.toMap(),
      'failureThreshold': ?failureThreshold,
      'httpGet': ?httpGet == null ? null : httpGet!.toMap(),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ContainerProbe.fromMap(Map<String, dynamic> map) {
    return ContainerProbe(
      exec: map['exec'] == null ? null : ContainerExec.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGet: map['httpGet'] == null ? null : ContainerHttpGet.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

