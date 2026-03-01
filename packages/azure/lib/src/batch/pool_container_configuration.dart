// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_container_configuration_container_registry.dart';

class PoolContainerConfiguration {
  /// A list of container image names to use, as would be specified by `docker pull`. Changing this forces a new resource to be created.
  final List<String>? containerImageNames;
  /// One or more `container_registries` blocks as defined below. Additional container registries from which container images can be pulled by the pool's VMs. Changing this forces a new resource to be created.
  final List<PoolContainerConfigurationContainerRegistry>? containerRegistries;
  /// The type of container configuration. Possible value is `DockerCompatible`.
  final String? type;

  /// Creates a new [PoolContainerConfiguration].
  /// [containerImageNames] A list of container image names to use, as would be specified by `docker pull`. Changing this forces a new resource to be created.
  /// [containerRegistries] One or more `container_registries` blocks as defined below. Additional container registries from which container images can be pulled by the pool's VMs. Changing this forces a new resource to be created.
  /// [type] The type of container configuration. Possible value is `DockerCompatible`.
  PoolContainerConfiguration({
    this.containerImageNames,
    this.containerRegistries,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageNames': ?containerImageNames,
      'containerRegistries': ?containerRegistries == null ? null : pulumi.Input.encodeList<PoolContainerConfigurationContainerRegistry, Map<String, dynamic>>(containerRegistries!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PoolContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return PoolContainerConfiguration(
      containerImageNames: map['containerImageNames'] == null ? null : (map['containerImageNames'] as List).cast<String>(),
      containerRegistries: map['containerRegistries'] == null ? null : pulumi.Input.decodeList<PoolContainerConfigurationContainerRegistry>(map['containerRegistries'], (value) => PoolContainerConfigurationContainerRegistry.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

