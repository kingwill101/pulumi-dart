// ignore_for_file: unused_element, unnecessary_cast

import 'exec_action.dart';

/// Probe describes a health check to be performed against an App Instance to determine whether it is alive or ready to receive traffic.
class Probe {
  /// Indicate whether the probe is disabled.
  final bool disableProbe;
  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Minimum value is 1.
  final int? failureThreshold;
  /// Number of seconds after the App Instance has started before probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  final int? initialDelaySeconds;
  /// How often (in seconds) to perform the probe. Minimum value is 1.
  final int? periodSeconds;
  /// The action of the probe.
  final ExecAction? probeAction;
  /// Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 for liveness and startup. Minimum value is 1.
  final int? successThreshold;
  /// Number of seconds after which the probe times out. Minimum value is 1.
  final int? timeoutSeconds;

  /// Creates a new [Probe].
  /// [disableProbe] Indicate whether the probe is disabled.
  /// [failureThreshold] Minimum consecutive failures for the probe to be considered failed after having succeeded. Minimum value is 1.
  /// [initialDelaySeconds] Number of seconds after the App Instance has started before probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  /// [periodSeconds] How often (in seconds) to perform the probe. Minimum value is 1.
  /// [probeAction] The action of the probe.
  /// [successThreshold] Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 for liveness and startup. Minimum value is 1.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Minimum value is 1.
  Probe({
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
      'probeAction': ?probeAction == null ? null : probeAction!.toMap(),
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory Probe.fromMap(Map<String, dynamic> map) {
    return Probe(
      disableProbe: map['disableProbe'] as bool,
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      probeAction: map['probeAction'] == null ? null : ExecAction.fromMap((map['probeAction'] as Map).cast<String, dynamic>()),
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

