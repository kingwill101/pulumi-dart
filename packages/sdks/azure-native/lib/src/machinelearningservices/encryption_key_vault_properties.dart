// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EncryptionKeyVaultProperties {
  /// For future use - The client id of the identity which will be used to access key vault.
  final pulumi.Input<String>? identityClientId;

  /// Key vault uri to access the encryption key.
  final pulumi.Input<String> keyIdentifier;

  /// The ArmId of the keyVault where the customer owned encryption key is present.
  final pulumi.Input<String> keyVaultArmId;

  /// Creates a new [EncryptionKeyVaultProperties].
  /// [identityClientId] For future use - The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] Key vault uri to access the encryption key.
  /// [keyVaultArmId] The ArmId of the keyVault where the customer owned encryption key is present.
  EncryptionKeyVaultProperties({
    this.identityClientId,
    required this.keyIdentifier,
    required this.keyVaultArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyIdentifier': keyIdentifier,
      'keyVaultArmId': keyVaultArmId,
    };
  }

  factory EncryptionKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyVaultProperties(
      identityClientId: (() {
        final guardedValue = map['identityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyIdentifier: pulumi.Input.fromValue(map['keyIdentifier'] as String),
      keyVaultArmId: pulumi.Input.fromValue(map['keyVaultArmId'] as String),
    );
  }
}
