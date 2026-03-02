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
  ServiceMeshMeshConfigAccessLog({
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
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      gatewayEnabled: map['gatewayEnabled'] == null ? null : (map['gatewayEnabled']! as bool).input(),
      gatewayLifecycle: map['gatewayLifecycle'] == null ? null : (map['gatewayLifecycle']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sidecarEnabled: map['sidecarEnabled'] == null ? null : (map['sidecarEnabled']! as bool).input(),
      sidecarLifecycle: map['sidecarLifecycle'] == null ? null : (map['sidecarLifecycle']! as int).input(),
    );
  }
}

