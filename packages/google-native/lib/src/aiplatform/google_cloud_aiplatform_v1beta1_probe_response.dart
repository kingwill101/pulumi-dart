// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_probe_exec_action_response.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudAiplatformV1beta1ProbeResponse {
  /// Exec specifies the action to take.
  final GoogleCloudAiplatformV1beta1ProbeExecActionResponse exec;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  final int periodSeconds;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  final int timeoutSeconds;

  /// Creates a new [GoogleCloudAiplatformV1beta1ProbeResponse].
  /// [exec] Exec specifies the action to take.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  GoogleCloudAiplatformV1beta1ProbeResponse({
    required this.exec,
    required this.periodSeconds,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exec'] = exec.toMap();
    map['periodSeconds'] = periodSeconds;
    map['timeoutSeconds'] = timeoutSeconds;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ProbeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ProbeResponse(
      exec: GoogleCloudAiplatformV1beta1ProbeExecActionResponse.fromMap(
          (map['exec'] as Map).cast<String, dynamic>()),
      periodSeconds: map['periodSeconds'] as int,
      timeoutSeconds: map['timeoutSeconds'] as int,
    );
  }
}
