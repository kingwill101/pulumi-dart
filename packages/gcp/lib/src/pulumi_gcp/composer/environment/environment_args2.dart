// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_config/environment_config.dart';
import '../environment_storage_config/environment_storage_config.dart';

/// The set of arguments for Environment.
class EnvironmentArgs2 {
  /// Configuration parameters for this environment.
  final Input<EnvironmentConfig>? config;

  /// User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be <= 128 bytes in size.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the environment.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The location or Compute Engine region for the environment.
  final Input<String>? region;

  /// Configuration options for storage used by Composer environment.
  final Input<EnvironmentStorageConfig>? storageConfig;

  EnvironmentArgs2({
    this.config,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          Input.mapOptionalInputValue<EnvironmentConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageConfigValue = storageConfig;
    if (storageConfigValue != null) {
      map['storageConfig'] = Input.mapOptionalInputValue<
          EnvironmentStorageConfig,
          Map<String, dynamic>>(storageConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs2.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs2(
      config: Input.asOptionalInput<EnvironmentConfig>(map['config']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      storageConfig:
          Input.asOptionalInput<EnvironmentStorageConfig>(map['storageConfig']),
    );
  }
}
