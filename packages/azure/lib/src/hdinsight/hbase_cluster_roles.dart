// ignore_for_file: unused_element, unnecessary_cast

import 'hbase_cluster_roles_head_node.dart';
import 'hbase_cluster_roles_worker_node.dart';
import 'hbase_cluster_roles_zookeeper_node.dart';

class HBaseClusterRoles {
  /// A `head_node` block as defined above.
  final HBaseClusterRolesHeadNode headNode;
  /// A `worker_node` block as defined below.
  final HBaseClusterRolesWorkerNode workerNode;
  /// A `zookeeper_node` block as defined below.
  final HBaseClusterRolesZookeeperNode zookeeperNode;

  /// Creates a new [HBaseClusterRoles].
  /// [headNode] A `head_node` block as defined above.
  /// [workerNode] A `worker_node` block as defined below.
  /// [zookeeperNode] A `zookeeper_node` block as defined below.
  HBaseClusterRoles({
    required this.headNode,
    required this.workerNode,
    required this.zookeeperNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headNode': headNode.toMap(),
      'workerNode': workerNode.toMap(),
      'zookeeperNode': zookeeperNode.toMap(),
    };
  }

  factory HBaseClusterRoles.fromMap(Map<String, dynamic> map) {
    return HBaseClusterRoles(
      headNode: HBaseClusterRolesHeadNode.fromMap((map['headNode'] as Map).cast<String, dynamic>()),
      workerNode: HBaseClusterRolesWorkerNode.fromMap((map['workerNode'] as Map).cast<String, dynamic>()),
      zookeeperNode: HBaseClusterRolesZookeeperNode.fromMap((map['zookeeperNode'] as Map).cast<String, dynamic>()),
    );
  }
}

