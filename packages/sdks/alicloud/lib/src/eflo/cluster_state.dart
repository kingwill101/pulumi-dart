// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_component.dart';
import 'cluster_networks.dart';
import 'cluster_node_group.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// cluster description
  final pulumi.Input<String>? clusterDescription;
  /// ClusterName
  final pulumi.Input<String>? clusterName;
  /// cluster type
  final pulumi.Input<String>? clusterType;
  /// Component (software instance) See `components` below.
  final pulumi.Input<List<ClusterComponent>>? components;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
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
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// tag
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterState].
  /// [clusterDescription] cluster description
  /// [clusterName] ClusterName
  /// [clusterType] cluster type
  /// [components] Component (software instance) See `components` below.
  /// [createTime] The creation time of the resource
  /// [hpnZone] Cluster Number
  /// [ignoreFailedNodeTasks] Whether to allow skipping failed nodes. Default value: False
  /// [networks] Network Information See `networks` below.
  /// [nimizVswitches] Node virtual switch
  /// [nodeGroups] Node Group List See `node_groups` below.
  /// [openEniJumboFrame] Whether the network interface supports jumbo frames
  /// [resourceGroupId] The ID of the resource group
  /// [status] The status of the resource
  /// [tags] tag
  ClusterState({
    pulumi.Output<String>? clusterDescription,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? clusterType,
    pulumi.Output<List<ClusterComponent>>? components,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? hpnZone,
    pulumi.Output<bool>? ignoreFailedNodeTasks,
    pulumi.Output<ClusterNetworks>? networks,
    pulumi.Output<List<String>>? nimizVswitches,
    pulumi.Output<List<ClusterNodeGroup>>? nodeGroups,
    pulumi.Output<bool>? openEniJumboFrame,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterDescription = pulumi.Input.asOptionalInput<String>(clusterDescription),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      components = pulumi.Input.asOptionalInput<List<ClusterComponent>>(components),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      hpnZone = pulumi.Input.asOptionalInput<String>(hpnZone),
      ignoreFailedNodeTasks = pulumi.Input.asOptionalInput<bool>(ignoreFailedNodeTasks),
      networks = pulumi.Input.asOptionalInput<ClusterNetworks>(networks),
      nimizVswitches = pulumi.Input.asOptionalInput<List<String>>(nimizVswitches),
      nodeGroups = pulumi.Input.asOptionalInput<List<ClusterNodeGroup>>(nodeGroups),
      openEniJumboFrame = pulumi.Input.asOptionalInput<bool>(openEniJumboFrame),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDescription': ?clusterDescription,
      'clusterName': ?clusterName,
      'clusterType': ?clusterType,
      'components': ?pulumi.Input.mapOptionalInputValue<List<ClusterComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ClusterComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'hpnZone': ?hpnZone,
      'ignoreFailedNodeTasks': ?ignoreFailedNodeTasks,
      'networks': ?pulumi.Input.mapOptionalInputValue<ClusterNetworks, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'nimizVswitches': ?nimizVswitches,
      'nodeGroups': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroup>, List<Map<String, dynamic>>>(nodeGroups, (value) => pulumi.Input.encodeList<ClusterNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openEniJumboFrame': ?openEniJumboFrame,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      clusterDescription: map['clusterDescription'] == null ? null : pulumi.Output.create<String>(map['clusterDescription'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      components: map['components'] == null ? null : pulumi.Output.create<List<ClusterComponent>>(pulumi.Input.decodeList<ClusterComponent>(map['components'], (value) => ClusterComponent.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      hpnZone: map['hpnZone'] == null ? null : pulumi.Output.create<String>(map['hpnZone'] as String),
      ignoreFailedNodeTasks: map['ignoreFailedNodeTasks'] == null ? null : pulumi.Output.create<bool>(map['ignoreFailedNodeTasks'] as bool),
      networks: map['networks'] == null ? null : pulumi.Output.create<ClusterNetworks>(ClusterNetworks.fromMap((map['networks'] as Map).cast<String, dynamic>())),
      nimizVswitches: map['nimizVswitches'] == null ? null : pulumi.Output.create<List<String>>((map['nimizVswitches'] as List).cast<String>()),
      nodeGroups: map['nodeGroups'] == null ? null : pulumi.Output.create<List<ClusterNodeGroup>>(pulumi.Input.decodeList<ClusterNodeGroup>(map['nodeGroups'], (value) => ClusterNodeGroup.fromMap((value as Map).cast<String, dynamic>()))),
      openEniJumboFrame: map['openEniJumboFrame'] == null ? null : pulumi.Output.create<bool>(map['openEniJumboFrame'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

