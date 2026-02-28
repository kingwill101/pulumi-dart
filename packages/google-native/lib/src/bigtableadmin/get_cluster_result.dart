// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_config_response.dart';
import 'encryption_config_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Configuration for this cluster.
  final ClusterConfigResponse clusterConfig;
  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  final String defaultStorageType;
  /// Immutable. The encryption configuration for CMEK-protected clusters.
  final EncryptionConfigResponse encryptionConfig;
  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  final String location;
  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  final String name;
  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final int serveNodes;
  /// The current state of the cluster.
  final String state;

  /// Creates a new [GetClusterResult].
  /// [clusterConfig] Configuration for this cluster.
  /// [defaultStorageType] Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  /// [encryptionConfig] Immutable. The encryption configuration for CMEK-protected clusters.
  /// [location] Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  /// [name] The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  /// [serveNodes] The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  /// [state] The current state of the cluster.
  GetClusterResult({
    required this.clusterConfig,
    required this.defaultStorageType,
    required this.encryptionConfig,
    required this.location,
    required this.name,
    required this.serveNodes,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig': clusterConfig.toMap(),
      'defaultStorageType': defaultStorageType,
      'encryptionConfig': encryptionConfig.toMap(),
      'location': location,
      'name': name,
      'serveNodes': serveNodes,
      'state': state,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterConfig: ClusterConfigResponse.fromMap((map['clusterConfig'] as Map).cast<String, dynamic>()),
      defaultStorageType: map['defaultStorageType'] as String,
      encryptionConfig: EncryptionConfigResponse.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      serveNodes: map['serveNodes'] as int,
      state: map['state'] as String,
    );
  }
}

