// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_node_pool_default_node_config_default_containerd_config/get_cluster_node_pool_default_node_config_default_containerd_config.dart';
import '../get_cluster_node_pool_default_node_config_default_gcfs_config/get_cluster_node_pool_default_node_config_default_gcfs_config.dart';

class GetClusterNodePoolDefaultNodeConfigDefault {
  /// Parameters for containerd configuration.
  final List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig>
      containerdConfigs;

  /// GCFS configuration for this node.
  final List<GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig> gcfsConfigs;

  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final String insecureKubeletReadonlyPortEnabled;

  /// Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  final String loggingVariant;

  GetClusterNodePoolDefaultNodeConfigDefault({
    required this.containerdConfigs,
    required this.gcfsConfigs,
    required this.insecureKubeletReadonlyPortEnabled,
    required this.loggingVariant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerdConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig,
        Map<String, dynamic>>(containerdConfigs, (value) => value.toMap());
    map['gcfsConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig,
        Map<String, dynamic>>(gcfsConfigs, (value) => value.toMap());
    map['insecureKubeletReadonlyPortEnabled'] =
        insecureKubeletReadonlyPortEnabled;
    map['loggingVariant'] = loggingVariant;
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefault.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefault(
      containerdConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig>(
          map['containerdConfigs'],
          (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig
              .fromMap((value as Map).cast<String, dynamic>())),
      gcfsConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig>(
          map['gcfsConfigs'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultGcfsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] as String,
      loggingVariant: map['loggingVariant'] as String,
    );
  }
}
