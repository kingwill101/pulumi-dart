// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// The encryption settings for a configuration store.
class PropertiesResponseEncryption {
  /// Key vault properties.
  final KeyVaultPropertiesResponse? keyVault;
  /// The state of onboarding, which only appears in the response.
  final String? state;

  /// Creates a new [PropertiesResponseEncryption].
  /// [keyVault] Key vault properties.
  /// [state] The state of onboarding, which only appears in the response.
  PropertiesResponseEncryption({
    this.keyVault,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'state': ?state,
    };
  }

  factory PropertiesResponseEncryption.fromMap(Map<String, dynamic> map) {
    return PropertiesResponseEncryption(
      keyVault: map['keyVault'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

