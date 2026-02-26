// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'gke_node_pool_config.dart';
import 'gke_node_pool_target_roles_item.dart';

/// GKE node pools that Dataproc workloads run on.
class GkeNodePoolTarget {
  /// The target GKE node pool. Format: 'projects/{project}/locations/{location}/clusters/{cluster}/nodePools/{node_pool}'
  final String nodePool;

  /// Input only. The configuration for the GKE node pool.If specified, Dataproc attempts to create a node pool with the specified shape. If one with the same name already exists, it is verified against all specified fields. If a field differs, the virtual cluster creation will fail.If omitted, any node pool with the specified name is used. If a node pool with the specified name does not exist, Dataproc create a node pool with default values.This is an input only field. It will not be returned by the API.
  final GkeNodePoolConfig? nodePoolConfig;

  /// The roles associated with the GKE node pool.
  final List<GkeNodePoolTargetRolesItem> roles;

  GkeNodePoolTarget({
    required this.nodePool,
    this.nodePoolConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePool'] = nodePool;
    final nodePoolConfigValue = nodePoolConfig;
    if (nodePoolConfigValue != null) {
      map['nodePoolConfig'] = nodePoolConfigValue.toMap();
    }
    map['roles'] = Input.encodeList<GkeNodePoolTargetRolesItem, String>(
        roles, (value) => value.value);
    return map;
  }

  factory GkeNodePoolTarget.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolTarget(
      nodePool: map['nodePool'] as String,
      nodePoolConfig: map['nodePoolConfig'] == null
          ? null
          : GkeNodePoolConfig.fromMap(
              (map['nodePoolConfig'] as Map).cast<String, dynamic>()),
      roles: Input.decodeList<GkeNodePoolTargetRolesItem>(map['roles'],
          (value) => GkeNodePoolTargetRolesItem.fromValue(value as String)),
    );
  }
}
