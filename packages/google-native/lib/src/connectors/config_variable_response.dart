// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_response.dart';
import 'secret_response.dart';

/// ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.
class ConfigVariableResponse {
  /// Value is a bool.
  final bool boolValue;

  /// Value is a Encryption Key.
  final EncryptionKeyResponse encryptionKeyValue;

  /// Value is an integer
  final String intValue;

  /// Key of the config variable.
  final String key;

  /// Value is a secret.
  final SecretResponse secretValue;

  /// Value is a string.
  final String stringValue;

  /// Creates a new [ConfigVariableResponse].
  /// [boolValue] Value is a bool.
  /// [encryptionKeyValue] Value is a Encryption Key.
  /// [intValue] Value is an integer
  /// [key] Key of the config variable.
  /// [secretValue] Value is a secret.
  /// [stringValue] Value is a string.
  ConfigVariableResponse({
    required this.boolValue,
    required this.encryptionKeyValue,
    required this.intValue,
    required this.key,
    required this.secretValue,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': boolValue,
      'encryptionKeyValue': encryptionKeyValue.toMap(),
      'intValue': intValue,
      'key': key,
      'secretValue': secretValue.toMap(),
      'stringValue': stringValue,
    };
  }

  factory ConfigVariableResponse.fromMap(Map<String, dynamic> map) {
    return ConfigVariableResponse(
      boolValue: map['boolValue'] as bool,
      encryptionKeyValue: EncryptionKeyResponse.fromMap(
        (map['encryptionKeyValue'] as Map).cast<String, dynamic>(),
      ),
      intValue: map['intValue'] as String,
      key: map['key'] as String,
      secretValue: SecretResponse.fromMap(
        (map['secretValue'] as Map).cast<String, dynamic>(),
      ),
      stringValue: map['stringValue'] as String,
    );
  }
}
