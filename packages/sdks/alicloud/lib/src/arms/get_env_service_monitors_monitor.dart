// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvServiceMonitorsMonitor {
  /// The YAML configuration string.
  final pulumi.Input<String> configYaml;
  /// The name of the ServiceMonitor.
  final pulumi.Input<String> envServiceMonitorName;
  /// The environment ID.
  final pulumi.Input<String> environmentId;
  /// The ID of the ServiceMonitor. It formats as `<environment_id>:<namespace>:<env_service_monitor_name>`.
  final pulumi.Input<String> id;
  /// The namespace.
  final pulumi.Input<String> namespace;
  /// The region ID.
  final pulumi.Input<String> regionId;
  /// The status of the ServiceMonitor.
  final pulumi.Input<String> status;

  /// Creates a new [GetEnvServiceMonitorsMonitor].
  /// [configYaml] The YAML configuration string.
  /// [envServiceMonitorName] The name of the ServiceMonitor.
  /// [environmentId] The environment ID.
  /// [id] The ID of the ServiceMonitor. It formats as `<environment_id>:<namespace>:<env_service_monitor_name>`.
  /// [namespace] The namespace.
  /// [regionId] The region ID.
  /// [status] The status of the ServiceMonitor.
  GetEnvServiceMonitorsMonitor({
    required this.configYaml,
    required this.envServiceMonitorName,
    required this.environmentId,
    required this.id,
    required this.namespace,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configYaml': configYaml,
      'envServiceMonitorName': envServiceMonitorName,
      'environmentId': environmentId,
      'id': id,
      'namespace': namespace,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetEnvServiceMonitorsMonitor.fromMap(Map<String, dynamic> map) {
    return GetEnvServiceMonitorsMonitor(
      configYaml: (map['configYaml'] as String).input(),
      envServiceMonitorName: (map['envServiceMonitorName'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      id: (map['id'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

