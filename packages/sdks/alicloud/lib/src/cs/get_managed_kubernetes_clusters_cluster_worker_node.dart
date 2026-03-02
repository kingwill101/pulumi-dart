// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedKubernetesClustersClusterWorkerNode {
  /// ID of the node.
  final pulumi.Input<String> id;
  /// Node name.
  final pulumi.Input<String> name;
  /// The private IP address of node.
  final pulumi.Input<String> privateIp;

  /// Creates a new [GetManagedKubernetesClustersClusterWorkerNode].
  /// [id] ID of the node.
  /// [name] Node name.
  /// [privateIp] The private IP address of node.
  GetManagedKubernetesClustersClusterWorkerNode({
    required this.id,
    required this.name,
    required this.privateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateIp': privateIp,
    };
  }

  factory GetManagedKubernetesClustersClusterWorkerNode.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersClusterWorkerNode(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      privateIp: (map['privateIp'] as String).input(),
    );
  }
}

