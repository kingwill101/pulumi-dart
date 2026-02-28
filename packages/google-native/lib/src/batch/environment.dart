// ignore_for_file: unused_element, unnecessary_cast

import 'kmsenv_map.dart';

/// An Environment describes a collection of environment variables to set when executing Tasks.
class Environment {
  /// An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  final KMSEnvMap? encryptedVariables;

  /// A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  final Map<String, String>? secretVariables;

  /// A map of environment variable names to values.
  final Map<String, String>? variables;

  /// Creates a new [Environment].
  /// [encryptedVariables] An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  /// [secretVariables] A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  /// [variables] A map of environment variable names to values.
  Environment({
    this.encryptedVariables,
    this.secretVariables,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptedVariablesValue = encryptedVariables;
    if (encryptedVariablesValue != null) {
      map['encryptedVariables'] = encryptedVariablesValue.toMap();
    }
    final secretVariablesValue = secretVariables;
    if (secretVariablesValue != null) {
      map['secretVariables'] = secretVariablesValue;
    }
    final variablesValue = variables;
    if (variablesValue != null) {
      map['variables'] = variablesValue;
    }
    return map;
  }

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      encryptedVariables: map['encryptedVariables'] == null
          ? null
          : KMSEnvMap.fromMap(
              (map['encryptedVariables'] as Map).cast<String, dynamic>()),
      secretVariables: map['secretVariables'] == null
          ? null
          : (map['secretVariables'] as Map).cast<String, String>(),
      variables: map['variables'] == null
          ? null
          : (map['variables'] as Map).cast<String, String>(),
    );
  }
}
