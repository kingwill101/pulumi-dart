// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_auto_resize_config.dart';
import 'vmware_control_plane_vsphere_config.dart';

/// Specifies control plane node config for the VMware user cluster.
class VmwareControlPlaneNodeConfig {
  /// AutoResizeConfig provides auto resizing configurations.
  final VmwareAutoResizeConfig? autoResizeConfig;

  /// The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  final String? cpus;

  /// The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  final String? memory;

  /// The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  final String? replicas;

  /// Vsphere-specific config.
  final VmwareControlPlaneVsphereConfig? vsphereConfig;

  /// Creates a new [VmwareControlPlaneNodeConfig].
  /// [autoResizeConfig] AutoResizeConfig provides auto resizing configurations.
  /// [cpus] The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  /// [memory] The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  /// [replicas] The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  /// [vsphereConfig] Vsphere-specific config.
  VmwareControlPlaneNodeConfig({
    this.autoResizeConfig,
    this.cpus,
    this.memory,
    this.replicas,
    this.vsphereConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoResizeConfigValue = autoResizeConfig;
    if (autoResizeConfigValue != null) {
      map['autoResizeConfig'] = autoResizeConfigValue.toMap();
    }
    final cpusValue = cpus;
    if (cpusValue != null) {
      map['cpus'] = cpusValue;
    }
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
    }
    final replicasValue = replicas;
    if (replicasValue != null) {
      map['replicas'] = replicasValue;
    }
    final vsphereConfigValue = vsphereConfig;
    if (vsphereConfigValue != null) {
      map['vsphereConfig'] = vsphereConfigValue.toMap();
    }
    return map;
  }

  factory VmwareControlPlaneNodeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneNodeConfig(
      autoResizeConfig: map['autoResizeConfig'] == null
          ? null
          : VmwareAutoResizeConfig.fromMap(
              (map['autoResizeConfig'] as Map).cast<String, dynamic>()),
      cpus: map['cpus'] == null ? null : map['cpus'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
      replicas: map['replicas'] == null ? null : map['replicas'] as String,
      vsphereConfig: map['vsphereConfig'] == null
          ? null
          : VmwareControlPlaneVsphereConfig.fromMap(
              (map['vsphereConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
