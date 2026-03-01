// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';

/// Encryption key properties for the pool.
class EncryptionResponse {
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The name of the key vault key.
  final String keyName;
  /// The URI of the key vault.
  final String keyVaultUri;

  /// Creates a new [EncryptionResponse].
  /// [identity] The managed service identities assigned to this resource.
  /// [keyName] The name of the key vault key.
  /// [keyVaultUri] The URI of the key vault.
  EncryptionResponse({
    this.identity,
    required this.keyName,
    required this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyName: map['keyName'] as String,
      keyVaultUri: map['keyVaultUri'] as String,
    );
  }
}

