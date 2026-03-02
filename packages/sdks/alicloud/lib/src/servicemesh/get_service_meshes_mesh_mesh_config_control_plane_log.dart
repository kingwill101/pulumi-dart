// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshMeshConfigControlPlaneLog {
  /// Whether to enable CNI.
  final pulumi.Input<bool> enabled;
  /// The Service grid audit that to the project.
  final pulumi.Input<String> project;

  /// Creates a new [GetServiceMeshesMeshMeshConfigControlPlaneLog].
  /// [enabled] Whether to enable CNI.
  /// [project] The Service grid audit that to the project.
  GetServiceMeshesMeshMeshConfigControlPlaneLog({
    required this.enabled,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'project': project,
    };
  }

  factory GetServiceMeshesMeshMeshConfigControlPlaneLog.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshMeshConfigControlPlaneLog(
      enabled: (map['enabled'] as bool).input(),
      project: (map['project'] as String).input(),
    );
  }
}

