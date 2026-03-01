// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_vault_properties_response.dart';
import 'identity_for_cmk_response.dart';

class EncryptionPropertyResponse {
  /// The identity that will be used to access the key vault for encryption at rest.
  final IdentityForCmkResponse? identity;
  /// Customer Key vault properties.
  final EncryptionKeyVaultPropertiesResponse keyVaultProperties;
  /// Indicates whether or not the encryption is enabled for the workspace.
  final String status;

  /// Creates a new [EncryptionPropertyResponse].
  /// [identity] The identity that will be used to access the key vault for encryption at rest.
  /// [keyVaultProperties] Customer Key vault properties.
  /// [status] Indicates whether or not the encryption is enabled for the workspace.
  EncryptionPropertyResponse({
    this.identity,
    required this.keyVaultProperties,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keyVaultProperties': keyVaultProperties.toMap(),
      'status': status,
    };
  }

  factory EncryptionPropertyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertyResponse(
      identity: map['identity'] == null ? null : IdentityForCmkResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: EncryptionKeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

