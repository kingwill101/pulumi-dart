// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a user's secret store.
class UserSecretStoreResponse {
  /// The ID of the user's Key vault.
  final pulumi.Input<String>? keyVaultId;
  /// The URI of the user's Key vault.
  final pulumi.Input<String>? keyVaultUri;

  /// Creates a new [UserSecretStoreResponse].
  /// [keyVaultId] The ID of the user's Key vault.
  /// [keyVaultUri] The URI of the user's Key vault.
  const UserSecretStoreResponse({
    this.keyVaultId,
    this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultUri': ?keyVaultUri,
    };
  }

  factory UserSecretStoreResponse.fromMap(Map<String, dynamic> map) {
    return UserSecretStoreResponse(
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
