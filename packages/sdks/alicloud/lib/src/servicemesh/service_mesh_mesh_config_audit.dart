// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshMeshConfigAudit {
  /// Enable CNI
  final bool? enabled;
  /// The name of the SLS Project to which the control plane logs are collected.
  final String? project;

  /// Creates a new [ServiceMeshMeshConfigAudit].
  /// [enabled] Enable CNI
  /// [project] The name of the SLS Project to which the control plane logs are collected.
  ServiceMeshMeshConfigAudit({
    this.enabled,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'project': ?project,
    };
  }

  factory ServiceMeshMeshConfigAudit.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigAudit(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

