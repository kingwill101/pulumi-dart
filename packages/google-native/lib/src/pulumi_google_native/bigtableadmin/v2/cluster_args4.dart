// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'cluster_config.dart';
import 'cluster_default_storage_type.dart';
import 'encryption_config4.dart';

/// The set of arguments for Cluster.
class ClusterArgs4 {
  /// Configuration for this cluster.
  final Input<ClusterConfig>? clusterConfig;

  /// Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  final Input<String> clusterId;

  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  final Input<ClusterDefaultStorageType>? defaultStorageType;

  /// Immutable. The encryption configuration for CMEK-protected clusters.
  final Input<EncryptionConfig4>? encryptionConfig;
  final Input<String> instanceId;

  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  final Input<String>? location;

  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  final Input<String>? name;
  final Input<String>? project;

  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final Input<int>? serveNodes;

  ClusterArgs4({
    this.clusterConfig,
    required this.clusterId,
    this.defaultStorageType,
    this.encryptionConfig,
    required this.instanceId,
    this.location,
    this.name,
    this.project,
    this.serveNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterConfigValue = clusterConfig;
    if (clusterConfigValue != null) {
      map['clusterConfig'] =
          Input.mapOptionalInputValue<ClusterConfig, Map<String, dynamic>>(
              clusterConfigValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final defaultStorageTypeValue = defaultStorageType;
    if (defaultStorageTypeValue != null) {
      map['defaultStorageType'] =
          Input.mapOptionalInputValue<ClusterDefaultStorageType, String>(
              defaultStorageTypeValue, (value) => value.value);
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] =
          Input.mapOptionalInputValue<EncryptionConfig4, Map<String, dynamic>>(
              encryptionConfigValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serveNodesValue = serveNodes;
    if (serveNodesValue != null) {
      map['serveNodes'] = serveNodesValue;
    }
    return map;
  }

  factory ClusterArgs4.fromMap(Map<String, dynamic> map) {
    return ClusterArgs4(
      clusterConfig: Input.asOptionalInput<ClusterConfig>(map['clusterConfig']),
      clusterId: Input.asInput<String>(map['clusterId']),
      defaultStorageType: Input.asOptionalInput<ClusterDefaultStorageType>(
          map['defaultStorageType']),
      encryptionConfig:
          Input.asOptionalInput<EncryptionConfig4>(map['encryptionConfig']),
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serveNodes: Input.asOptionalInput<int>(map['serveNodes']),
    );
  }
}
