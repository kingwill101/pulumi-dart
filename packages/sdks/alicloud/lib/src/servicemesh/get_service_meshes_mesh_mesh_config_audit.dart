// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshMeshConfigAudit {
  /// Whether to enable CNI.
  final pulumi.Input<bool> enabled;
  /// The Service grid audit that to the project.
  final pulumi.Input<String> project;

  /// Creates a new [GetServiceMeshesMeshMeshConfigAudit].
  /// [enabled] Whether to enable CNI.
  /// [project] The Service grid audit that to the project.
  const GetServiceMeshesMeshMeshConfigAudit({
    required this.enabled,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'project': project,
    };
  }

  factory GetServiceMeshesMeshMeshConfigAudit.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigAudit(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}

