// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../node_pool_local_disk_encryption/node_pool_local_disk_encryption.dart';
import '../node_pool_node_config/node_pool_node_config2.dart';

/// The set of arguments for NodePool.
class NodePoolArgs2 {
  /// The name of the target Distributed Cloud Edge Cluster.
  final Input<String> cluster;

  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Local disk encryption options. This field is only used when enabling CMEK support.
  /// Structure is documented below.
  final Input<NodePoolLocalDiskEncryption>? localDiskEncryption;

  /// The location of the resource.
  final Input<String> location;

  /// Only machines matching this filter will be allowed to join the node pool.
  /// The filtering language accepts strings like "name=<name>", and is
  /// documented in more detail in [AIP-160](https://google.aip.dev/160).
  final Input<String>? machineFilter;

  /// The resource name of the node pool.
  final Input<String>? name;

  /// Configuration for each node in the NodePool
  /// Structure is documented below.
  final Input<NodePoolNodeConfig2>? nodeConfig;

  /// The number of nodes in the pool.
  final Input<int> nodeCount;

  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  final Input<String> nodeLocation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  NodePoolArgs2({
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
      map['localDiskEncryption'] = Input.mapOptionalInputValue<
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
      map['nodeConfig'] = Input.mapOptionalInputValue<NodePoolNodeConfig2,
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

  factory NodePoolArgs2.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs2(
      cluster: Input.asInput<String>(map['cluster']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      localDiskEncryption: Input.asOptionalInput<NodePoolLocalDiskEncryption>(
          map['localDiskEncryption']),
      location: Input.asInput<String>(map['location']),
      machineFilter: Input.asOptionalInput<String>(map['machineFilter']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeConfig: Input.asOptionalInput<NodePoolNodeConfig2>(map['nodeConfig']),
      nodeCount: Input.asInput<int>(map['nodeCount']),
      nodeLocation: Input.asInput<String>(map['nodeLocation']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
