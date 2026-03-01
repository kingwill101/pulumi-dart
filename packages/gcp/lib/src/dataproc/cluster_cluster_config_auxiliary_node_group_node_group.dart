// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_cluster_config_auxiliary_node_group_node_group_node_group_config.dart';

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroup {
  /// The Node group resource name.
  final String? name;

  /// The node group instance group configuration.
  final ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig?
  nodeGroupConfig;

  /// Node group roles.
  /// One of `"DRIVER"`.
  final List<String> roles;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroupNodeGroup].
  /// [name] The Node group resource name.
  /// [nodeGroupConfig] The node group instance group configuration.
  /// [roles] Node group roles.
  ClusterClusterConfigAuxiliaryNodeGroupNodeGroup({
    this.name,
    this.nodeGroupConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nodeGroupConfig': ?nodeGroupConfig == null
          ? null
          : nodeGroupConfig!.toMap(),
      'roles': roles,
    };
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroup(
      name: map['name'] == null ? null : map['name'] as String,
      nodeGroupConfig: map['nodeGroupConfig'] == null
          ? null
          : ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig.fromMap(
              (map['nodeGroupConfig'] as Map).cast<String, dynamic>(),
            ),
      roles: (map['roles'] as List).cast<String>(),
    );
  }
}
