// ignore_for_file: unused_element, unnecessary_cast

import 'env_var_source_response.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVarResponse {
  /// Name of the environment variable.
  final String name;

  /// Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  final String value;

  /// Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  final EnvVarSourceResponse valueFrom;

  /// Creates a new [EnvVarResponse].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  /// [valueFrom] Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  EnvVarResponse({
    required this.name,
    required this.value,
    required this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueFrom': valueFrom.toMap(),
    };
  }

  factory EnvVarResponse.fromMap(Map<String, dynamic> map) {
    return EnvVarResponse(
      name: map['name'] as String,
      value: map['value'] as String,
      valueFrom: EnvVarSourceResponse.fromMap(
        (map['valueFrom'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
