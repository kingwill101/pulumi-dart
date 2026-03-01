// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_deployment_version_container.dart';
import 'container_service_deployment_version_public_endpoint.dart';

/// Input properties used for looking up and filtering ContainerServiceDeploymentVersion resources.
class ContainerServiceDeploymentVersionState {
  /// Set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. See below.
  final pulumi.Input<List<ContainerServiceDeploymentVersionContainer>>? containers;
  /// Date and time when the deployment was created.
  final pulumi.Input<String>? createdAt;
  /// Configuration block that describes the settings of the public endpoint for the container service. See below.
  final pulumi.Input<ContainerServiceDeploymentVersionPublicEndpoint>? publicEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the container service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? serviceName;
  /// Current state of the container service.
  final pulumi.Input<String>? state;
  /// Version number of the deployment.
  final pulumi.Input<int>? version;

  /// Creates a new [ContainerServiceDeploymentVersionState].
  /// [containers] Set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. See below.
  /// [createdAt] Date and time when the deployment was created.
  /// [publicEndpoint] Configuration block that describes the settings of the public endpoint for the container service. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] Name of the container service.
  /// [state] Current state of the container service.
  /// [version] Version number of the deployment.
  ContainerServiceDeploymentVersionState({
    pulumi.Output<List<ContainerServiceDeploymentVersionContainer>>? containers,
    pulumi.Output<String>? createdAt,
    pulumi.Output<ContainerServiceDeploymentVersionPublicEndpoint>? publicEndpoint,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? state,
    pulumi.Output<int>? version,
  }) :
      containers = pulumi.Input.asOptionalInput<List<ContainerServiceDeploymentVersionContainer>>(containers),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      publicEndpoint = pulumi.Input.asOptionalInput<ContainerServiceDeploymentVersionPublicEndpoint>(publicEndpoint),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      state = pulumi.Input.asOptionalInput<String>(state),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ContainerServiceDeploymentVersionContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ContainerServiceDeploymentVersionContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'publicEndpoint': ?pulumi.Input.mapOptionalInputValue<ContainerServiceDeploymentVersionPublicEndpoint, Map<String, dynamic>>(publicEndpoint, (value) => value.toMap()),
      'region': ?region,
      'serviceName': ?serviceName,
      'state': ?state,
      'version': ?version,
    };
  }

  factory ContainerServiceDeploymentVersionState.fromMap(Map<String, dynamic> map) {
    return ContainerServiceDeploymentVersionState(
      containers: map['containers'] == null ? null : pulumi.Output.create<List<ContainerServiceDeploymentVersionContainer>>(pulumi.Input.decodeList<ContainerServiceDeploymentVersionContainer>(map['containers'], (value) => ContainerServiceDeploymentVersionContainer.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      publicEndpoint: map['publicEndpoint'] == null ? null : pulumi.Output.create<ContainerServiceDeploymentVersionPublicEndpoint>(ContainerServiceDeploymentVersionPublicEndpoint.fromMap((map['publicEndpoint'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

