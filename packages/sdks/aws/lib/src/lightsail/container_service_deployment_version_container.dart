// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerServiceDeploymentVersionContainer {
  /// Launch command for the container. A list of strings.
  final pulumi.Input<List<String>>? commands;
  /// Name of the container.
  final pulumi.Input<String> containerName;
  /// Key-value map of the environment variables of the container.
  final pulumi.Input<Map<String, String>>? environment;
  /// Name of the image used for the container. Container images sourced from your Lightsail container service, that are registered and stored on your service, start with a colon (`:`). For example, `:container-service-1.mystaticwebsite.1`. Container images sourced from a public registry like Docker Hub don't start with a colon. For example, `nginx:latest` or `nginx`.
  final pulumi.Input<String> image;
  /// Key-value map of the open firewall ports of the container. Valid values: `HTTP`, `HTTPS`, `TCP`, `UDP`.
  final pulumi.Input<Map<String, String>>? ports;

  /// Creates a new [ContainerServiceDeploymentVersionContainer].
  /// [commands] Launch command for the container. A list of strings.
  /// [containerName] Name of the container.
  /// [environment] Key-value map of the environment variables of the container.
  /// [image] Name of the image used for the container. Container images sourced from your Lightsail container service, that are registered and stored on your service, start with a colon (`:`). For example, `:container-service-1.mystaticwebsite.1`. Container images sourced from a public registry like Docker Hub don't start with a colon. For example, `nginx:latest` or `nginx`.
  /// [ports] Key-value map of the open firewall ports of the container. Valid values: `HTTP`, `HTTPS`, `TCP`, `UDP`.
  ContainerServiceDeploymentVersionContainer({
    this.commands,
    required this.containerName,
    this.environment,
    required this.image,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'containerName': containerName,
      'environment': ?environment,
      'image': image,
      'ports': ?ports,
    };
  }

  factory ContainerServiceDeploymentVersionContainer.fromMap(Map<String, dynamic> map) {
    return ContainerServiceDeploymentVersionContainer(
      commands: map['commands'] == null ? null : (((map['commands'] as List).cast<String>()).input()).input(),
      containerName: (map['containerName'] as String).input(),
      environment: map['environment'] == null ? null : (((map['environment'] as Map).cast<String, String>()).input()).input(),
      image: (map['image'] as String).input(),
      ports: map['ports'] == null ? null : (((map['ports'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

