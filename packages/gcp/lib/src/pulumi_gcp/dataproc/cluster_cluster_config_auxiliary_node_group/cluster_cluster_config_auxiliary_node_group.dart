// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_config_auxiliary_node_group_node_group/cluster_cluster_config_auxiliary_node_group_node_group.dart';

class ClusterClusterConfigAuxiliaryNodeGroup {
  /// A node group ID. Generated if not specified. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final String? nodeGroupId;

  /// Node group configuration.
  final List<ClusterClusterConfigAuxiliaryNodeGroupNodeGroup> nodeGroups;

  ClusterClusterConfigAuxiliaryNodeGroup({
    this.nodeGroupId,
    required this.nodeGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeGroupIdValue = nodeGroupId;
    if (nodeGroupIdValue != null) {
      map['nodeGroupId'] = nodeGroupIdValue;
    }
    map['nodeGroups'] = Input.encodeList<
        ClusterClusterConfigAuxiliaryNodeGroupNodeGroup,
        Map<String, dynamic>>(nodeGroups, (value) => value.toMap());
    return map;
  }

  factory ClusterClusterConfigAuxiliaryNodeGroup.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigAuxiliaryNodeGroup(
      nodeGroupId:
          map['nodeGroupId'] == null ? null : map['nodeGroupId'] as String,
      nodeGroups:
          Input.decodeList<ClusterClusterConfigAuxiliaryNodeGroupNodeGroup>(
              map['nodeGroups'],
              (value) =>
                  ClusterClusterConfigAuxiliaryNodeGroupNodeGroup.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
