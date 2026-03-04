// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_vault_certificate_response.dart';
import 'sub_resource_response.dart';

/// Describes a set of certificates which are all in the same Key Vault.
class CloudServiceVaultSecretGroupResponse {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final pulumi.Input<SubResourceResponse>? sourceVault;

  /// The list of key vault references in SourceVault which contain certificates.
  final pulumi.Input<List<CloudServiceVaultCertificateResponse>>?
  vaultCertificates;

  /// Creates a new [CloudServiceVaultSecretGroupResponse].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  CloudServiceVaultSecretGroupResponse({
    this.sourceVault,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(sourceVault, (value) => value.toMap()),
      'vaultCertificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<CloudServiceVaultCertificateResponse>,
            List<Map<String, dynamic>>
          >(
            vaultCertificates,
            (value) =>
                pulumi.Input.encodeList<
                  CloudServiceVaultCertificateResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CloudServiceVaultSecretGroupResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudServiceVaultSecretGroupResponse(
      sourceVault: (() {
        final guardedValue = map['sourceVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vaultCertificates: (() {
        final guardedValue = map['vaultCertificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CloudServiceVaultCertificateResponse>(
            guardedValue,
            (value) => CloudServiceVaultCertificateResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
