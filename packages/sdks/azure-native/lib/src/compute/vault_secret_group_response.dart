// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'vault_certificate_response.dart';

/// Describes a set of certificates which are all in the same Key Vault.
class VaultSecretGroupResponse {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final SubResourceResponse? sourceVault;
  /// The list of key vault references in SourceVault which contain certificates.
  final List<VaultCertificateResponse>? vaultCertificates;

  /// Creates a new [VaultSecretGroupResponse].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  VaultSecretGroupResponse({
    this.sourceVault,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault': ?sourceVault == null ? null : sourceVault!.toMap(),
      'vaultCertificates': ?vaultCertificates == null ? null : pulumi.Input.encodeList<VaultCertificateResponse, Map<String, dynamic>>(vaultCertificates!, (value) => value.toMap()),
    };
  }

  factory VaultSecretGroupResponse.fromMap(Map<String, dynamic> map) {
    return VaultSecretGroupResponse(
      sourceVault: map['sourceVault'] == null ? null : SubResourceResponse.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
      vaultCertificates: map['vaultCertificates'] == null ? null : pulumi.Input.decodeList<VaultCertificateResponse>(map['vaultCertificates'], (value) => VaultCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

