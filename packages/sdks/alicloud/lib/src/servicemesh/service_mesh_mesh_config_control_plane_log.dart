// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigControlPlaneLog {
  /// Enable CNI
  final pulumi.Input<bool> enabled;
  /// Lifecycle of logs has been collected to Alibaba Cloud SLS
  final pulumi.Input<int>? logTtlInDay;
  /// The name of the SLS Project to which the control plane logs are collected.
  final pulumi.Input<String>? project;

  /// Creates a new [ServiceMeshMeshConfigControlPlaneLog].
  /// [enabled] Enable CNI
  /// [logTtlInDay] Lifecycle of logs has been collected to Alibaba Cloud SLS
  /// [project] The name of the SLS Project to which the control plane logs are collected.
  const ServiceMeshMeshConfigControlPlaneLog({
    required this.enabled,
    this.logTtlInDay,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logTtlInDay': ?logTtlInDay,
      'project': ?project,
    };
  }

  factory ServiceMeshMeshConfigControlPlaneLog.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigControlPlaneLog(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logTtlInDay: (() { final guardedValue = map['logTtlInDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

