// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../container_service_deployment_version_container/container_service_deployment_version_container.dart';
import '../container_service_deployment_version_public_endpoint/container_service_deployment_version_public_endpoint.dart';

/// The set of arguments for ContainerServiceDeploymentVersion.
class ContainerServiceDeploymentVersionArgs {
  /// Set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. See below.
  final Input<List<ContainerServiceDeploymentVersionContainer>> containers;

  /// Configuration block that describes the settings of the public endpoint for the container service. See below.
  final Input<ContainerServiceDeploymentVersionPublicEndpoint>? publicEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the container service.
  ///
  /// The following arguments are optional:
  final Input<String> serviceName;

  ContainerServiceDeploymentVersionArgs({
    required this.containers,
    this.publicEndpoint,
    this.region,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containers'] = Input.mapInputValue<
            List<ContainerServiceDeploymentVersionContainer>,
            List<Map<String, dynamic>>>(
        containers,
        (value) => Input.encodeList<ContainerServiceDeploymentVersionContainer,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final publicEndpointValue = publicEndpoint;
    if (publicEndpointValue != null) {
      map['publicEndpoint'] = Input.mapOptionalInputValue<
          ContainerServiceDeploymentVersionPublicEndpoint,
          Map<String, dynamic>>(publicEndpointValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceName'] = serviceName;
    return map;
  }

  factory ContainerServiceDeploymentVersionArgs.fromMap(
      Map<String, dynamic> map) {
    return ContainerServiceDeploymentVersionArgs(
      containers:
          Input.asInput<List<ContainerServiceDeploymentVersionContainer>>(
              map['containers']),
      publicEndpoint: Input.asOptionalInput<
              ContainerServiceDeploymentVersionPublicEndpoint>(
          map['publicEndpoint']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceName: Input.asInput<String>(map['serviceName']),
    );
  }
}
