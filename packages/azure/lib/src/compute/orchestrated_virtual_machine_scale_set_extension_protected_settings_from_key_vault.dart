// ignore_for_file: unused_element, unnecessary_cast


class OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault {
  /// The URL to the Key Vault Secret which stores the protected settings.
  final String secretUrl;
  /// The ID of the source Key Vault.
  final String sourceVaultId;

  /// Creates a new [OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault].
  /// [secretUrl] The URL to the Key Vault Secret which stores the protected settings.
  /// [sourceVaultId] The ID of the source Key Vault.
  OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault(
      secretUrl: map['secretUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

