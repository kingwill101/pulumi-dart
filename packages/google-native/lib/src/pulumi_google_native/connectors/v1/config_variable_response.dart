// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_response.dart';
import 'secret_response_connectors_v1.dart';

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
  final SecretResponseConnectorsV1 secretValue;

  /// Value is a string.
  final String stringValue;

  ConfigVariableResponse({
    required this.boolValue,
    required this.encryptionKeyValue,
    required this.intValue,
    required this.key,
    required this.secretValue,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['boolValue'] = boolValue;
    map['encryptionKeyValue'] = encryptionKeyValue.toMap();
    map['intValue'] = intValue;
    map['key'] = key;
    map['secretValue'] = secretValue.toMap();
    map['stringValue'] = stringValue;
    return map;
  }

  factory ConfigVariableResponse.fromMap(Map<String, dynamic> map) {
    return ConfigVariableResponse(
      boolValue: map['boolValue'] as bool,
      encryptionKeyValue: EncryptionKeyResponse.fromMap(
          (map['encryptionKeyValue'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] as String,
      key: map['key'] as String,
      secretValue: SecretResponseConnectorsV1.fromMap(
          (map['secretValue'] as Map).cast<String, dynamic>()),
      stringValue: map['stringValue'] as String,
    );
  }
}
