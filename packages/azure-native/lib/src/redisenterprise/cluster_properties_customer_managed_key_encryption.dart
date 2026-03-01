// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_properties_key_encryption_key_identity.dart';

/// All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
class ClusterPropertiesCustomerManagedKeyEncryption {
  /// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  final ClusterPropertiesKeyEncryptionKeyIdentity? keyEncryptionKeyIdentity;
  /// Key encryption key Url, versioned only. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78
  final String? keyEncryptionKeyUrl;

  /// Creates a new [ClusterPropertiesCustomerManagedKeyEncryption].
  /// [keyEncryptionKeyIdentity] All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  /// [keyEncryptionKeyUrl] Key encryption key Url, versioned only. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78
  ClusterPropertiesCustomerManagedKeyEncryption({
    this.keyEncryptionKeyIdentity,
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyIdentity': ?keyEncryptionKeyIdentity == null ? null : keyEncryptionKeyIdentity!.toMap(),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory ClusterPropertiesCustomerManagedKeyEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterPropertiesCustomerManagedKeyEncryption(
      keyEncryptionKeyIdentity: map['keyEncryptionKeyIdentity'] == null ? null : ClusterPropertiesKeyEncryptionKeyIdentity.fromMap((map['keyEncryptionKeyIdentity'] as Map).cast<String, dynamic>()),
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : map['keyEncryptionKeyUrl'] as String,
    );
  }
}

