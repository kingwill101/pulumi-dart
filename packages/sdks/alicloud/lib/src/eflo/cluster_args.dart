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
      'components':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterComponent>,
            List<Map<String, dynamic>>
          >(
            components,
            (value) =>
                pulumi.Input.encodeList<ClusterComponent, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'hpnZone': ?hpnZone,
      'ignoreFailedNodeTasks': ?ignoreFailedNodeTasks,
      'networks':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNetworks,
            Map<String, dynamic>
          >(networks, (value) => value.toMap()),
      'nimizVswitches': ?nimizVswitches,
      'nodeGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterNodeGroup>,
            List<Map<String, dynamic>>
          >(
            nodeGroups,
            (value) =>
                pulumi.Input.encodeList<ClusterNodeGroup, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'openEniJumboFrame': ?openEniJumboFrame,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterDescription: (() {
        final guardedValue = map['clusterDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterType: (() {
        final guardedValue = map['clusterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      components: (() {
        final guardedValue = map['components'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterComponent>(
            guardedValue,
            (value) => ClusterComponent.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      hpnZone: (() {
        final guardedValue = map['hpnZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ignoreFailedNodeTasks: (() {
        final guardedValue = map['ignoreFailedNodeTasks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      networks: (() {
        final guardedValue = map['networks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNetworks.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nimizVswitches: (() {
        final guardedValue = map['nimizVswitches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nodeGroups: (() {
        final guardedValue = map['nodeGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterNodeGroup>(
            guardedValue,
            (value) => ClusterNodeGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      openEniJumboFrame: (() {
        final guardedValue = map['openEniJumboFrame'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
