// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_credentials_properties_response.dart';

/// KeyVault properties
class KeyVaultConnectionPropertiesResponse {
  /// KeyVault credentials.
  final KeyVaultCredentialsPropertiesResponse credentials;
  /// KeyVault directoryId.
  final String directoryId;
  /// KeyVault name.
  final String name;

  /// Creates a new [KeyVaultConnectionPropertiesResponse].
  /// [credentials] KeyVault credentials.
  /// [directoryId] KeyVault directoryId.
  /// [name] KeyVault name.
  KeyVaultConnectionPropertiesResponse({
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

  factory KeyVaultConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultConnectionPropertiesResponse(
      credentials: KeyVaultCredentialsPropertiesResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      directoryId: map['directoryId'] as String,
      name: map['name'] as String,
    );
  }
}

