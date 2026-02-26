// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_probe_exec_action.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudAiplatformV1Probe {
  /// Exec specifies the action to take.
  final GoogleCloudAiplatformV1ProbeExecAction? exec;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  final int? periodSeconds;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  final int? timeoutSeconds;

  GoogleCloudAiplatformV1Probe({
    this.exec,
    this.periodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final execValue = exec;
    if (execValue != null) {
      map['exec'] = execValue.toMap();
    }
    final periodSecondsValue = periodSeconds;
    if (periodSecondsValue != null) {
      map['periodSeconds'] = periodSecondsValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1Probe.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Probe(
      exec: map['exec'] == null
          ? null
          : GoogleCloudAiplatformV1ProbeExecAction.fromMap(
              (map['exec'] as Map).cast<String, dynamic>()),
      periodSeconds:
          map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}
