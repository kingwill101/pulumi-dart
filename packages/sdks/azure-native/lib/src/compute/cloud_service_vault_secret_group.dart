// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_certificate.dart';
import 'sub_resource.dart';

/// Describes a set of certificates which are all in the same Key Vault.
class CloudServiceVaultSecretGroup {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final pulumi.Input<SubResource>? sourceVault;
  /// The list of key vault references in SourceVault which contain certificates.
  final pulumi.Input<List<CloudServiceVaultCertificate>>? vaultCertificates;

  /// Creates a new [CloudServiceVaultSecretGroup].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  CloudServiceVaultSecretGroup({
    this.sourceVault,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
      'vaultCertificates': ?pulumi.Input.mapOptionalInputValue<List<CloudServiceVaultCertificate>, List<Map<String, dynamic>>>(vaultCertificates, (value) => pulumi.Input.encodeList<CloudServiceVaultCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloudServiceVaultSecretGroup.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultSecretGroup(
      sourceVault: (() { final guardedValue = map['sourceVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vaultCertificates: (() { final guardedValue = map['vaultCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudServiceVaultCertificate>(guardedValue, (value) => CloudServiceVaultCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

