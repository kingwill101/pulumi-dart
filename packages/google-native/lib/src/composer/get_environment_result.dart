// ignore_for_file: unused_element, unnecessary_cast

import 'environment_config_response.dart';
import 'storage_config_response.dart';

/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// Configuration parameters for this environment.
  final EnvironmentConfigResponse config;

  /// The time at which this environment was created.
  final String createTime;

  /// Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  final Map<String, String> labels;

  /// The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final String name;

  /// Reserved for future use.
  final bool satisfiesPzs;

  /// The current state of the environment.
  final String state;

  /// Optional. Storage configuration for this environment.
  final StorageConfigResponse storageConfig;

  /// The time at which this environment was last modified.
  final String updateTime;

  /// The UUID (Universally Unique IDentifier) associated with this environment. This value is generated when the environment is created.
  final String uuid;

  /// Creates a new [GetEnvironmentResult].
  /// [config] Configuration parameters for this environment.
  /// [createTime] The time at which this environment was created.
  /// [labels] Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  /// [name] The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  /// [satisfiesPzs] Reserved for future use.
  /// [state] The current state of the environment.
  /// [storageConfig] Optional. Storage configuration for this environment.
  /// [updateTime] The time at which this environment was last modified.
  /// [uuid] The UUID (Universally Unique IDentifier) associated with this environment. This value is generated when the environment is created.
  GetEnvironmentResult({
    required this.config,
    required this.createTime,
    required this.labels,
    required this.name,
    required this.satisfiesPzs,
    required this.state,
    required this.storageConfig,
    required this.updateTime,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['createTime'] = createTime;
    map['labels'] = labels;
    map['name'] = name;
    map['satisfiesPzs'] = satisfiesPzs;
    map['state'] = state;
    map['storageConfig'] = storageConfig.toMap();
    map['updateTime'] = updateTime;
    map['uuid'] = uuid;
    return map;
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      config: EnvironmentConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      state: map['state'] as String,
      storageConfig: StorageConfigResponse.fromMap(
          (map['storageConfig'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      uuid: map['uuid'] as String,
    );
  }
}
