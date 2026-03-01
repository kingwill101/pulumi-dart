// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_os_profile_secret_vault_certificate.dart';

class VirtualMachineOsProfileSecret {
  /// Specifies the ID of the Key Vault to use.
  final String sourceVaultId;
  /// One or more `vault_certificates` blocks as defined below.
  final List<VirtualMachineOsProfileSecretVaultCertificate>? vaultCertificates;

  /// Creates a new [VirtualMachineOsProfileSecret].
  /// [sourceVaultId] Specifies the ID of the Key Vault to use.
  /// [vaultCertificates] One or more `vault_certificates` blocks as defined below.
  VirtualMachineOsProfileSecret({
    required this.sourceVaultId,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVaultId': sourceVaultId,
      'vaultCertificates': ?vaultCertificates == null ? null : pulumi.Input.encodeList<VirtualMachineOsProfileSecretVaultCertificate, Map<String, dynamic>>(vaultCertificates!, (value) => value.toMap()),
    };
  }

  factory VirtualMachineOsProfileSecret.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfileSecret(
      sourceVaultId: map['sourceVaultId'] as String,
      vaultCertificates: map['vaultCertificates'] == null ? null : pulumi.Input.decodeList<VirtualMachineOsProfileSecretVaultCertificate>(map['vaultCertificates'], (value) => VirtualMachineOsProfileSecretVaultCertificate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

