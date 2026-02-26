// ignore_for_file: unused_element, unnecessary_cast

import 'stretched_cluster_config_response.dart';

/// Management cluster configuration.
class ManagementClusterResponse {
  /// The user-provided identifier of the new `Cluster`. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final String clusterId;

  /// The map of cluster node types in this cluster, where the key is canonical identifier of the node type (corresponds to the `NodeType`).
  final Map<String, String> nodeTypeConfigs;

  /// Optional. Configuration of a stretched cluster. Required for STRETCHED private clouds.
  final StretchedClusterConfigResponse stretchedClusterConfig;

  ManagementClusterResponse({
    required this.clusterId,
    required this.nodeTypeConfigs,
    required this.stretchedClusterConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['nodeTypeConfigs'] = nodeTypeConfigs;
    map['stretchedClusterConfig'] = stretchedClusterConfig.toMap();
    return map;
  }

  factory ManagementClusterResponse.fromMap(Map<String, dynamic> map) {
    return ManagementClusterResponse(
      clusterId: map['clusterId'] as String,
      nodeTypeConfigs: (map['nodeTypeConfigs'] as Map).cast<String, String>(),
      stretchedClusterConfig: StretchedClusterConfigResponse.fromMap(
          (map['stretchedClusterConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
