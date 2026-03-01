// ignore_for_file: unused_element, unnecessary_cast

import 'env_var_source.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVar {
  /// Name of the environment variable.
  final String name;

  /// Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  final String? value;

  /// Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  final EnvVarSource? valueFrom;

  /// Creates a new [EnvVar].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable. Defaults to "". Variable references are not supported in Cloud Run.
  /// [valueFrom] Source for the environment variable's value. Only supports secret_key_ref. Cannot be used if value is not empty.
  EnvVar({required this.name, this.value, this.valueFrom});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
      'valueFrom': ?valueFrom == null ? null : valueFrom!.toMap(),
    };
  }

  factory EnvVar.fromMap(Map<String, dynamic> map) {
    return EnvVar(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueFrom: map['valueFrom'] == null
          ? null
          : EnvVarSource.fromMap(
              (map['valueFrom'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
