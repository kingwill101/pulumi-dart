// ignore_for_file: unused_element, unnecessary_cast

import 'kmsenv_map_response.dart';

/// An Environment describes a collection of environment variables to set when executing Tasks.
class EnvironmentResponse {
  /// An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  final KMSEnvMapResponse encryptedVariables;
  /// A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  final Map<String, String> secretVariables;
  /// A map of environment variable names to values.
  final Map<String, String> variables;

  /// Creates a new [EnvironmentResponse].
  /// [encryptedVariables] An encrypted JSON dictionary where the key/value pairs correspond to environment variable names and their values.
  /// [secretVariables] A map of environment variable names to Secret Manager secret names. The VM will access the named secrets to set the value of each environment variable.
  /// [variables] A map of environment variable names to values.
  EnvironmentResponse({
    required this.encryptedVariables,
    required this.secretVariables,
    required this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedVariables': encryptedVariables.toMap(),
      'secretVariables': secretVariables,
      'variables': variables,
    };
  }

  factory EnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse(
      encryptedVariables: KMSEnvMapResponse.fromMap((map['encryptedVariables'] as Map).cast<String, dynamic>()),
      secretVariables: (map['secretVariables'] as Map).cast<String, String>(),
      variables: (map['variables'] as Map).cast<String, String>(),
    );
  }
}

