// ignore_for_file: unused_element, unnecessary_cast


/// Describes the parameters of ephemeral disk settings that can be specified for operating system disk. **Note:** The ephemeral disk settings can only be specified for managed disk.
class DiffDiskSettingsResponse {
  /// Specifies the ephemeral disk settings for operating system disk.
  final String? option;
  /// Specifies the ephemeral disk placement for operating system disk. Possible values are: **CacheDisk,** **ResourceDisk,** **NvmeDisk.** The defaulting behavior is: **CacheDisk** if one is configured for the VM size otherwise **ResourceDisk** or **NvmeDisk** is used. Refer to the VM size documentation for Windows VM at https://docs.microsoft.com/azure/virtual-machines/windows/sizes and Linux VM at https://docs.microsoft.com/azure/virtual-machines/linux/sizes to check which VM sizes exposes a cache disk. Minimum api-version for NvmeDisk: 2024-03-01.
  final String? placement;

  /// Creates a new [DiffDiskSettingsResponse].
  /// [option] Specifies the ephemeral disk settings for operating system disk.
  /// [placement] Specifies the ephemeral disk placement for operating system disk. Possible values are: **CacheDisk,** **ResourceDisk,** **NvmeDisk.** The defaulting behavior is: **CacheDisk** if one is configured for the VM size otherwise **ResourceDisk** or **NvmeDisk** is used. Refer to the VM size documentation for Windows VM at https://docs.microsoft.com/azure/virtual-machines/windows/sizes and Linux VM at https://docs.microsoft.com/azure/virtual-machines/linux/sizes to check which VM sizes exposes a cache disk. Minimum api-version for NvmeDisk: 2024-03-01.
  DiffDiskSettingsResponse({
    this.option,
    this.placement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': ?option,
      'placement': ?placement,
    };
  }

  factory DiffDiskSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DiffDiskSettingsResponse(
      option: map['option'] == null ? null : map['option'] as String,
      placement: map['placement'] == null ? null : map['placement'] as String,
    );
  }
}

