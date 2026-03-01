// ignore_for_file: unused_element, unnecessary_cast

import 'spark_cluster_roles_head_node.dart';
import 'spark_cluster_roles_worker_node.dart';
import 'spark_cluster_roles_zookeeper_node.dart';

class SparkClusterRoles {
  /// A `head_node` block as defined above.
  final SparkClusterRolesHeadNode headNode;
  /// A `worker_node` block as defined below.
  final SparkClusterRolesWorkerNode workerNode;
  /// A `zookeeper_node` block as defined below.
  final SparkClusterRolesZookeeperNode zookeeperNode;

  /// Creates a new [SparkClusterRoles].
  /// [headNode] A `head_node` block as defined above.
  /// [workerNode] A `worker_node` block as defined below.
  /// [zookeeperNode] A `zookeeper_node` block as defined below.
  SparkClusterRoles({
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

  factory SparkClusterRoles.fromMap(Map<String, dynamic> map) {
    return SparkClusterRoles(
      headNode: SparkClusterRolesHeadNode.fromMap((map['headNode'] as Map).cast<String, dynamic>()),
      workerNode: SparkClusterRolesWorkerNode.fromMap((map['workerNode'] as Map).cast<String, dynamic>()),
      zookeeperNode: SparkClusterRolesZookeeperNode.fromMap((map['zookeeperNode'] as Map).cast<String, dynamic>()),
    );
  }
}

