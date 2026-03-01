// ignore_for_file: unused_element, unnecessary_cast

import 'customer_managed_key_encryption_properties_key_encryption_key_identity.dart';

/// All Customer-managed key encryption properties for the resource.
class CustomerManagedKeyEncryptionProperties {
  /// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  final CustomerManagedKeyEncryptionPropertiesKeyEncryptionKeyIdentity? keyEncryptionKeyIdentity;
  /// key encryption key Url, with or without a version. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek. Key auto rotation is enabled by providing a key uri without version. Otherwise, customer is responsible for rotating the key. The keyEncryptionKeyIdentity(either SystemAssigned or UserAssigned) should have permission to access this key url.
  final String? keyEncryptionKeyUrl;

  /// Creates a new [CustomerManagedKeyEncryptionProperties].
  /// [keyEncryptionKeyIdentity] All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  /// [keyEncryptionKeyUrl] key encryption key Url, with or without a version. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek. Key auto rotation is enabled by providing a key uri without version. Otherwise, customer is responsible for rotating the key. The keyEncryptionKeyIdentity(either SystemAssigned or UserAssigned) should have permission to access this key url.
  CustomerManagedKeyEncryptionProperties({
    this.keyEncryptionKeyIdentity,
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyIdentity': ?keyEncryptionKeyIdentity == null ? null : keyEncryptionKeyIdentity!.toMap(),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory CustomerManagedKeyEncryptionProperties.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyEncryptionProperties(
      keyEncryptionKeyIdentity: map['keyEncryptionKeyIdentity'] == null ? null : CustomerManagedKeyEncryptionPropertiesKeyEncryptionKeyIdentity.fromMap((map['keyEncryptionKeyIdentity'] as Map).cast<String, dynamic>()),
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : map['keyEncryptionKeyUrl'] as String,
    );
  }
}

