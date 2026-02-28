// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_control_plane_node_auto_resize_config.dart';
import 'vmware_cluster_control_plane_node_vsphere_config.dart';

class VMwareClusterControlPlaneNode {
  /// AutoResizeConfig provides auto resizing configurations.
  /// Structure is documented below.
  final VMwareClusterControlPlaneNodeAutoResizeConfig? autoResizeConfig;

  /// The number of CPUs for each admin cluster node that serve as control planes
  /// for this VMware User Cluster. (default: 4 CPUs)
  final int? cpus;

  /// The megabytes of memory for each admin cluster node that serves as a
  /// control plane for this VMware User Cluster (default: 8192 MB memory).
  final int? memory;

  /// The number of control plane nodes for this VMware User Cluster.
  /// (default: 1 replica).
  final int? replicas;

  /// (Output)
  /// Vsphere-specific config.
  /// Structure is documented below.
  final List<VMwareClusterControlPlaneNodeVsphereConfig>? vsphereConfigs;

  /// Creates a new [VMwareClusterControlPlaneNode].
  /// [autoResizeConfig] AutoResizeConfig provides auto resizing configurations.
  /// [cpus] The number of CPUs for each admin cluster node that serve as control planes
  /// [memory] The megabytes of memory for each admin cluster node that serves as a
  /// [replicas] The number of control plane nodes for this VMware User Cluster.
  /// [vsphereConfigs] (Output)
  VMwareClusterControlPlaneNode({
    this.autoResizeConfig,
    this.cpus,
    this.memory,
    this.replicas,
    this.vsphereConfigs,
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
    final vsphereConfigsValue = vsphereConfigs;
    if (vsphereConfigsValue != null) {
      map['vsphereConfigs'] = pulumi.Input.encodeList<
          VMwareClusterControlPlaneNodeVsphereConfig,
          Map<String, dynamic>>(vsphereConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory VMwareClusterControlPlaneNode.fromMap(Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNode(
      autoResizeConfig: map['autoResizeConfig'] == null
          ? null
          : VMwareClusterControlPlaneNodeAutoResizeConfig.fromMap(
              (map['autoResizeConfig'] as Map).cast<String, dynamic>()),
      cpus: map['cpus'] == null ? null : map['cpus'] as int,
      memory: map['memory'] == null ? null : map['memory'] as int,
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
      vsphereConfigs: map['vsphereConfigs'] == null
          ? null
          : pulumi.Input.decodeList<VMwareClusterControlPlaneNodeVsphereConfig>(
              map['vsphereConfigs'],
              (value) => VMwareClusterControlPlaneNodeVsphereConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
