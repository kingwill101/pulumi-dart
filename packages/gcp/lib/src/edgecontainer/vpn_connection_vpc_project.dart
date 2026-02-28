// ignore_for_file: unused_element, unnecessary_cast

class VpnConnectionVpcProject {
  /// The project of the VPC to connect to. If not specified, it is the same as the cluster project.
  final String? projectId;

  /// Creates a new [VpnConnectionVpcProject].
  /// [projectId] The project of the VPC to connect to. If not specified, it is the same as the cluster project.
  VpnConnectionVpcProject({
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory VpnConnectionVpcProject.fromMap(Map<String, dynamic> map) {
    return VpnConnectionVpcProject(
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
