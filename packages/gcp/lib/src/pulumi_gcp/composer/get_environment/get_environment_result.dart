// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_environment_config/get_environment_config.dart';
import '../get_environment_storage_config/get_environment_storage_config.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Configuration parameters for the environment.
  final List<GetEnvironmentConfig> configs;
  final Map<String, String> effectiveLabels;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final List<GetEnvironmentStorageConfig> storageConfigs;

  GetEnvironmentResult({
    required this.configs,
    required this.effectiveLabels,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.storageConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configs'] =
        pulumi.Input.encodeList<GetEnvironmentConfig, Map<String, dynamic>>(
            configs, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['id'] = id;
    map['labels'] = labels;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['storageConfigs'] = pulumi.Input.encodeList<GetEnvironmentStorageConfig,
        Map<String, dynamic>>(storageConfigs, (value) => value.toMap());
    return map;
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      configs: pulumi.Input.decodeList<GetEnvironmentConfig>(
          map['configs'],
          (value) => GetEnvironmentConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      storageConfigs: pulumi.Input.decodeList<GetEnvironmentStorageConfig>(
          map['storageConfigs'],
          (value) => GetEnvironmentStorageConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
