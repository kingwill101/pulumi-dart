// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry.dart';

/// The configuration for container-enabled pools.
class ContainerConfiguration {
  /// This is the full image reference, as would be specified to "docker pull". An image will be sourced from the default Docker registry unless the image is fully qualified with an alternative registry.
  final pulumi.Input<List<String>>? containerImageNames;
  /// If any images must be downloaded from a private registry which requires credentials, then those credentials must be provided here.
  final pulumi.Input<List<ContainerRegistry>>? containerRegistries;
  /// The container technology to be used.
  final pulumi.Input<String> type;

  /// Creates a new [ContainerConfiguration].
  /// [containerImageNames] This is the full image reference, as would be specified to "docker pull". An image will be sourced from the default Docker registry unless the image is fully qualified with an alternative registry.
  /// [containerRegistries] If any images must be downloaded from a private registry which requires credentials, then those credentials must be provided here.
  /// [type] The container technology to be used.
  ContainerConfiguration({
    this.containerImageNames,
    this.containerRegistries,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageNames': ?containerImageNames,
      'containerRegistries': ?pulumi.Input.mapOptionalInputValue<List<ContainerRegistry>, List<Map<String, dynamic>>>(containerRegistries, (value) => pulumi.Input.encodeList<ContainerRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory ContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerConfiguration(
      containerImageNames: map['containerImageNames'] == null ? null : ((map['containerImageNames'] as List).cast<String>()).input(),
      containerRegistries: map['containerRegistries'] == null ? null : (pulumi.Input.decodeList<ContainerRegistry>(map['containerRegistries'], (value) => ContainerRegistry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

