// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClustersClusterLogConfig {
  /// Log Service project name.
  final pulumi.Input<String> project;

  /// Type of collecting logs.
  final pulumi.Input<String> type;

  /// Creates a new [GetKubernetesClustersClusterLogConfig].
  /// [project] Log Service project name.
  /// [type] Type of collecting logs.
  GetKubernetesClustersClusterLogConfig({
    required this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': project, 'type': type};
  }

  factory GetKubernetesClustersClusterLogConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesClustersClusterLogConfig(
      project: pulumi.Input.fromValue(map['project'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
