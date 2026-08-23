// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_basic_credentials_response.dart';

/// Container registry resource payload.
class ContainerRegistryPropertiesResponse {
  /// The credentials of the container registry resource.
  final pulumi.Input<ContainerRegistryBasicCredentialsResponse> credentials;
  /// State of the Container Registry.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ContainerRegistryPropertiesResponse].
  /// [credentials] The credentials of the container registry resource.
  /// [provisioningState] State of the Container Registry.
  const ContainerRegistryPropertiesResponse({
    required this.credentials,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': pulumi.Input.mapInputValue<ContainerRegistryBasicCredentialsResponse, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ContainerRegistryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryPropertiesResponse(
      credentials: pulumi.Input.fromValue(ContainerRegistryBasicCredentialsResponse.fromMap((map['credentials']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
