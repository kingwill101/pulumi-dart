// ignore_for_file: unused_element, unnecessary_cast

import 'repository_config.dart';

/// Runtime configuration for a workload.
class RuntimeConfig {
  /// Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final String? containerImage;

  /// Optional. A mapping of property names to values, which are used to configure workload execution.
  final Map<String, String>? properties;

  /// Optional. Dependency repository configuration.
  final RepositoryConfig? repositoryConfig;

  /// Optional. Version of the batch runtime.
  final String? version;

  /// Creates a new [RuntimeConfig].
  /// [containerImage] Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  /// [properties] Optional. A mapping of property names to values, which are used to configure workload execution.
  /// [repositoryConfig] Optional. Dependency repository configuration.
  /// [version] Optional. Version of the batch runtime.
  RuntimeConfig({
    this.containerImage,
    this.properties,
    this.repositoryConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage': ?containerImage,
      'properties': ?properties,
      'repositoryConfig': ?repositoryConfig == null
          ? null
          : repositoryConfig!.toMap(),
      'version': ?version,
    };
  }

  factory RuntimeConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeConfig(
      containerImage: map['containerImage'] == null
          ? null
          : map['containerImage'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      repositoryConfig: map['repositoryConfig'] == null
          ? null
          : RepositoryConfig.fromMap(
              (map['repositoryConfig'] as Map).cast<String, dynamic>(),
            ),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
