import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the SecurityType of the VM. Applicable for OS disks only.
enum DiskSecurityTypes implements pulumi.PulumiEnum<String> {
  trustedLaunch("TrustedLaunch"),
  confidentialVMVMGuestStateOnlyEncryptedWithPlatformKey("ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey"),
  confidentialVMDiskEncryptedWithPlatformKey("ConfidentialVM_DiskEncryptedWithPlatformKey"),
  confidentialVMDiskEncryptedWithCustomerKey("ConfidentialVM_DiskEncryptedWithCustomerKey"),
  confidentialVMNonPersistedTPM("ConfidentialVM_NonPersistedTPM");

  const DiskSecurityTypes(this.wireValue);
  @override
  final String wireValue;

  static DiskSecurityTypes fromValue(String value) {
    for (final item in DiskSecurityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskSecurityTypes value: $value');
  }
}
