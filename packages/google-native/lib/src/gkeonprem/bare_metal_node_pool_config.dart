// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_kubelet_config.dart';
import 'bare_metal_node_config.dart';
import 'bare_metal_node_pool_config_operating_system.dart';
import 'node_taint.dart';

/// BareMetalNodePoolConfig describes the configuration of all nodes within a given bare metal node pool.
class BareMetalNodePoolConfig {
  /// The modifiable kubelet configurations for the bare metal machines.
  final BareMetalKubeletConfig? kubeletConfig;
  /// The labels assigned to nodes of this node pool. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;
  /// The list of machine addresses in the bare metal node pool.
  final List<BareMetalNodeConfig> nodeConfigs;
  /// Specifies the nodes operating system (default: LINUX).
  final BareMetalNodePoolConfigOperatingSystem? operatingSystem;
  /// The initial taints assigned to nodes of this node pool.
  final List<NodeTaint>? taints;

  /// Creates a new [BareMetalNodePoolConfig].
  /// [kubeletConfig] The modifiable kubelet configurations for the bare metal machines.
  /// [labels] The labels assigned to nodes of this node pool. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [nodeConfigs] The list of machine addresses in the bare metal node pool.
  /// [operatingSystem] Specifies the nodes operating system (default: LINUX).
  /// [taints] The initial taints assigned to nodes of this node pool.
  BareMetalNodePoolConfig({
    this.kubeletConfig,
    this.labels,
    required this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletConfig': ?kubeletConfig == null ? null : kubeletConfig!.toMap(),
      'labels': ?labels,
      'nodeConfigs': pulumi.Input.encodeList<BareMetalNodeConfig, Map<String, dynamic>>(nodeConfigs, (value) => value.toMap()),
      'operatingSystem': ?operatingSystem == null ? null : operatingSystem!.value,
      'taints': ?taints == null ? null : pulumi.Input.encodeList<NodeTaint, Map<String, dynamic>>(taints!, (value) => value.toMap()),
    };
  }

  factory BareMetalNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolConfig(
      kubeletConfig: map['kubeletConfig'] == null ? null : BareMetalKubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      nodeConfigs: pulumi.Input.decodeList<BareMetalNodeConfig>(map['nodeConfigs'], (value) => BareMetalNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      operatingSystem: map['operatingSystem'] == null ? null : BareMetalNodePoolConfigOperatingSystem.fromValue(map['operatingSystem'] as String),
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<NodeTaint>(map['taints'], (value) => NodeTaint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

