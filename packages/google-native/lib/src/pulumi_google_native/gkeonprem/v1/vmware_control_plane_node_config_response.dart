// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_auto_resize_config_response.dart';
import 'vmware_control_plane_vsphere_config_response.dart';

/// Specifies control plane node config for the VMware user cluster.
class VmwareControlPlaneNodeConfigResponse {
  /// AutoResizeConfig provides auto resizing configurations.
  final VmwareAutoResizeConfigResponse autoResizeConfig;

  /// The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  final String cpus;

  /// The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  final String memory;

  /// The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  final String replicas;

  /// Vsphere-specific config.
  final VmwareControlPlaneVsphereConfigResponse vsphereConfig;

  VmwareControlPlaneNodeConfigResponse({
    required this.autoResizeConfig,
    required this.cpus,
    required this.memory,
    required this.replicas,
    required this.vsphereConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoResizeConfig'] = autoResizeConfig.toMap();
    map['cpus'] = cpus;
    map['memory'] = memory;
    map['replicas'] = replicas;
    map['vsphereConfig'] = vsphereConfig.toMap();
    return map;
  }

  factory VmwareControlPlaneNodeConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return VmwareControlPlaneNodeConfigResponse(
      autoResizeConfig: VmwareAutoResizeConfigResponse.fromMap(
          (map['autoResizeConfig'] as Map).cast<String, dynamic>()),
      cpus: map['cpus'] as String,
      memory: map['memory'] as String,
      replicas: map['replicas'] as String,
      vsphereConfig: VmwareControlPlaneVsphereConfigResponse.fromMap(
          (map['vsphereConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
