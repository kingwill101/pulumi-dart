// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer Key vault properties.
class KeyVaultProperties {
  /// Currently, we support only SystemAssigned MSI.
  /// We need this when we support UserAssignedIdentities
  final pulumi.Input<String?>? identityClientId;
  /// KeyVault key identifier to encrypt the data
  final pulumi.Input<String> keyIdentifier;
  /// KeyVault Arm Id that contains the data encryption key
  final pulumi.Input<String> keyVaultArmId;

  /// Creates a new [KeyVaultProperties].
  /// [identityClientId] Currently, we support only SystemAssigned MSI.
  /// [keyIdentifier] KeyVault key identifier to encrypt the data
  /// [keyVaultArmId] KeyVault Arm Id that contains the data encryption key
  const KeyVaultProperties({
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

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyIdentifier: pulumi.Input.fromValue(map['keyIdentifier'] as String),
      keyVaultArmId: pulumi.Input.fromValue(map['keyVaultArmId'] as String),
    );
  }
}
