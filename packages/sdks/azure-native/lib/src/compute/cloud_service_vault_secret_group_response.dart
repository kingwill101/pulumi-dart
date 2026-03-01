// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_certificate_response.dart';
import 'sub_resource_response.dart';

/// Describes a set of certificates which are all in the same Key Vault.
class CloudServiceVaultSecretGroupResponse {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final SubResourceResponse? sourceVault;
  /// The list of key vault references in SourceVault which contain certificates.
  final List<CloudServiceVaultCertificateResponse>? vaultCertificates;

  /// Creates a new [CloudServiceVaultSecretGroupResponse].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  CloudServiceVaultSecretGroupResponse({
    this.sourceVault,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault': ?sourceVault == null ? null : sourceVault!.toMap(),
      'vaultCertificates': ?vaultCertificates == null ? null : pulumi.Input.encodeList<CloudServiceVaultCertificateResponse, Map<String, dynamic>>(vaultCertificates!, (value) => value.toMap()),
    };
  }

  factory CloudServiceVaultSecretGroupResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultSecretGroupResponse(
      sourceVault: map['sourceVault'] == null ? null : SubResourceResponse.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
      vaultCertificates: map['vaultCertificates'] == null ? null : pulumi.Input.decodeList<CloudServiceVaultCertificateResponse>(map['vaultCertificates'], (value) => CloudServiceVaultCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

