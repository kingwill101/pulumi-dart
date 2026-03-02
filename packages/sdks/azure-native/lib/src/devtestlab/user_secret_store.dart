// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a user's secret store.
class UserSecretStore {
  /// The ID of the user's Key vault.
  final pulumi.Input<String>? keyVaultId;
  /// The URI of the user's Key vault.
  final pulumi.Input<String>? keyVaultUri;

  /// Creates a new [UserSecretStore].
  /// [keyVaultId] The ID of the user's Key vault.
  /// [keyVaultUri] The URI of the user's Key vault.
  UserSecretStore({
    this.keyVaultId,
    this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'keyVaultUri': ?keyVaultUri,
    };
  }

  factory UserSecretStore.fromMap(Map<String, dynamic> map) {
    return UserSecretStore(
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId'] as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri'] as String).input(),
    );
  }
}

