// ignore_for_file: unused_element, unnecessary_cast

import 'container_registry_basic_credentials_response.dart';

/// Container registry resource payload.
class ContainerRegistryPropertiesResponse {
  /// The credentials of the container registry resource.
  final ContainerRegistryBasicCredentialsResponse credentials;
  /// State of the Container Registry.
  final String provisioningState;

  /// Creates a new [ContainerRegistryPropertiesResponse].
  /// [credentials] The credentials of the container registry resource.
  /// [provisioningState] State of the Container Registry.
  ContainerRegistryPropertiesResponse({
    required this.credentials,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': credentials.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ContainerRegistryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryPropertiesResponse(
      credentials: ContainerRegistryBasicCredentialsResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

