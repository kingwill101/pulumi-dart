// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'environment_config.dart';
import 'environment_state.dart';
import 'storage_config.dart';

/// The set of arguments for Environment.
class EnvironmentArgs2 {
  /// Configuration parameters for this environment.
  final Input<EnvironmentConfig>? config;

  /// Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final Input<String>? name;
  final Input<String>? project;

  /// The current state of the environment.
  final Input<EnvironmentState>? state;

  /// Optional. Storage configuration for this environment.
  final Input<StorageConfig>? storageConfig;

  EnvironmentArgs2({
    this.config,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.state,
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<EnvironmentState, String>(
          stateValue, (value) => value.value);
    }
    final storageConfigValue = storageConfig;
    if (storageConfigValue != null) {
      map['storageConfig'] =
          Input.mapOptionalInputValue<StorageConfig, Map<String, dynamic>>(
              storageConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs2.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs2(
      config: Input.asOptionalInput<EnvironmentConfig>(map['config']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      state: Input.asOptionalInput<EnvironmentState>(map['state']),
      storageConfig: Input.asOptionalInput<StorageConfig>(map['storageConfig']),
    );
  }
}
