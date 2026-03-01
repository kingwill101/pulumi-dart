// ignore_for_file: unused_element, unnecessary_cast

import 'container_registry_basic_credentials.dart';

/// Container registry resource payload.
class ContainerRegistryProperties {
  /// The credentials of the container registry resource.
  final ContainerRegistryBasicCredentials credentials;

  /// Creates a new [ContainerRegistryProperties].
  /// [credentials] The credentials of the container registry resource.
  ContainerRegistryProperties({
    required this.credentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials.toMap(),
    };
  }

  factory ContainerRegistryProperties.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryProperties(
      credentials: ContainerRegistryBasicCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
    );
  }
}

