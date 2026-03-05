// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_reference_response.dart';

/// Reference to a Key Vault secret.
class SecretValueReferenceResponse {
  /// Specifies the reference to a given Azure Key Vault.
  final pulumi.Input<KeyVaultReferenceResponse> keyVault;
  /// Name of the secret.
  final pulumi.Input<String> secretName;
  /// The version of the secret to use. If left blank, the latest version of the secret is used.
  final pulumi.Input<String>? secretVersion;

  /// Creates a new [SecretValueReferenceResponse].
  /// [keyVault] Specifies the reference to a given Azure Key Vault.
  /// [secretName] Name of the secret.
  /// [secretVersion] The version of the secret to use. If left blank, the latest version of the secret is used.
  SecretValueReferenceResponse({
    required this.keyVault,
    required this.secretName,
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': pulumi.Input.mapInputValue<KeyVaultReferenceResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': secretName,
      'secretVersion': ?secretVersion,
    };
  }

  factory SecretValueReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SecretValueReferenceResponse(
      keyVault: pulumi.Input.fromValue(KeyVaultReferenceResponse.fromMap((map['keyVault']! as Map).cast<String, dynamic>())),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

