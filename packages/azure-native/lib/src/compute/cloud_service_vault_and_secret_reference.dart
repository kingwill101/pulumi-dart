// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Protected settings for the extension, referenced using KeyVault which are encrypted before sent to the role instance.
class CloudServiceVaultAndSecretReference {
  /// Secret URL which contains the protected settings of the extension
  final String? secretUrl;
  /// The ARM Resource ID of the Key Vault
  final SubResource? sourceVault;

  /// Creates a new [CloudServiceVaultAndSecretReference].
  /// [secretUrl] Secret URL which contains the protected settings of the extension
  /// [sourceVault] The ARM Resource ID of the Key Vault
  CloudServiceVaultAndSecretReference({
    this.secretUrl,
    this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': ?secretUrl,
      'sourceVault': ?sourceVault == null ? null : sourceVault!.toMap(),
    };
  }

  factory CloudServiceVaultAndSecretReference.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultAndSecretReference(
      secretUrl: map['secretUrl'] == null ? null : map['secretUrl'] as String,
      sourceVault: map['sourceVault'] == null ? null : SubResource.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

