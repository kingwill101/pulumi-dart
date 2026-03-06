// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_action.dart';

/// Probe describes a health check to be performed against an App Instance to determine whether it is alive or ready to receive traffic.
class Probe {
  /// Indicate whether the probe is disabled.
  final pulumi.Input<bool> disableProbe;
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Minimum value is 1.
  final pulumi.Input<int>? failureThreshold;
  /// Number of seconds after the App Instance has started before probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final pulumi.Input<int>? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Minimum value is 1.
  final pulumi.Input<int>? periodSeconds;
  /// The action of the probe.
  final pulumi.Input<ExecAction>? probeAction;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 for liveness and startup. Minimum value is 1.
  final pulumi.Input<int>? successThreshold;
  /// Number of seconds after which the probe times out. Minimum value is 1.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [Probe].
  /// [disableProbe] Indicate whether the probe is disabled.
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Minimum value is 1.
  /// [initialDelaySeconds] Number of seconds after the App Instance has started before probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Minimum value is 1.
  /// [probeAction] The action of the probe.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 for liveness and startup. Minimum value is 1.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Minimum value is 1.
  const Probe({
    required this.disableProbe,
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.probeAction,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableProbe': disableProbe,
      'failureThreshold': ?failureThreshold,
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'probeAction': ?pulumi.Input.mapOptionalInputValue<ExecAction, Map<String, dynamic>>(probeAction, (value) => value.toMap()),
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory Probe.fromMap(Map<String, dynamic> map) {
    return Probe(
      disableProbe: pulumi.Input.fromValue(map['disableProbe'] as bool),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      probeAction: (() { final guardedValue = map['probeAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

