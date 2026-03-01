// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupEcsService {
  /// The name of the ECS cluster.
  final String clusterName;

  /// The name of the ECS service.
  final String serviceName;

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
      clusterName: map['clusterName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
