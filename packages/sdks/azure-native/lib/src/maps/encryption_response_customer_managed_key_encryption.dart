// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response_key_encryption_key_identity.dart';

/// All Customer-managed key encryption properties for the resource.
class EncryptionResponseCustomerManagedKeyEncryption {
  /// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  final pulumi.Input<EncryptionResponseKeyEncryptionKeyIdentity>?
  keyEncryptionKeyIdentity;

  /// key encryption key Url, versioned or unversioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  final pulumi.Input<String>? keyEncryptionKeyUrl;

  /// Creates a new [EncryptionResponseCustomerManagedKeyEncryption].
  /// [keyEncryptionKeyIdentity] All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  /// [keyEncryptionKeyUrl] key encryption key Url, versioned or unversioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  EncryptionResponseCustomerManagedKeyEncryption({
    this.keyEncryptionKeyIdentity,
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionResponseKeyEncryptionKeyIdentity,
            Map<String, dynamic>
          >(keyEncryptionKeyIdentity, (value) => value.toMap()),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory EncryptionResponseCustomerManagedKeyEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return EncryptionResponseCustomerManagedKeyEncryption(
      keyEncryptionKeyIdentity: (() {
        final guardedValue = map['keyEncryptionKeyIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionResponseKeyEncryptionKeyIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyEncryptionKeyUrl: (() {
        final guardedValue = map['keyEncryptionKeyUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
