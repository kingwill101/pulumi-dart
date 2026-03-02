// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plugin certificates information for Service Mesh.
class IstioPluginCertificateAuthority {
  /// Certificate chain object name in Azure Key Vault.
  final pulumi.Input<String>? certChainObjectName;
  /// Intermediate certificate object name in Azure Key Vault.
  final pulumi.Input<String>? certObjectName;
  /// Intermediate certificate private key object name in Azure Key Vault.
  final pulumi.Input<String>? keyObjectName;
  /// The resource ID of the Key Vault.
  final pulumi.Input<String>? keyVaultId;
  /// Root certificate object name in Azure Key Vault.
  final pulumi.Input<String>? rootCertObjectName;

  /// Creates a new [IstioPluginCertificateAuthority].
  /// [certChainObjectName] Certificate chain object name in Azure Key Vault.
  /// [certObjectName] Intermediate certificate object name in Azure Key Vault.
  /// [keyObjectName] Intermediate certificate private key object name in Azure Key Vault.
  /// [keyVaultId] The resource ID of the Key Vault.
  /// [rootCertObjectName] Root certificate object name in Azure Key Vault.
  IstioPluginCertificateAuthority({
    this.certChainObjectName,
    this.certObjectName,
    this.keyObjectName,
    this.keyVaultId,
    this.rootCertObjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certChainObjectName': ?certChainObjectName,
      'certObjectName': ?certObjectName,
      'keyObjectName': ?keyObjectName,
      'keyVaultId': ?keyVaultId,
      'rootCertObjectName': ?rootCertObjectName,
    };
  }

  factory IstioPluginCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return IstioPluginCertificateAuthority(
      certChainObjectName: map['certChainObjectName'] == null ? null : (map['certChainObjectName']! as String).input(),
      certObjectName: map['certObjectName'] == null ? null : (map['certObjectName']! as String).input(),
      keyObjectName: map['keyObjectName'] == null ? null : (map['keyObjectName']! as String).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      rootCertObjectName: map['rootCertObjectName'] == null ? null : (map['rootCertObjectName']! as String).input(),
    );
  }
}

