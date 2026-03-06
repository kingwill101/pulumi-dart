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
  const ServiceMeshMeshConfigAudit({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

