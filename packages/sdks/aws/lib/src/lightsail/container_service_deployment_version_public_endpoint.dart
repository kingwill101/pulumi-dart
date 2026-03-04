// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_deployment_version_public_endpoint_health_check.dart';

class ContainerServiceDeploymentVersionPublicEndpoint {
  /// Name of the container for the endpoint.
  final pulumi.Input<String> containerName;

  /// Port of the container to which traffic is forwarded to.
  final pulumi.Input<int> containerPort;

  /// Configuration block that describes the health check configuration of the container. See below.
  final pulumi.Input<ContainerServiceDeploymentVersionPublicEndpointHealthCheck>
  healthCheck;

  /// Creates a new [ContainerServiceDeploymentVersionPublicEndpoint].
  /// [containerName] Name of the container for the endpoint.
  /// [containerPort] Port of the container to which traffic is forwarded to.
  /// [healthCheck] Configuration block that describes the health check configuration of the container. See below.
  ContainerServiceDeploymentVersionPublicEndpoint({
    required this.containerName,
    required this.containerPort,
    required this.healthCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'containerPort': containerPort,
      'healthCheck':
          pulumi.Input.mapInputValue<
            ContainerServiceDeploymentVersionPublicEndpointHealthCheck,
            Map<String, dynamic>
          >(healthCheck, (value) => value.toMap()),
    };
  }

  factory ContainerServiceDeploymentVersionPublicEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerServiceDeploymentVersionPublicEndpoint(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      healthCheck: pulumi.Input.fromValue(
        ContainerServiceDeploymentVersionPublicEndpointHealthCheck.fromMap(
          (map['healthCheck']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
