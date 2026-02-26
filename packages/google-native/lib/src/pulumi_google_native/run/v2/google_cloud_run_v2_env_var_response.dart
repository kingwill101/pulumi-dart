// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_env_var_source_response.dart';

/// EnvVar represents an environment variable present in a Container.
class GoogleCloudRunV2EnvVarResponse {
  /// Name of the environment variable. Must not exceed 32768 characters.
  final String name;

  /// Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any route environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "", and the maximum length is 32768 bytes.
  final String value;

  /// Source for the environment variable's value.
  final GoogleCloudRunV2EnvVarSourceResponse valueSource;

  GoogleCloudRunV2EnvVarResponse({
    required this.name,
    required this.value,
    required this.valueSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    map['valueSource'] = valueSource.toMap();
    return map;
  }

  factory GoogleCloudRunV2EnvVarResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2EnvVarResponse(
      name: map['name'] as String,
      value: map['value'] as String,
      valueSource: GoogleCloudRunV2EnvVarSourceResponse.fromMap(
          (map['valueSource'] as Map).cast<String, dynamic>()),
    );
  }
}
