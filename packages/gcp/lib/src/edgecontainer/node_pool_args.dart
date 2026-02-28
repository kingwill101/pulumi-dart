// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_local_disk_encryption.dart';
import 'node_pool_node_config.dart';

/// {@template pulumi_edgecontainer_node_pool_node_pool_args_doc}
/// The set of arguments for NodePool.
/// {@endtemplate}
/// {@macro pulumi_edgecontainer_node_pool_node_pool_args_doc}
class NodePoolArgs {
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
  final pulumi.Input<NodePoolNodeConfig>? nodeConfig;

  /// The number of nodes in the pool.
  final pulumi.Input<int> nodeCount;

  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  final pulumi.Input<String> nodeLocation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [NodePoolArgs].
  /// [cluster] The name of the target Distributed Cloud Edge Cluster.
  /// [labels] Labels associated with this resource.
  /// [localDiskEncryption] Local disk encryption options. This field is only used when enabling CMEK support.
  /// [location] The location of the resource.
  /// [machineFilter] Only machines matching this filter will be allowed to join the node pool.
  /// [name] The resource name of the node pool.
  /// [nodeConfig] Configuration for each node in the NodePool
  /// [nodeCount] The number of nodes in the pool.
  /// [nodeLocation] Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  /// [project] The ID of the project in which the resource belongs.
  NodePoolArgs({
    required String cluster,
    Map<String, String>? labels,
    NodePoolLocalDiskEncryption? localDiskEncryption,
    required String location,
    String? machineFilter,
    String? name,
    NodePoolNodeConfig? nodeConfig,
    required int nodeCount,
    required String nodeLocation,
    String? project,
  })  : cluster = pulumi.Input.asInput<String>(cluster),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        localDiskEncryption =
            pulumi.Input.asOptionalInput<NodePoolLocalDiskEncryption>(
                localDiskEncryption),
        location = pulumi.Input.asInput<String>(location),
        machineFilter = pulumi.Input.asOptionalInput<String>(machineFilter),
        name = pulumi.Input.asOptionalInput<String>(name),
        nodeConfig =
            pulumi.Input.asOptionalInput<NodePoolNodeConfig>(nodeConfig),
        nodeCount = pulumi.Input.asInput<int>(nodeCount),
        nodeLocation = pulumi.Input.asInput<String>(nodeLocation),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      map['nodeConfig'] = pulumi.Input.mapOptionalInputValue<NodePoolNodeConfig,
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

  factory NodePoolArgs.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs(
      cluster: map['cluster'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      localDiskEncryption: map['localDiskEncryption'] == null
          ? null
          : NodePoolLocalDiskEncryption.fromMap(
              (map['localDiskEncryption'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      machineFilter:
          map['machineFilter'] == null ? null : map['machineFilter'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodeConfig: map['nodeConfig'] == null
          ? null
          : NodePoolNodeConfig.fromMap(
              (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] as int,
      nodeLocation: map['nodeLocation'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
