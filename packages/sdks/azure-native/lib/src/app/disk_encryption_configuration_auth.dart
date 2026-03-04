// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for the authentication to the Key Vault
class DiskEncryptionConfigurationAuth {
  /// Resource ID of a user-assigned managed identity to authenticate to the Key Vault. The identity must be assigned to the managed environment, in the same tenant as the Key Vault, and it must have the following key permissions on the Key Vault: wrapkey, unwrapkey, get.
  final pulumi.Input<String>? identity;

  /// Creates a new [DiskEncryptionConfigurationAuth].
  /// [identity] Resource ID of a user-assigned managed identity to authenticate to the Key Vault. The identity must be assigned to the managed environment, in the same tenant as the Key Vault, and it must have the following key permissions on the Key Vault: wrapkey, unwrapkey, get.
  DiskEncryptionConfigurationAuth({this.identity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identity': ?identity};
  }

  factory DiskEncryptionConfigurationAuth.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfigurationAuth(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
