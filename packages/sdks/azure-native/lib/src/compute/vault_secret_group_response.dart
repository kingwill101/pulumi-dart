// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'vault_certificate_response.dart';

/// Describes a set of certificates which are all in the same Key Vault.
class VaultSecretGroupResponse {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final pulumi.Input<SubResourceResponse>? sourceVault;
  /// The list of key vault references in SourceVault which contain certificates.
  final pulumi.Input<List<VaultCertificateResponse>>? vaultCertificates;

  /// Creates a new [VaultSecretGroupResponse].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  VaultSecretGroupResponse({
    this.sourceVault,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
      'vaultCertificates': ?pulumi.Input.mapOptionalInputValue<List<VaultCertificateResponse>, List<Map<String, dynamic>>>(vaultCertificates, (value) => pulumi.Input.encodeList<VaultCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VaultSecretGroupResponse.fromMap(Map<String, dynamic> map) {
    return VaultSecretGroupResponse(
      sourceVault: (() { final guardedValue = map['sourceVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vaultCertificates: (() { final guardedValue = map['vaultCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VaultCertificateResponse>(guardedValue, (value) => VaultCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

