// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_auxiliary_node_group_node_group.dart';

class ClusterClusterConfigAuxiliaryNodeGroup {
  /// A node group ID. Generated if not specified. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final String? nodeGroupId;

  /// Node group configuration.
  final List<ClusterClusterConfigAuxiliaryNodeGroupNodeGroup> nodeGroups;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroup].
  /// [nodeGroupId] A node group ID. Generated if not specified. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  /// [nodeGroups] Node group configuration.
  ClusterClusterConfigAuxiliaryNodeGroup({
    this.nodeGroupId,
    required this.nodeGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroupId': ?nodeGroupId,
      'nodeGroups':
          pulumi.Input.encodeList<
            ClusterClusterConfigAuxiliaryNodeGroupNodeGroup,
            Map<String, dynamic>
          >(nodeGroups, (value) => value.toMap()),
    };
  }

  factory ClusterClusterConfigAuxiliaryNodeGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterConfigAuxiliaryNodeGroup(
      nodeGroupId: map['nodeGroupId'] == null
          ? null
          : map['nodeGroupId'] as String,
      nodeGroups:
          pulumi.Input.decodeList<
            ClusterClusterConfigAuxiliaryNodeGroupNodeGroup
          >(
            map['nodeGroups'],
            (value) => ClusterClusterConfigAuxiliaryNodeGroupNodeGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
