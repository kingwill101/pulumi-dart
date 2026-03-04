// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'vault_certificate.dart';

/// Describes a set of certificates which are all in the same Key Vault.
class VaultSecretGroup {
  /// The relative URL of the Key Vault containing all of the certificates in
  /// VaultCertificates.
  final pulumi.Input<SubResource>? sourceVault;

  /// The list of key vault references in SourceVault which contain certificates.
  final pulumi.Input<List<VaultCertificate>>? vaultCertificates;

  /// Creates a new [VaultSecretGroup].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  VaultSecretGroup({this.sourceVault, this.vaultCertificates});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(sourceVault, (value) => value.toMap()),
      'vaultCertificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<VaultCertificate>,
            List<Map<String, dynamic>>
          >(
            vaultCertificates,
            (value) =>
                pulumi.Input.encodeList<VaultCertificate, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory VaultSecretGroup.fromMap(Map<String, dynamic> map) {
    return VaultSecretGroup(
      sourceVault: (() {
        final guardedValue = map['sourceVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      vaultCertificates: (() {
        final guardedValue = map['vaultCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VaultCertificate>(
            guardedValue,
            (value) => VaultCertificate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
