import 'package:pulumi/pulumi.dart';
import '../container_service_deployment_version_container/container_service_deployment_version_container.dart';
import '../container_service_deployment_version_public_endpoint/container_service_deployment_version_public_endpoint.dart';
import 'container_service_deployment_version_args.dart';

/// Manages a Lightsail container service deployment version. Use this resource to deploy containerized applications to your Lightsail container service with specific container configurations and settings.
///
/// > **NOTE:** The Amazon Lightsail container service must be enabled to create a deployment.
///
/// > **NOTE:** This resource allows you to manage an Amazon Lightsail container service deployment version but the provider cannot destroy it. Removing this resource from your configuration will remove it from your statefile.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Container Service Deployment Version using the `service_name` and `version` separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/containerServiceDeploymentVersion:ContainerServiceDeploymentVersion example container-service-1/1
/// ```
class ContainerServiceDeploymentVersion extends CustomResource {
  /// Set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. See below.
  late final Output<List<ContainerServiceDeploymentVersionContainer>>
      containers;

  /// Date and time when the deployment was created.
  late final Output<String> createdAt;

  /// Configuration block that describes the settings of the public endpoint for the container service. See below.
  late final Output<ContainerServiceDeploymentVersionPublicEndpoint?>
      publicEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the container service.
  ///
  /// The following arguments are optional:
  late final Output<String> serviceName;

  /// Current state of the container service.
  late final Output<String> state;

  /// Version number of the deployment.
  late final Output<int> version;

  ContainerServiceDeploymentVersion(
    String name, {
    ContainerServiceDeploymentVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/containerServiceDeploymentVersion:ContainerServiceDeploymentVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.containers =
        registerOutput<List<ContainerServiceDeploymentVersionContainer>>(
            'containers');
    this.createdAt = registerOutput<String>('createdAt');
    this.publicEndpoint =
        registerOutput<ContainerServiceDeploymentVersionPublicEndpoint?>(
            'publicEndpoint');
    this.region = registerOutput<String>('region');
    this.serviceName = registerOutput<String>('serviceName');
    this.state = registerOutput<String>('state');
    this.version = registerOutput<int>('version');
  }
}
