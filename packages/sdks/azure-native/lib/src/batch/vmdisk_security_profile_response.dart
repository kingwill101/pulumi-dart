// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security profile settings for the managed disk. **Note**: It can only be set for Confidential VMs and is required when using Confidential VMs.
class VMDiskSecurityProfileResponse {
  /// Specifies the EncryptionType of the managed disk. It is set to VMGuestStateOnly for encryption of just the VMGuestState blob, and NonPersistedTPM for not persisting firmware state in the VMGuestState blob. **Note**: It can be set for only Confidential VMs and required when using Confidential VMs.
  final pulumi.Input<String>? securityEncryptionType;

  /// Creates a new [VMDiskSecurityProfileResponse].
  /// [securityEncryptionType] Specifies the EncryptionType of the managed disk. It is set to VMGuestStateOnly for encryption of just the VMGuestState blob, and NonPersistedTPM for not persisting firmware state in the VMGuestState blob. **Note**: It can be set for only Confidential VMs and required when using Confidential VMs.
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
      securityEncryptionType: map['securityEncryptionType'] == null ? null : (map['securityEncryptionType'] as String).input(),
    );
  }
}

