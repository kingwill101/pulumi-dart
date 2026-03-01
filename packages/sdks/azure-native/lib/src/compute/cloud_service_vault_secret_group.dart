// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_certificate.dart';
import 'sub_resource.dart';

/// Describes a set of certificates which are all in the same Key Vault.
class CloudServiceVaultSecretGroup {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final SubResource? sourceVault;
  /// The list of key vault references in SourceVault which contain certificates.
  final List<CloudServiceVaultCertificate>? vaultCertificates;

  /// Creates a new [CloudServiceVaultSecretGroup].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  CloudServiceVaultSecretGroup({
    this.sourceVault,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault': ?sourceVault == null ? null : sourceVault!.toMap(),
      'vaultCertificates': ?vaultCertificates == null ? null : pulumi.Input.encodeList<CloudServiceVaultCertificate, Map<String, dynamic>>(vaultCertificates!, (value) => value.toMap()),
    };
  }

  factory CloudServiceVaultSecretGroup.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultSecretGroup(
      sourceVault: map['sourceVault'] == null ? null : SubResource.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
      vaultCertificates: map['vaultCertificates'] == null ? null : pulumi.Input.decodeList<CloudServiceVaultCertificate>(map['vaultCertificates'], (value) => CloudServiceVaultCertificate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

