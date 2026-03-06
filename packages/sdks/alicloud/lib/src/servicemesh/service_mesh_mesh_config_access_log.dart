// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigAccessLog {
  /// Enable CNI
  final pulumi.Input<bool>? enabled;
  /// Whether collect AccessLog of ASM Gateway to Alibaba Cloud SLS
  final pulumi.Input<bool>? gatewayEnabled;
  /// Lifecycle of AccessLog of ASM Gateways which have been collected to Alibaba Cloud SLS
  final pulumi.Input<int>? gatewayLifecycle;
  /// The name of the SLS Project to which the control plane logs are collected.
  final pulumi.Input<String>? project;
  /// Whether collect AccessLog of ASM Gateway to Alibaba Cloud SLS
  final pulumi.Input<bool>? sidecarEnabled;
  /// Lifecycle of AccessLog of ASM Sidecars which have been collected to Alibaba Cloud SLS
  final pulumi.Input<int>? sidecarLifecycle;

  /// Creates a new [ServiceMeshMeshConfigAccessLog].
  /// [enabled] Enable CNI
  /// [gatewayEnabled] Whether collect AccessLog of ASM Gateway to Alibaba Cloud SLS
  /// [gatewayLifecycle] Lifecycle of AccessLog of ASM Gateways which have been collected to Alibaba Cloud SLS
  /// [project] The name of the SLS Project to which the control plane logs are collected.
  /// [sidecarEnabled] Whether collect AccessLog of ASM Gateway to Alibaba Cloud SLS
  /// [sidecarLifecycle] Lifecycle of AccessLog of ASM Sidecars which have been collected to Alibaba Cloud SLS
  const ServiceMeshMeshConfigAccessLog({
    this.enabled,
    this.gatewayEnabled,
    this.gatewayLifecycle,
    this.project,
    this.sidecarEnabled,
    this.sidecarLifecycle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'gatewayEnabled': ?gatewayEnabled,
      'gatewayLifecycle': ?gatewayLifecycle,
      'project': ?project,
      'sidecarEnabled': ?sidecarEnabled,
      'sidecarLifecycle': ?sidecarLifecycle,
    };
  }

  factory ServiceMeshMeshConfigAccessLog.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigAccessLog(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayEnabled: (() { final guardedValue = map['gatewayEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayLifecycle: (() { final guardedValue = map['gatewayLifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sidecarEnabled: (() { final guardedValue = map['sidecarEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sidecarLifecycle: (() { final guardedValue = map['sidecarLifecycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

