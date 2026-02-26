// ignore_for_file: unused_element, unnecessary_cast

import 'repository_config.dart';

/// Runtime configuration for a workload.
class RuntimeConfig2 {
  /// Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final String? containerImage;

  /// Optional. A mapping of property names to values, which are used to configure workload execution.
  final Map<String, String>? properties;

  /// Optional. Dependency repository configuration.
  final RepositoryConfig? repositoryConfig;

  /// Optional. Version of the batch runtime.
  final String? version;

  RuntimeConfig2({
    this.containerImage,
    this.properties,
    this.repositoryConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = containerImageValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final repositoryConfigValue = repositoryConfig;
    if (repositoryConfigValue != null) {
      map['repositoryConfig'] = repositoryConfigValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory RuntimeConfig2.fromMap(Map<String, dynamic> map) {
    return RuntimeConfig2(
      containerImage: map['containerImage'] == null
          ? null
          : map['containerImage'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      repositoryConfig: map['repositoryConfig'] == null
          ? null
          : RepositoryConfig.fromMap(
              (map['repositoryConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
