// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config.dart';
import 'cluster_default_storage_type.dart';
import 'encryption_config_bigtableadmin_v2.dart';

/// The set of arguments for Cluster.
class ClusterBigtableadminV2Args {
  /// Configuration for this cluster.
  final pulumi.Input<ClusterConfig>? clusterConfig;

  /// Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  final pulumi.Input<String> clusterId;

  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  final pulumi.Input<ClusterDefaultStorageType>? defaultStorageType;

  /// Immutable. The encryption configuration for CMEK-protected clusters.
  final pulumi.Input<EncryptionConfigBigtableadminV2>? encryptionConfig;
  final pulumi.Input<String> instanceId;

  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  final pulumi.Input<String>? location;

  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final pulumi.Input<int>? serveNodes;

  ClusterBigtableadminV2Args({
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
      map['clusterConfig'] = pulumi.Input.mapOptionalInputValue<ClusterConfig,
          Map<String, dynamic>>(clusterConfigValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final defaultStorageTypeValue = defaultStorageType;
    if (defaultStorageTypeValue != null) {
      map['defaultStorageType'] =
          pulumi.Input.mapOptionalInputValue<ClusterDefaultStorageType, String>(
              defaultStorageTypeValue, (value) => value.value);
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              EncryptionConfigBigtableadminV2, Map<String, dynamic>>(
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

  factory ClusterBigtableadminV2Args.fromMap(Map<String, dynamic> map) {
    return ClusterBigtableadminV2Args(
      clusterConfig:
          pulumi.Input.asOptionalInput<ClusterConfig>(map['clusterConfig']),
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      defaultStorageType:
          pulumi.Input.asOptionalInput<ClusterDefaultStorageType>(
              map['defaultStorageType']),
      encryptionConfig:
          pulumi.Input.asOptionalInput<EncryptionConfigBigtableadminV2>(
              map['encryptionConfig']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serveNodes: pulumi.Input.asOptionalInput<int>(map['serveNodes']),
    );
  }
}
