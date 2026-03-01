// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config.dart';
import 'cluster_default_storage_type.dart';
import 'encryption_config.dart';

/// {@template pulumi_bigtableadmin_v2_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_cluster_args_doc}
class ClusterArgs {
  /// Configuration for this cluster.
  final pulumi.Input<ClusterConfig>? clusterConfig;

  /// Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  final pulumi.Input<String> clusterId;

  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  final pulumi.Input<ClusterDefaultStorageType>? defaultStorageType;

  /// Immutable. The encryption configuration for CMEK-protected clusters.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  final pulumi.Input<String> instanceId;

  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  final pulumi.Input<String>? location;

  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final pulumi.Input<int>? serveNodes;

  /// Creates a new [ClusterArgs].
  /// [clusterConfig] Configuration for this cluster.
  /// [clusterId] Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  /// [defaultStorageType] Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  /// [encryptionConfig] Immutable. The encryption configuration for CMEK-protected clusters.
  /// [instanceId] Required.
  /// [location] Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  /// [name] The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  /// [project] Optional.
  /// [serveNodes] The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  ClusterArgs({
    ClusterConfig? clusterConfig,
    required String clusterId,
    ClusterDefaultStorageType? defaultStorageType,
    EncryptionConfig? encryptionConfig,
    required String instanceId,
    String? location,
    String? name,
    String? project,
    int? serveNodes,
  }) : clusterConfig = pulumi.Input.asOptionalInput<ClusterConfig>(
         clusterConfig,
       ),
       clusterId = pulumi.Input.asInput<String>(clusterId),
       defaultStorageType =
           pulumi.Input.asOptionalInput<ClusterDefaultStorageType>(
             defaultStorageType,
           ),
       encryptionConfig = pulumi.Input.asOptionalInput<EncryptionConfig>(
         encryptionConfig,
       ),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       serveNodes = pulumi.Input.asOptionalInput<int>(serveNodes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterConfig,
            Map<String, dynamic>
          >(clusterConfig, (value) => value.toMap()),
      'clusterId': clusterId,
      'defaultStorageType':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterDefaultStorageType,
            String
          >(defaultStorageType, (value) => value.value),
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'instanceId': instanceId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serveNodes': ?serveNodes,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterConfig: map['clusterConfig'] == null
          ? null
          : ClusterConfig.fromMap(
              (map['clusterConfig'] as Map).cast<String, dynamic>(),
            ),
      clusterId: map['clusterId'] as String,
      defaultStorageType: map['defaultStorageType'] == null
          ? null
          : ClusterDefaultStorageType.fromValue(
              map['defaultStorageType'] as String,
            ),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>(),
            ),
      instanceId: map['instanceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serveNodes: map['serveNodes'] == null ? null : map['serveNodes'] as int,
    );
  }
}
