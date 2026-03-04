// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshMeshConfigAccessLog {
  /// Whether to enable CNI.
  final pulumi.Input<bool> enabled;

  /// The Service grid audit that to the project.
  final pulumi.Input<String> project;

  /// Creates a new [GetServiceMeshesMeshMeshConfigAccessLog].
  /// [enabled] Whether to enable CNI.
  /// [project] The Service grid audit that to the project.
  GetServiceMeshesMeshMeshConfigAccessLog({
    required this.enabled,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'project': project};
  }

  factory GetServiceMeshesMeshMeshConfigAccessLog.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceMeshesMeshMeshConfigAccessLog(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
