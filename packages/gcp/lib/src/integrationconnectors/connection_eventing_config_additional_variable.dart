// ignore_for_file: unused_element, unnecessary_cast

import 'connection_eventing_config_additional_variable_encryption_key_value.dart';
import 'connection_eventing_config_additional_variable_secret_value.dart';

class ConnectionEventingConfigAdditionalVariable {
  /// Boolean Value of configVariable.
  final bool? booleanValue;

  /// Encryption key value of configVariable.
  /// Structure is documented below.
  final ConnectionEventingConfigAdditionalVariableEncryptionKeyValue?
  encryptionKeyValue;

  /// Integer Value of configVariable.
  final int? integerValue;

  /// Key for the configVariable
  final String key;

  /// Secret value of configVariable
  /// Structure is documented below.
  final ConnectionEventingConfigAdditionalVariableSecretValue? secretValue;

  /// String Value of configVariabley.
  final String? stringValue;

  /// Creates a new [ConnectionEventingConfigAdditionalVariable].
  /// [booleanValue] Boolean Value of configVariable.
  /// [encryptionKeyValue] Encryption key value of configVariable.
  /// [integerValue] Integer Value of configVariable.
  /// [key] Key for the configVariable
  /// [secretValue] Secret value of configVariable
  /// [stringValue] String Value of configVariabley.
  ConnectionEventingConfigAdditionalVariable({
    this.booleanValue,
    this.encryptionKeyValue,
    this.integerValue,
    required this.key,
    this.secretValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'encryptionKeyValue': ?encryptionKeyValue == null
          ? null
          : encryptionKeyValue!.toMap(),
      'integerValue': ?integerValue,
      'key': key,
      'secretValue': ?secretValue == null ? null : secretValue!.toMap(),
      'stringValue': ?stringValue,
    };
  }

  factory ConnectionEventingConfigAdditionalVariable.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionEventingConfigAdditionalVariable(
      booleanValue: map['booleanValue'] == null
          ? null
          : map['booleanValue'] as bool,
      encryptionKeyValue: map['encryptionKeyValue'] == null
          ? null
          : ConnectionEventingConfigAdditionalVariableEncryptionKeyValue.fromMap(
              (map['encryptionKeyValue'] as Map).cast<String, dynamic>(),
            ),
      integerValue: map['integerValue'] == null
          ? null
          : map['integerValue'] as int,
      key: map['key'] as String,
      secretValue: map['secretValue'] == null
          ? null
          : ConnectionEventingConfigAdditionalVariableSecretValue.fromMap(
              (map['secretValue'] as Map).cast<String, dynamic>(),
            ),
      stringValue: map['stringValue'] == null
          ? null
          : map['stringValue'] as String,
    );
  }
}
