// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Create keyVault contract details.
class KeyVaultContractCreateProperties {
  /// Null for SystemAssignedIdentity or Client Id for UserAssignedIdentity , which will be used to access key vault secret.
  final pulumi.Input<String>? identityClientId;
  /// Key vault secret identifier for fetching secret. Providing a versioned secret will prevent auto-refresh. This requires API Management service to be configured with aka.ms/apimmsi
  final pulumi.Input<String>? secretIdentifier;

  /// Creates a new [KeyVaultContractCreateProperties].
  /// [identityClientId] Null for SystemAssignedIdentity or Client Id for UserAssignedIdentity , which will be used to access key vault secret.
  /// [secretIdentifier] Key vault secret identifier for fetching secret. Providing a versioned secret will prevent auto-refresh. This requires API Management service to be configured with aka.ms/apimmsi
  KeyVaultContractCreateProperties({
    this.identityClientId,
    this.secretIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'secretIdentifier': ?secretIdentifier,
    };
  }

  factory KeyVaultContractCreateProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultContractCreateProperties(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretIdentifier: (() { final guardedValue = map['secretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

