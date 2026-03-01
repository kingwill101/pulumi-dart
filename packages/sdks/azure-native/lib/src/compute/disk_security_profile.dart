// ignore_for_file: unused_element, unnecessary_cast


/// Contains the security related information for the resource.
class DiskSecurityProfile {
  /// ResourceId of the disk encryption set associated to Confidential VM supported disk encrypted with customer managed key
  final String? secureVMDiskEncryptionSetId;
  /// Specifies the SecurityType of the VM. Applicable for OS disks only.
  final String? securityType;

  /// Creates a new [DiskSecurityProfile].
  /// [secureVMDiskEncryptionSetId] ResourceId of the disk encryption set associated to Confidential VM supported disk encrypted with customer managed key
  /// [securityType] Specifies the SecurityType of the VM. Applicable for OS disks only.
  DiskSecurityProfile({
    this.secureVMDiskEncryptionSetId,
    this.securityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureVMDiskEncryptionSetId': ?secureVMDiskEncryptionSetId,
      'securityType': ?securityType,
    };
  }

  factory DiskSecurityProfile.fromMap(Map<String, dynamic> map) {
    return DiskSecurityProfile(
      secureVMDiskEncryptionSetId: map['secureVMDiskEncryptionSetId'] == null ? null : map['secureVMDiskEncryptionSetId'] as String,
      securityType: map['securityType'] == null ? null : map['securityType'] as String,
    );
  }
}

