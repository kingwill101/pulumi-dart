// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_exec_response.dart';
import 'container_http_get_response.dart';

/// The container probe, for liveness or readiness
class ContainerProbeResponse {
  /// The execution command to probe
  final pulumi.Input<ContainerExecResponse>? exec;
  /// The failure threshold.
  final pulumi.Input<int>? failureThreshold;
  /// The Http Get settings to probe
  final pulumi.Input<ContainerHttpGetResponse>? httpGet;
  /// The initial delay seconds.
  final pulumi.Input<int>? initialDelaySeconds;
  /// The period seconds.
  final pulumi.Input<int>? periodSeconds;
  /// The success threshold.
  final pulumi.Input<int>? successThreshold;
  /// The timeout seconds.
  final pulumi.Input<int>? timeoutSeconds;

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
      'exec': ?pulumi.Input.mapOptionalInputValue<ContainerExecResponse, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'failureThreshold': ?failureThreshold,
      'httpGet': ?pulumi.Input.mapOptionalInputValue<ContainerHttpGetResponse, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ContainerProbeResponse.fromMap(Map<String, dynamic> map) {
    return ContainerProbeResponse(
      exec: map['exec'] == null ? null : (ContainerExecResponse.fromMap((map['exec']! as Map).cast<String, dynamic>())).input(),
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      httpGet: map['httpGet'] == null ? null : (ContainerHttpGetResponse.fromMap((map['httpGet']! as Map).cast<String, dynamic>())).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

