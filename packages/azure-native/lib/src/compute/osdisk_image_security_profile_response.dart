// ignore_for_file: unused_element, unnecessary_cast


/// Contains security profile for an OS disk image.
class OSDiskImageSecurityProfileResponse {
  /// confidential VM encryption types
  final String? confidentialVMEncryptionType;
  /// secure VM disk encryption set id
  final String? secureVMDiskEncryptionSetId;

  /// Creates a new [OSDiskImageSecurityProfileResponse].
  /// [confidentialVMEncryptionType] confidential VM encryption types
  /// [secureVMDiskEncryptionSetId] secure VM disk encryption set id
  OSDiskImageSecurityProfileResponse({
    this.confidentialVMEncryptionType,
    this.secureVMDiskEncryptionSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialVMEncryptionType': ?confidentialVMEncryptionType,
      'secureVMDiskEncryptionSetId': ?secureVMDiskEncryptionSetId,
    };
  }

  factory OSDiskImageSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return OSDiskImageSecurityProfileResponse(
      confidentialVMEncryptionType: map['confidentialVMEncryptionType'] == null ? null : map['confidentialVMEncryptionType'] as String,
      secureVMDiskEncryptionSetId: map['secureVMDiskEncryptionSetId'] == null ? null : map['secureVMDiskEncryptionSetId'] as String,
    );
  }
}

