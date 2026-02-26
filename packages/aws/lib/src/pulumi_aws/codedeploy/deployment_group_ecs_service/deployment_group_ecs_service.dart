// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupEcsService {
  /// The name of the ECS cluster.
  final String clusterName;

  /// The name of the ECS service.
  final String serviceName;

  DeploymentGroupEcsService({
    required this.clusterName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['serviceName'] = serviceName;
    return map;
  }

  factory DeploymentGroupEcsService.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupEcsService(
      clusterName: map['clusterName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
