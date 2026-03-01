// ignore_for_file: unused_element, unnecessary_cast

import 'container_exec_response.dart';
import 'container_http_get_response.dart';

/// The container probe, for liveness or readiness
class ContainerProbeResponse {
  /// The execution command to probe
  final ContainerExecResponse? exec;
  /// The failure threshold.
  final int? failureThreshold;
  /// The Http Get settings to probe
  final ContainerHttpGetResponse? httpGet;
  /// The initial delay seconds.
  final int? initialDelaySeconds;
  /// The period seconds.
  final int? periodSeconds;
  /// The success threshold.
  final int? successThreshold;
  /// The timeout seconds.
  final int? timeoutSeconds;

  /// Creates a new [ContainerProbeResponse].
  /// [exec] The execution command to probe
  /// [failureThreshold] The failure threshold.
  /// [httpGet] The Http Get settings to probe
  /// [initialDelaySeconds] The initial delay seconds.
  /// [periodSeconds] The period seconds.
  /// [successThreshold] The success threshold.
  /// [timeoutSeconds] The timeout seconds.
  ContainerProbeResponse({
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

  factory ContainerProbeResponse.fromMap(Map<String, dynamic> map) {
    return ContainerProbeResponse(
      exec: map['exec'] == null ? null : ContainerExecResponse.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGet: map['httpGet'] == null ? null : ContainerHttpGetResponse.fromMap((map['httpGet'] as Map).cast<String, dynamic>()),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

