// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_deployment_version_container.dart';
import 'container_service_deployment_version_public_endpoint.dart';

/// {@template pulumi_lightsail_container_service_deployment_version_container_service_deployment_version_args_doc}
/// The set of arguments for ContainerServiceDeploymentVersion.
/// {@endtemplate}
/// {@macro pulumi_lightsail_container_service_deployment_version_container_service_deployment_version_args_doc}
class ContainerServiceDeploymentVersionArgs {
  /// Set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. See below.
  final pulumi.Input<List<ContainerServiceDeploymentVersionContainer>>
      containers;

  /// Configuration block that describes the settings of the public endpoint for the container service. See below.
  final pulumi.Input<ContainerServiceDeploymentVersionPublicEndpoint>?
      publicEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the container service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceName;

  /// Creates a new [ContainerServiceDeploymentVersionArgs].
  /// [containers] Set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. See below.
  /// [publicEndpoint] Configuration block that describes the settings of the public endpoint for the container service. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] Name of the container service.
  ContainerServiceDeploymentVersionArgs({
    required List<ContainerServiceDeploymentVersionContainer> containers,
    ContainerServiceDeploymentVersionPublicEndpoint? publicEndpoint,
    String? region,
    required String serviceName,
  })  : containers = pulumi.Input.asInput<
            List<ContainerServiceDeploymentVersionContainer>>(containers),
        publicEndpoint = pulumi.Input.asOptionalInput<
            ContainerServiceDeploymentVersionPublicEndpoint>(publicEndpoint),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containers'] = pulumi.Input.mapInputValue<
            List<ContainerServiceDeploymentVersionContainer>,
            List<Map<String, dynamic>>>(
        containers,
        (value) => pulumi.Input.encodeList<
            ContainerServiceDeploymentVersionContainer,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final publicEndpointValue = publicEndpoint;
    if (publicEndpointValue != null) {
      map['publicEndpoint'] = pulumi.Input.mapOptionalInputValue<
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
          pulumi.Input.decodeList<ContainerServiceDeploymentVersionContainer>(
              map['containers'],
              (value) => ContainerServiceDeploymentVersionContainer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      publicEndpoint: map['publicEndpoint'] == null
          ? null
          : ContainerServiceDeploymentVersionPublicEndpoint.fromMap(
              (map['publicEndpoint'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
