// ignore_for_file: unused_element, unnecessary_cast

import '../container_service_deployment_version_public_endpoint_health_check/container_service_deployment_version_public_endpoint_health_check.dart';

class ContainerServiceDeploymentVersionPublicEndpoint {
  /// Name of the container for the endpoint.
  final String containerName;

  /// Port of the container to which traffic is forwarded to.
  final int containerPort;

  /// Configuration block that describes the health check configuration of the container. See below.
  final ContainerServiceDeploymentVersionPublicEndpointHealthCheck healthCheck;

  ContainerServiceDeploymentVersionPublicEndpoint({
    required this.containerName,
    required this.containerPort,
    required this.healthCheck,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerName'] = containerName;
    map['containerPort'] = containerPort;
    map['healthCheck'] = healthCheck.toMap();
    return map;
  }

  factory ContainerServiceDeploymentVersionPublicEndpoint.fromMap(
      Map<String, dynamic> map) {
    return ContainerServiceDeploymentVersionPublicEndpoint(
      containerName: map['containerName'] as String,
      containerPort: map['containerPort'] as int,
      healthCheck:
          ContainerServiceDeploymentVersionPublicEndpointHealthCheck.fromMap(
              (map['healthCheck'] as Map).cast<String, dynamic>()),
    );
  }
}
