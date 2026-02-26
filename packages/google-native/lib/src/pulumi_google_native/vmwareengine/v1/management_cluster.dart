// ignore_for_file: unused_element, unnecessary_cast

import 'stretched_cluster_config.dart';

/// Management cluster configuration.
class ManagementCluster {
  /// The user-provided identifier of the new `Cluster`. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final String clusterId;

  /// The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  final Map<String, String> nodeTypeConfigs;

  /// Optional. Configuration of a stretched cluster. Required for STRETCHED private clouds.
  final StretchedClusterConfig? stretchedClusterConfig;

  ManagementCluster({
    required this.clusterId,
    required this.nodeTypeConfigs,
    this.stretchedClusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['nodeTypeConfigs'] = nodeTypeConfigs;
    final stretchedClusterConfigValue = stretchedClusterConfig;
    if (stretchedClusterConfigValue != null) {
      map['stretchedClusterConfig'] = stretchedClusterConfigValue.toMap();
    }
    return map;
  }

  factory ManagementCluster.fromMap(Map<String, dynamic> map) {
    return ManagementCluster(
      clusterId: map['clusterId'] as String,
      nodeTypeConfigs: (map['nodeTypeConfigs'] as Map).cast<String, String>(),
      stretchedClusterConfig: map['stretchedClusterConfig'] == null
          ? null
          : StretchedClusterConfig.fromMap(
              (map['stretchedClusterConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
