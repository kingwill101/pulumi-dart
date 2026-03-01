/// Specifies the SecurityType of the VM. Applicable for OS disks only.
enum DiskSecurityTypes {
  trustedLaunch("TrustedLaunch"),
  confidentialVMVMGuestStateOnlyEncryptedWithPlatformKey("ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey"),
  confidentialVMDiskEncryptedWithPlatformKey("ConfidentialVM_DiskEncryptedWithPlatformKey"),
  confidentialVMDiskEncryptedWithCustomerKey("ConfidentialVM_DiskEncryptedWithCustomerKey"),
  confidentialVMNonPersistedTPM("ConfidentialVM_NonPersistedTPM");

  const DiskSecurityTypes(this.value);
  final String value;

  static DiskSecurityTypes fromValue(String value) {
    for (final item in DiskSecurityTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskSecurityTypes value: $value');
  }
}

