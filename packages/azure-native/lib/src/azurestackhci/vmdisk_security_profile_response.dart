// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the security profile settings for the managed disk. NOTE: It can only be set for Confidential VMs
class VMDiskSecurityProfileResponse {
  /// Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
  final String? securityEncryptionType;

  /// Creates a new [VMDiskSecurityProfileResponse].
  /// [securityEncryptionType] Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
  VMDiskSecurityProfileResponse({
    this.securityEncryptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityEncryptionType': ?securityEncryptionType,
    };
  }

  factory VMDiskSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return VMDiskSecurityProfileResponse(
      securityEncryptionType: map['securityEncryptionType'] == null ? null : map['securityEncryptionType'] as String,
    );
  }
}

