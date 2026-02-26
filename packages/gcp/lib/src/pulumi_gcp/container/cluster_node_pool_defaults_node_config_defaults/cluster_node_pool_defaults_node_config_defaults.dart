// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_node_pool_defaults_node_config_defaults_containerd_config/cluster_node_pool_defaults_node_config_defaults_containerd_config.dart';
import '../cluster_node_pool_defaults_node_config_defaults_gcfs_config/cluster_node_pool_defaults_node_config_defaults_gcfs_config.dart';

class ClusterNodePoolDefaultsNodeConfigDefaults {
  /// Parameters for containerd configuration.
  final ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig?
      containerdConfig;

  /// The default Google Container Filesystem (GCFS) configuration at the cluster level. e.g. enable [image streaming](https://cloud.google.com/kubernetes-engine/docs/how-to/image-streaming) across all the node pools within the cluster. Structure is documented below.
  final ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig? gcfsConfig;

  /// Controls whether the kubelet read-only port is enabled for newly created node pools in the cluster. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final String? insecureKubeletReadonlyPortEnabled;

  /// The type of logging agent that is deployed by default for newly created node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT. See [Increasing logging agent throughput](https://cloud.google.com/stackdriver/docs/solutions/gke/managing-logs#throughput) for more information.
  final String? loggingVariant;

  ClusterNodePoolDefaultsNodeConfigDefaults({
    this.containerdConfig,
    this.gcfsConfig,
    this.insecureKubeletReadonlyPortEnabled,
    this.loggingVariant,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerdConfigValue = containerdConfig;
    if (containerdConfigValue != null) {
      map['containerdConfig'] = containerdConfigValue.toMap();
    }
    final gcfsConfigValue = gcfsConfig;
    if (gcfsConfigValue != null) {
      map['gcfsConfig'] = gcfsConfigValue.toMap();
    }
    final insecureKubeletReadonlyPortEnabledValue =
        insecureKubeletReadonlyPortEnabled;
    if (insecureKubeletReadonlyPortEnabledValue != null) {
      map['insecureKubeletReadonlyPortEnabled'] =
          insecureKubeletReadonlyPortEnabledValue;
    }
    final loggingVariantValue = loggingVariant;
    if (loggingVariantValue != null) {
      map['loggingVariant'] = loggingVariantValue;
    }
    return map;
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaults.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaults(
      containerdConfig: map['containerdConfig'] == null
          ? null
          : ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig.fromMap(
              (map['containerdConfig'] as Map).cast<String, dynamic>()),
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : ClusterNodePoolDefaultsNodeConfigDefaultsGcfsConfig.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] == null
              ? null
              : map['insecureKubeletReadonlyPortEnabled'] as String,
      loggingVariant: map['loggingVariant'] == null
          ? null
          : map['loggingVariant'] as String,
    );
  }
}
