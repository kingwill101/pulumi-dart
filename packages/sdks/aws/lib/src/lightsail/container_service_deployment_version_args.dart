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
    required this.containers,
    this.publicEndpoint,
    this.region,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers':
          pulumi.Input.mapInputValue<
            List<ContainerServiceDeploymentVersionContainer>,
            List<Map<String, dynamic>>
          >(
            containers,
            (value) =>
                pulumi.Input.encodeList<
                  ContainerServiceDeploymentVersionContainer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'publicEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerServiceDeploymentVersionPublicEndpoint,
            Map<String, dynamic>
          >(publicEndpoint, (value) => value.toMap()),
      'region': ?region,
      'serviceName': serviceName,
    };
  }

  factory ContainerServiceDeploymentVersionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerServiceDeploymentVersionArgs(
      containers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ContainerServiceDeploymentVersionContainer>(
          map['containers']!,
          (value) => ContainerServiceDeploymentVersionContainer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      publicEndpoint: (() {
        final guardedValue = map['publicEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerServiceDeploymentVersionPublicEndpoint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
