// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_properties_response_identity.dart';
import 'key_vault_properties_response.dart';

/// The encryption settings for automation account
class EncryptionPropertiesResponse {
  /// User identity used for CMK.
  final EncryptionPropertiesResponseIdentity? identity;
  /// Encryption Key Source
  final String? keySource;
  /// Key vault properties.
  final KeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [identity] User identity used for CMK.
  /// [keySource] Encryption Key Source
  /// [keyVaultProperties] Key vault properties.
  EncryptionPropertiesResponse({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      identity: map['identity'] == null ? null : EncryptionPropertiesResponseIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

