// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_credentials_properties_response.dart';

/// KeyVault properties
class KeyVaultConnectionPropertiesResponse {
  /// KeyVault credentials.
  final pulumi.Input<KeyVaultCredentialsPropertiesResponse> credentials;

  /// KeyVault directoryId.
  final pulumi.Input<String> directoryId;

  /// KeyVault name.
  final pulumi.Input<String> name;

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
      'credentials':
          pulumi.Input.mapInputValue<
            KeyVaultCredentialsPropertiesResponse,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'directoryId': directoryId,
      'name': name,
    };
  }

  factory KeyVaultConnectionPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return KeyVaultConnectionPropertiesResponse(
      credentials: pulumi.Input.fromValue(
        KeyVaultCredentialsPropertiesResponse.fromMap(
          (map['credentials']! as Map).cast<String, dynamic>(),
        ),
      ),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
