// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_credentials_properties.dart';

/// KeyVault properties
class KeyVaultConnectionProperties {
  /// KeyVault credentials.
  final KeyVaultCredentialsProperties credentials;
  /// KeyVault directoryId.
  final String directoryId;
  /// KeyVault name.
  final String name;

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
      'credentials': credentials.toMap(),
      'directoryId': directoryId,
      'name': name,
    };
  }

  factory KeyVaultConnectionProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultConnectionProperties(
      credentials: KeyVaultCredentialsProperties.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      directoryId: map['directoryId'] as String,
      name: map['name'] as String,
    );
  }
}

