// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigAudit {
  /// Enable CNI
  final pulumi.Input<bool>? enabled;
  /// The name of the SLS Project to which the control plane logs are collected.
  final pulumi.Input<String>? project;

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
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

