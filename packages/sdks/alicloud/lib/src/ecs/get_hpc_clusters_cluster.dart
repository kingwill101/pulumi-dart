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
      description: (map['description'] as String).input(),
      hpcClusterId: (map['hpcClusterId'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

