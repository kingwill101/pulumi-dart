// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_component.dart';
import 'cluster_networks.dart';
import 'cluster_node_group.dart';

/// {@template pulumi_eflo_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_eflo_cluster_cluster_args_doc}
class ClusterArgs {
  /// cluster description
  final pulumi.Input<String>? clusterDescription;
  /// ClusterName
  final pulumi.Input<String>? clusterName;
  /// cluster type
  final pulumi.Input<String>? clusterType;
  /// Component (software instance) See `components` below.
  final pulumi.Input<List<ClusterComponent>>? components;
  /// Cluster Number
  final pulumi.Input<String>? hpnZone;
  /// Whether to allow skipping failed nodes. Default value: False
  final pulumi.Input<bool>? ignoreFailedNodeTasks;
  /// Network Information See `networks` below.
  final pulumi.Input<ClusterNetworks>? networks;
  /// Node virtual switch
  final pulumi.Input<List<String>>? nimizVswitches;
  /// Node Group List See `node_groups` below.
  final pulumi.Input<List<ClusterNodeGroup>>? nodeGroups;
  /// Whether the network interface supports jumbo frames
  final pulumi.Input<bool>? openEniJumboFrame;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// tag
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [clusterDescription] cluster description
  /// [clusterName] ClusterName
  /// [clusterType] cluster type
  /// [components] Component (software instance) See `components` below.
  /// [hpnZone] Cluster Number
  /// [ignoreFailedNodeTasks] Whether to allow skipping failed nodes. Default value: False
  /// [networks] Network Information See `networks` below.
  /// [nimizVswitches] Node virtual switch
  /// [nodeGroups] Node Group List See `node_groups` below.
  /// [openEniJumboFrame] Whether the network interface supports jumbo frames
  /// [resourceGroupId] The ID of the resource group
  /// [tags] tag
  ClusterArgs({
    pulumi.Output<String>? clusterDescription,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? clusterType,
    pulumi.Output<List<ClusterComponent>>? components,
    pulumi.Output<String>? hpnZone,
    pulumi.Output<bool>? ignoreFailedNodeTasks,
    pulumi.Output<ClusterNetworks>? networks,
    pulumi.Output<List<String>>? nimizVswitches,
    pulumi.Output<List<ClusterNodeGroup>>? nodeGroups,
    pulumi.Output<bool>? openEniJumboFrame,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterDescription = pulumi.Input.asOptionalInput<String>(clusterDescription),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      components = pulumi.Input.asOptionalInput<List<ClusterComponent>>(components),
      hpnZone = pulumi.Input.asOptionalInput<String>(hpnZone),
      ignoreFailedNodeTasks = pulumi.Input.asOptionalInput<bool>(ignoreFailedNodeTasks),
      networks = pulumi.Input.asOptionalInput<ClusterNetworks>(networks),
      nimizVswitches = pulumi.Input.asOptionalInput<List<String>>(nimizVswitches),
      nodeGroups = pulumi.Input.asOptionalInput<List<ClusterNodeGroup>>(nodeGroups),
      openEniJumboFrame = pulumi.Input.asOptionalInput<bool>(openEniJumboFrame),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDescription': ?clusterDescription,
      'clusterName': ?clusterName,
      'clusterType': ?clusterType,
      'components': ?pulumi.Input.mapOptionalInputValue<List<ClusterComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ClusterComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hpnZone': ?hpnZone,
      'ignoreFailedNodeTasks': ?ignoreFailedNodeTasks,
      'networks': ?pulumi.Input.mapOptionalInputValue<ClusterNetworks, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'nimizVswitches': ?nimizVswitches,
      'nodeGroups': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroup>, List<Map<String, dynamic>>>(nodeGroups, (value) => pulumi.Input.encodeList<ClusterNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openEniJumboFrame': ?openEniJumboFrame,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterDescription: map['clusterDescription'] == null ? null : pulumi.Output.create<String>(map['clusterDescription'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      components: map['components'] == null ? null : pulumi.Output.create<List<ClusterComponent>>(pulumi.Input.decodeList<ClusterComponent>(map['components'], (value) => ClusterComponent.fromMap((value as Map).cast<String, dynamic>()))),
      hpnZone: map['hpnZone'] == null ? null : pulumi.Output.create<String>(map['hpnZone'] as String),
      ignoreFailedNodeTasks: map['ignoreFailedNodeTasks'] == null ? null : pulumi.Output.create<bool>(map['ignoreFailedNodeTasks'] as bool),
      networks: map['networks'] == null ? null : pulumi.Output.create<ClusterNetworks>(ClusterNetworks.fromMap((map['networks'] as Map).cast<String, dynamic>())),
      nimizVswitches: map['nimizVswitches'] == null ? null : pulumi.Output.create<List<String>>((map['nimizVswitches'] as List).cast<String>()),
      nodeGroups: map['nodeGroups'] == null ? null : pulumi.Output.create<List<ClusterNodeGroup>>(pulumi.Input.decodeList<ClusterNodeGroup>(map['nodeGroups'], (value) => ClusterNodeGroup.fromMap((value as Map).cast<String, dynamic>()))),
      openEniJumboFrame: map['openEniJumboFrame'] == null ? null : pulumi.Output.create<bool>(map['openEniJumboFrame'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

