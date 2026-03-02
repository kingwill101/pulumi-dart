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
    this.clusterDescription,
    this.clusterName,
    this.clusterType,
    this.components,
    this.hpnZone,
    this.ignoreFailedNodeTasks,
    this.networks,
    this.nimizVswitches,
    this.nodeGroups,
    this.openEniJumboFrame,
    this.resourceGroupId,
    this.tags,
  });

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
      clusterDescription: map['clusterDescription'] == null ? null : (map['clusterDescription'] as String).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      clusterType: map['clusterType'] == null ? null : (map['clusterType'] as String).input(),
      components: map['components'] == null ? null : (pulumi.Input.decodeList<ClusterComponent>(map['components'], (value) => ClusterComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hpnZone: map['hpnZone'] == null ? null : (map['hpnZone'] as String).input(),
      ignoreFailedNodeTasks: map['ignoreFailedNodeTasks'] == null ? null : (map['ignoreFailedNodeTasks'] as bool).input(),
      networks: map['networks'] == null ? null : (ClusterNetworks.fromMap((map['networks'] as Map).cast<String, dynamic>())).input(),
      nimizVswitches: map['nimizVswitches'] == null ? null : ((map['nimizVswitches'] as List).cast<String>()).input(),
      nodeGroups: map['nodeGroups'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroup>(map['nodeGroups'], (value) => ClusterNodeGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      openEniJumboFrame: map['openEniJumboFrame'] == null ? null : (map['openEniJumboFrame'] as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

