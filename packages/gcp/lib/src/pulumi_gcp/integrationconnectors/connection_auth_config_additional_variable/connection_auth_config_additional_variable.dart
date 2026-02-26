// ignore_for_file: unused_element, unnecessary_cast

import '../connection_auth_config_additional_variable_encryption_key_value/connection_auth_config_additional_variable_encryption_key_value.dart';
import '../connection_auth_config_additional_variable_secret_value/connection_auth_config_additional_variable_secret_value.dart';

class ConnectionAuthConfigAdditionalVariable {
  /// Boolean Value of configVariable.
  final bool? booleanValue;

  /// Encryption key value of configVariable.
  /// Structure is documented below.
  final ConnectionAuthConfigAdditionalVariableEncryptionKeyValue?
      encryptionKeyValue;

  /// Integer Value of configVariable.
  final int? integerValue;

  /// Key for the configVariable
  final String key;

  /// Secret value of configVariable
  /// Structure is documented below.
  final ConnectionAuthConfigAdditionalVariableSecretValue? secretValue;

  /// String Value of configVariabley.
  final String? stringValue;

  ConnectionAuthConfigAdditionalVariable({
    this.booleanValue,
    this.encryptionKeyValue,
    this.integerValue,
    required this.key,
    this.secretValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final booleanValueValue = booleanValue;
    if (booleanValueValue != null) {
      map['booleanValue'] = booleanValueValue;
    }
    final encryptionKeyValueValue = encryptionKeyValue;
    if (encryptionKeyValueValue != null) {
      map['encryptionKeyValue'] = encryptionKeyValueValue.toMap();
    }
    final integerValueValue = integerValue;
    if (integerValueValue != null) {
      map['integerValue'] = integerValueValue;
    }
    map['key'] = key;
    final secretValueValue = secretValue;
    if (secretValueValue != null) {
      map['secretValue'] = secretValueValue.toMap();
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory ConnectionAuthConfigAdditionalVariable.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigAdditionalVariable(
      booleanValue:
          map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      encryptionKeyValue: map['encryptionKeyValue'] == null
          ? null
          : ConnectionAuthConfigAdditionalVariableEncryptionKeyValue.fromMap(
              (map['encryptionKeyValue'] as Map).cast<String, dynamic>()),
      integerValue:
          map['integerValue'] == null ? null : map['integerValue'] as int,
      key: map['key'] as String,
      secretValue: map['secretValue'] == null
          ? null
          : ConnectionAuthConfigAdditionalVariableSecretValue.fromMap(
              (map['secretValue'] as Map).cast<String, dynamic>()),
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
