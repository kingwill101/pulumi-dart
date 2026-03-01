// ignore_for_file: unused_element, unnecessary_cast


/// Model representing a mapping from a container registry to the identity used to connect to it.
class ContainerRegistryResponse {
  /// Login server of the container registry.
  final String containerRegistryServer;
  /// Resource ID of the managed identity.
  final String identityResourceId;

  /// Creates a new [ContainerRegistryResponse].
  /// [containerRegistryServer] Login server of the container registry.
  /// [identityResourceId] Resource ID of the managed identity.
  ContainerRegistryResponse({
    required this.containerRegistryServer,
    required this.identityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryServer': containerRegistryServer,
      'identityResourceId': identityResourceId,
    };
  }

  factory ContainerRegistryResponse.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryResponse(
      containerRegistryServer: map['containerRegistryServer'] as String,
      identityResourceId: map['identityResourceId'] as String,
    );
  }
}

