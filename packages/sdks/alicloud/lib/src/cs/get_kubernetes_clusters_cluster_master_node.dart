// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClustersClusterMasterNode {
  /// ID of the node.
  final pulumi.Input<String> id;

  /// Node name.
  final pulumi.Input<String> name;

  /// The private IP address of node.
  final pulumi.Input<String> privateIp;

  /// Creates a new [GetKubernetesClustersClusterMasterNode].
  /// [id] ID of the node.
  /// [name] Node name.
  /// [privateIp] The private IP address of node.
  GetKubernetesClustersClusterMasterNode({
    required this.id,
    required this.name,
    required this.privateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': name, 'privateIp': privateIp};
  }

  factory GetKubernetesClustersClusterMasterNode.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesClustersClusterMasterNode(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIp: pulumi.Input.fromValue(map['privateIp'] as String),
    );
  }
}
