// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'environment_state.dart';
import 'storage_config.dart';

/// The set of arguments for Environment.
class EnvironmentComposerV1Args {
  /// Configuration parameters for this environment.
  final pulumi.Input<EnvironmentConfig>? config;

  /// Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The current state of the environment.
  final pulumi.Input<EnvironmentState>? state;

  /// Optional. Storage configuration for this environment.
  final pulumi.Input<StorageConfig>? storageConfig;

  EnvironmentComposerV1Args({
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
      map['config'] = pulumi.Input.mapOptionalInputValue<EnvironmentConfig,
          Map<String, dynamic>>(configValue, (value) => value.toMap());
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
      map['state'] =
          pulumi.Input.mapOptionalInputValue<EnvironmentState, String>(
              stateValue, (value) => value.value);
    }
    final storageConfigValue = storageConfig;
    if (storageConfigValue != null) {
      map['storageConfig'] = pulumi.Input.mapOptionalInputValue<StorageConfig,
          Map<String, dynamic>>(storageConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentComposerV1Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentComposerV1Args(
      config: pulumi.Input.asOptionalInput<EnvironmentConfig>(map['config']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      state: pulumi.Input.asOptionalInput<EnvironmentState>(map['state']),
      storageConfig:
          pulumi.Input.asOptionalInput<StorageConfig>(map['storageConfig']),
    );
  }
}
