// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// The encryption key details for the integration service environment.
class IntegrationServiceEnvironmenEncryptionKeyReferenceResponse {
  /// Gets the key name in the Key Vault.
  final String? keyName;
  /// The key vault reference.
  final ResourceReferenceResponse? keyVault;
  /// Gets the version of the key specified in the keyName property.
  final String? keyVersion;

  /// Creates a new [IntegrationServiceEnvironmenEncryptionKeyReferenceResponse].
  /// [keyName] Gets the key name in the Key Vault.
  /// [keyVault] The key vault reference.
  /// [keyVersion] Gets the version of the key specified in the keyName property.
  IntegrationServiceEnvironmenEncryptionKeyReferenceResponse({
    this.keyName,
    this.keyVault,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'keyVersion': ?keyVersion,
    };
  }

  factory IntegrationServiceEnvironmenEncryptionKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationServiceEnvironmenEncryptionKeyReferenceResponse(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVault: map['keyVault'] == null ? null : ResourceReferenceResponse.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

