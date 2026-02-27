// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_pool_local_disk_encryption/node_pool_local_disk_encryption.dart';
import '../node_pool_node_config/node_pool_node_config_edgecontainer.dart';

/// The set of arguments for NodePool.
class NodePoolEdgecontainerArgs {
  /// The name of the target Distributed Cloud Edge Cluster.
  final pulumi.Input<String> cluster;

  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Local disk encryption options. This field is only used when enabling CMEK support.
  /// Structure is documented below.
  final pulumi.Input<NodePoolLocalDiskEncryption>? localDiskEncryption;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// Only machines matching this filter will be allowed to join the node pool.
  /// The filtering language accepts strings like "name=<name>", and is
  /// documented in more detail in [AIP-160](https://google.aip.dev/160).
  final pulumi.Input<String>? machineFilter;

  /// The resource name of the node pool.
  final pulumi.Input<String>? name;

  /// Configuration for each node in the NodePool
  /// Structure is documented below.
  final pulumi.Input<NodePoolNodeConfigEdgecontainer>? nodeConfig;

  /// The number of nodes in the pool.
  final pulumi.Input<int> nodeCount;

  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  final pulumi.Input<String> nodeLocation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  NodePoolEdgecontainerArgs({
    required this.cluster,
    this.labels,
    this.localDiskEncryption,
    required this.location,
    this.machineFilter,
    this.name,
    this.nodeConfig,
    required this.nodeCount,
    required this.nodeLocation,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final localDiskEncryptionValue = localDiskEncryption;
    if (localDiskEncryptionValue != null) {
      map['localDiskEncryption'] = pulumi.Input.mapOptionalInputValue<
              NodePoolLocalDiskEncryption, Map<String, dynamic>>(
          localDiskEncryptionValue, (value) => value.toMap());
    }
    map['location'] = location;
    final machineFilterValue = machineFilter;
    if (machineFilterValue != null) {
      map['machineFilter'] = machineFilterValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = pulumi.Input.mapOptionalInputValue<
          NodePoolNodeConfigEdgecontainer,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    map['nodeCount'] = nodeCount;
    map['nodeLocation'] = nodeLocation;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory NodePoolEdgecontainerArgs.fromMap(Map<String, dynamic> map) {
    return NodePoolEdgecontainerArgs(
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      localDiskEncryption:
          pulumi.Input.asOptionalInput<NodePoolLocalDiskEncryption>(
              map['localDiskEncryption']),
      location: pulumi.Input.asInput<String>(map['location']),
      machineFilter: pulumi.Input.asOptionalInput<String>(map['machineFilter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nodeConfig: pulumi.Input.asOptionalInput<NodePoolNodeConfigEdgecontainer>(
          map['nodeConfig']),
      nodeCount: pulumi.Input.asInput<int>(map['nodeCount']),
      nodeLocation: pulumi.Input.asInput<String>(map['nodeLocation']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
