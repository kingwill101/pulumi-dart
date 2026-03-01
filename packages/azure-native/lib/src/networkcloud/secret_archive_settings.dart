// ignore_for_file: unused_element, unnecessary_cast

import 'identity_selector.dart';

class SecretArchiveSettings {
  /// The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  final IdentitySelector? associatedIdentity;
  /// The URI for the key vault used as the secret archive.
  final String? vaultUri;

  /// Creates a new [SecretArchiveSettings].
  /// [associatedIdentity] The selection of the managed identity to use with this vault URI. The identity type must be either system assigned or user assigned.
  /// [vaultUri] The URI for the key vault used as the secret archive.
  SecretArchiveSettings({
    this.associatedIdentity,
    this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedIdentity': ?associatedIdentity == null ? null : associatedIdentity!.toMap(),
      'vaultUri': ?vaultUri,
    };
  }

  factory SecretArchiveSettings.fromMap(Map<String, dynamic> map) {
    return SecretArchiveSettings(
      associatedIdentity: map['associatedIdentity'] == null ? null : IdentitySelector.fromMap((map['associatedIdentity'] as Map).cast<String, dynamic>()),
      vaultUri: map['vaultUri'] == null ? null : map['vaultUri'] as String,
    );
  }
}

