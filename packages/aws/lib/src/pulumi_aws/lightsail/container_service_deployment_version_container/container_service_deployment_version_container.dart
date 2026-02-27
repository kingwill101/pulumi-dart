// ignore_for_file: unused_element, unnecessary_cast

class ContainerServiceDeploymentVersionContainer {
  /// Launch command for the container. A list of strings.
  final List<String>? commands;

  /// Name of the container.
  final String containerName;

  /// Key-value map of the environment variables of the container.
  final Map<String, String>? environment;

  /// Name of the image used for the container. Container images sourced from your Lightsail container service, that are registered and stored on your service, start with a colon (`:`). For example, `:container-service-1.mystaticwebsite.1`. Container images sourced from a public registry like Docker Hub don't start with a colon. For example, `nginx:latest` or `nginx`.
  final String image;

  /// Key-value map of the open firewall ports of the container. Valid values: `HTTP`, `HTTPS`, `TCP`, `UDP`.
  final Map<String, String>? ports;

  ContainerServiceDeploymentVersionContainer({
    this.commands,
    required this.containerName,
    this.environment,
    required this.image,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commandsValue = commands;
    if (commandsValue != null) {
      map['commands'] = commandsValue;
    }
    map['containerName'] = containerName;
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    map['image'] = image;
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue;
    }
    return map;
  }

  factory ContainerServiceDeploymentVersionContainer.fromMap(
      Map<String, dynamic> map) {
    return ContainerServiceDeploymentVersionContainer(
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      containerName: map['containerName'] as String,
      environment: map['environment'] == null
          ? null
          : (map['environment'] as Map).cast<String, String>(),
      image: map['image'] as String,
      ports: map['ports'] == null
          ? null
          : (map['ports'] as Map).cast<String, String>(),
    );
  }
}
