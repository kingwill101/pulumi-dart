// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshMeshConfigAccessLog {
  /// Enable CNI
  final bool? enabled;
  /// Whether collect AccessLog of ASM Gateway to Alibaba Cloud SLS
  final bool? gatewayEnabled;
  /// Lifecycle of AccessLog of ASM Gateways which have been collected to Alibaba Cloud SLS
  final int? gatewayLifecycle;
  /// The name of the SLS Project to which the control plane logs are collected.
  final String? project;
  /// Whether collect AccessLog of ASM Gateway to Alibaba Cloud SLS
  final bool? sidecarEnabled;
  /// Lifecycle of AccessLog of ASM Sidecars which have been collected to Alibaba Cloud SLS
  final int? sidecarLifecycle;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      gatewayEnabled: map['gatewayEnabled'] == null ? null : map['gatewayEnabled'] as bool,
      gatewayLifecycle: map['gatewayLifecycle'] == null ? null : map['gatewayLifecycle'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      sidecarEnabled: map['sidecarEnabled'] == null ? null : map['sidecarEnabled'] as bool,
      sidecarLifecycle: map['sidecarLifecycle'] == null ? null : map['sidecarLifecycle'] as int,
    );
  }
}

