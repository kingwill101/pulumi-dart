// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_encryption_key_identity.dart';

/// All Customer-managed key encryption properties for the resource.
class EncryptionCustomerManagedKeyEncryption {
  /// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  final pulumi.Input<EncryptionKeyEncryptionKeyIdentity>? keyEncryptionKeyIdentity;
  /// key encryption key Url, versioned or unversioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  final pulumi.Input<String>? keyEncryptionKeyUrl;

  /// Creates a new [EncryptionCustomerManagedKeyEncryption].
  /// [keyEncryptionKeyIdentity] All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  /// [keyEncryptionKeyUrl] key encryption key Url, versioned or unversioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  EncryptionCustomerManagedKeyEncryption({
    this.keyEncryptionKeyIdentity,
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyIdentity': ?pulumi.Input.mapOptionalInputValue<EncryptionKeyEncryptionKeyIdentity, Map<String, dynamic>>(keyEncryptionKeyIdentity, (value) => value.toMap()),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory EncryptionCustomerManagedKeyEncryption.fromMap(Map<String, dynamic> map) {
    return EncryptionCustomerManagedKeyEncryption(
      keyEncryptionKeyIdentity: map['keyEncryptionKeyIdentity'] == null ? null : (EncryptionKeyEncryptionKeyIdentity.fromMap((map['keyEncryptionKeyIdentity']! as Map).cast<String, dynamic>())).input(),
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : (map['keyEncryptionKeyUrl']! as String).input(),
    );
  }
}

