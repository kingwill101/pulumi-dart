// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupEcsService {
  /// The name of the ECS cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the ECS service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [DeploymentGroupEcsService].
  /// [clusterName] The name of the ECS cluster.
  /// [serviceName] The name of the ECS service.
  DeploymentGroupEcsService({
    required this.clusterName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'serviceName': serviceName,
    };
  }

  factory DeploymentGroupEcsService.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEcsService(
      clusterName: (map['clusterName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

