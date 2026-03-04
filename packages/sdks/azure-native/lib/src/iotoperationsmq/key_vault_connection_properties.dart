// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_credentials_properties.dart';

/// KeyVault properties
class KeyVaultConnectionProperties {
  /// KeyVault credentials.
  final pulumi.Input<KeyVaultCredentialsProperties> credentials;

  /// KeyVault directoryId.
  final pulumi.Input<String> directoryId;

  /// KeyVault name.
  final pulumi.Input<String> name;

  /// Creates a new [KeyVaultConnectionProperties].
  /// [credentials] KeyVault credentials.
  /// [directoryId] KeyVault directoryId.
  /// [name] KeyVault name.
  KeyVaultConnectionProperties({
    required this.credentials,
    required this.directoryId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials':
          pulumi.Input.mapInputValue<
            KeyVaultCredentialsProperties,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'directoryId': directoryId,
      'name': name,
    };
  }

  factory KeyVaultConnectionProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultConnectionProperties(
      credentials: pulumi.Input.fromValue(
        KeyVaultCredentialsProperties.fromMap(
          (map['credentials']! as Map).cast<String, dynamic>(),
        ),
      ),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
