// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault {
  /// The URL to the Key Vault Secret which stores the protected settings.
  final String secretUrl;
  /// The ID of the source Key Vault.
  final String sourceVaultId;

  /// Creates a new [WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault].
  /// [secretUrl] The URL to the Key Vault Secret which stores the protected settings.
  /// [sourceVaultId] The ID of the source Key Vault.
  WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault(
      secretUrl: map['secretUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

