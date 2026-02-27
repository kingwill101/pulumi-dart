// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_config_response.dart';
import 'encryption_config_response_bigtableadmin_v2.dart';

/// Result data returned by getCluster.
class GetClusterBigtableadminV2Result {
  /// Configuration for this cluster.
  final ClusterConfigResponse clusterConfig;

  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  final String defaultStorageType;

  /// Immutable. The encryption configuration for CMEK-protected clusters.
  final EncryptionConfigResponseBigtableadminV2 encryptionConfig;

  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  final String location;

  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  final String name;

  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final int serveNodes;

  /// The current state of the cluster.
  final String state;

  GetClusterBigtableadminV2Result({
    required this.clusterConfig,
    required this.defaultStorageType,
    required this.encryptionConfig,
    required this.location,
    required this.name,
    required this.serveNodes,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterConfig'] = clusterConfig.toMap();
    map['defaultStorageType'] = defaultStorageType;
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['location'] = location;
    map['name'] = name;
    map['serveNodes'] = serveNodes;
    map['state'] = state;
    return map;
  }

  factory GetClusterBigtableadminV2Result.fromMap(Map<String, dynamic> map) {
    return GetClusterBigtableadminV2Result(
      clusterConfig: ClusterConfigResponse.fromMap(
          (map['clusterConfig'] as Map).cast<String, dynamic>()),
      defaultStorageType: map['defaultStorageType'] as String,
      encryptionConfig: EncryptionConfigResponseBigtableadminV2.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      serveNodes: map['serveNodes'] as int,
      state: map['state'] as String,
    );
  }
}
