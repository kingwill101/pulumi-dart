// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHpcClustersCluster {
  /// The description of ECS Hpc Cluster.
  final pulumi.Input<String> description;

  /// The ID of the Hpc Cluster.
  final pulumi.Input<String> hpcClusterId;

  /// The ID of the Hpc Cluster.
  final pulumi.Input<String> id;

  /// The name of ECS Hpc Cluster.
  final pulumi.Input<String> name;

  /// Creates a new [GetHpcClustersCluster].
  /// [description] The description of ECS Hpc Cluster.
  /// [hpcClusterId] The ID of the Hpc Cluster.
  /// [id] The ID of the Hpc Cluster.
  /// [name] The name of ECS Hpc Cluster.
  GetHpcClustersCluster({
    required this.description,
    required this.hpcClusterId,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'hpcClusterId': hpcClusterId,
      'id': id,
      'name': name,
    };
  }

  factory GetHpcClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetHpcClustersCluster(
      description: pulumi.Input.fromValue(map['description'] as String),
      hpcClusterId: pulumi.Input.fromValue(map['hpcClusterId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
