// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plugin certificates information for Service Mesh.
class IstioPluginCertificateAuthorityResponse {
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

  /// Creates a new [IstioPluginCertificateAuthorityResponse].
  /// [certChainObjectName] Certificate chain object name in Azure Key Vault.
  /// [certObjectName] Intermediate certificate object name in Azure Key Vault.
  /// [keyObjectName] Intermediate certificate private key object name in Azure Key Vault.
  /// [keyVaultId] The resource ID of the Key Vault.
  /// [rootCertObjectName] Root certificate object name in Azure Key Vault.
  IstioPluginCertificateAuthorityResponse({
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

  factory IstioPluginCertificateAuthorityResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return IstioPluginCertificateAuthorityResponse(
      certChainObjectName: (() {
        final guardedValue = map['certChainObjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certObjectName: (() {
        final guardedValue = map['certObjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyObjectName: (() {
        final guardedValue = map['keyObjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultId: (() {
        final guardedValue = map['keyVaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rootCertObjectName: (() {
        final guardedValue = map['rootCertObjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
