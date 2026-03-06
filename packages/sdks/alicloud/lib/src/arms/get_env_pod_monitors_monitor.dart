// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvPodMonitorsMonitor {
  /// The YAML configuration string.
  final pulumi.Input<String> configYaml;
  /// The name of the PodMonitor.
  final pulumi.Input<String> envPodMonitorName;
  /// The environment ID.
  final pulumi.Input<String> environmentId;
  /// The ID of the PodMonitor. It formats as `&lt;environment_id&gt;:&lt;namespace&gt;:&lt;env_pod_monitor_name&gt;`.
  final pulumi.Input<String> id;
  /// The namespace.
  final pulumi.Input<String> namespace;
  /// The region ID.
  final pulumi.Input<String> regionId;
  /// The status of the PodMonitor.
  final pulumi.Input<String> status;

  /// Creates a new [GetEnvPodMonitorsMonitor].
  /// [configYaml] The YAML configuration string.
  /// [envPodMonitorName] The name of the PodMonitor.
  /// [environmentId] The environment ID.
  /// [id] The ID of the PodMonitor. It formats as `&lt;environment_id&gt;:&lt;namespace&gt;:&lt;env_pod_monitor_name&gt;`.
  /// [namespace] The namespace.
  /// [regionId] The region ID.
  /// [status] The status of the PodMonitor.
  const GetEnvPodMonitorsMonitor({
    required this.configYaml,
    required this.envPodMonitorName,
    required this.environmentId,
    required this.id,
    required this.namespace,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configYaml': configYaml,
      'envPodMonitorName': envPodMonitorName,
      'environmentId': environmentId,
      'id': id,
      'namespace': namespace,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetEnvPodMonitorsMonitor.fromMap(Map<String, dynamic> map) {
    return GetEnvPodMonitorsMonitor(
      configYaml: pulumi.Input.fromValue(map['configYaml'] as String),
      envPodMonitorName: pulumi.Input.fromValue(map['envPodMonitorName'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

