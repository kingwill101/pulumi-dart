// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_control_plane_control_plane_node_pool_config_node_pool_config_node_config.dart';
import 'bare_metal_cluster_control_plane_control_plane_node_pool_config_node_pool_config_taint.dart';

class BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig {
  /// The map of Kubernetes labels (key/value pairs) to be applied to
  /// each node. These will added in addition to any default label(s)
  /// that Kubernetes may apply to the node. In case of conflict in
  /// label keys, the applied set may differ depending on the Kubernetes
  /// version -- it's best to assume the behavior is undefined and
  /// conflicts should be avoided. For more information, including usage
  /// and the valid values, see:
  /// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
  /// An object containing a list of "key": value pairs.
  /// For example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;
  /// The list of machine addresses in the Bare Metal Node Pool.
  /// Structure is documented below.
  final List<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig>? nodeConfigs;
  /// Specifies the nodes operating system (default: LINUX).
  final String? operatingSystem;
  /// The initial taints assigned to nodes of this node pool.
  /// Structure is documented below.
  final List<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint>? taints;

  /// Creates a new [BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig].
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to
  /// [nodeConfigs] The list of machine addresses in the Bare Metal Node Pool.
  /// [operatingSystem] Specifies the nodes operating system (default: LINUX).
  /// [taints] The initial taints assigned to nodes of this node pool.
  BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig({
    this.labels,
    this.nodeConfigs,
    this.operatingSystem,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'nodeConfigs': ?nodeConfigs == null ? null : pulumi.Input.encodeList<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig, Map<String, dynamic>>(nodeConfigs!, (value) => value.toMap()),
      'operatingSystem': ?operatingSystem,
      'taints': ?taints == null ? null : pulumi.Input.encodeList<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint, Map<String, dynamic>>(taints!, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      nodeConfigs: map['nodeConfigs'] == null ? null : pulumi.Input.decodeList<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig>(map['nodeConfigs'], (value) => BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      operatingSystem: map['operatingSystem'] == null ? null : map['operatingSystem'] as String,
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint>(map['taints'], (value) => BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

