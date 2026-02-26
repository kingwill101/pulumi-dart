// ignore_for_file: unused_element, unnecessary_cast

import 'repository_config_response.dart';

/// Runtime configuration for a workload.
class RuntimeConfigResponse2 {
  /// Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final String containerImage;

  /// Optional. A mapping of property names to values, which are used to configure workload execution.
  final Map<String, String> properties;

  /// Optional. Dependency repository configuration.
  final RepositoryConfigResponse repositoryConfig;

  /// Optional. Version of the batch runtime.
  final String version;

  RuntimeConfigResponse2({
    required this.containerImage,
    required this.properties,
    required this.repositoryConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerImage'] = containerImage;
    map['properties'] = properties;
    map['repositoryConfig'] = repositoryConfig.toMap();
    map['version'] = version;
    return map;
  }

  factory RuntimeConfigResponse2.fromMap(Map<String, dynamic> map) {
    return RuntimeConfigResponse2(
      containerImage: map['containerImage'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      repositoryConfig: RepositoryConfigResponse.fromMap(
          (map['repositoryConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
