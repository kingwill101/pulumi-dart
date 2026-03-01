// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry_response.dart';

/// The configuration for container-enabled pools.
class ContainerConfigurationResponse {
  /// This is the full image reference, as would be specified to "docker pull". An image will be sourced from the default Docker registry unless the image is fully qualified with an alternative registry.
  final List<String>? containerImageNames;
  /// If any images must be downloaded from a private registry which requires credentials, then those credentials must be provided here.
  final List<ContainerRegistryResponse>? containerRegistries;
  /// The container technology to be used.
  final String type;

  /// Creates a new [ContainerConfigurationResponse].
  /// [containerImageNames] This is the full image reference, as would be specified to "docker pull". An image will be sourced from the default Docker registry unless the image is fully qualified with an alternative registry.
  /// [containerRegistries] If any images must be downloaded from a private registry which requires credentials, then those credentials must be provided here.
  /// [type] The container technology to be used.
  ContainerConfigurationResponse({
    this.containerImageNames,
    this.containerRegistries,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageNames': ?containerImageNames,
      'containerRegistries': ?containerRegistries == null ? null : pulumi.Input.encodeList<ContainerRegistryResponse, Map<String, dynamic>>(containerRegistries!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ContainerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ContainerConfigurationResponse(
      containerImageNames: map['containerImageNames'] == null ? null : (map['containerImageNames'] as List).cast<String>(),
      containerRegistries: map['containerRegistries'] == null ? null : pulumi.Input.decodeList<ContainerRegistryResponse>(map['containerRegistries'], (value) => ContainerRegistryResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

