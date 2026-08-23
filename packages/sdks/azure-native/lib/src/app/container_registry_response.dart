// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing a mapping from a container registry to the identity used to connect to it.
class ContainerRegistryResponse {
  /// Login server of the container registry.
  final pulumi.Input<String> containerRegistryServer;
  /// Resource ID of the managed identity.
  final pulumi.Input<String> identityResourceId;

  /// Creates a new [ContainerRegistryResponse].
  /// [containerRegistryServer] Login server of the container registry.
  /// [identityResourceId] Resource ID of the managed identity.
  const ContainerRegistryResponse({
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
      containerRegistryServer: pulumi.Input.fromValue(map['containerRegistryServer'] as String),
      identityResourceId: pulumi.Input.fromValue(map['identityResourceId'] as String),
    );
  }
}
