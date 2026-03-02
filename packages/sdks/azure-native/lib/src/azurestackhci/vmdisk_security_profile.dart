// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security profile settings for the managed disk. NOTE: It can only be set for Confidential VMs
class VMDiskSecurityProfile {
  /// Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
  final pulumi.Input<String>? securityEncryptionType;

  /// Creates a new [VMDiskSecurityProfile].
  /// [securityEncryptionType] Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
  VMDiskSecurityProfile({
    this.securityEncryptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityEncryptionType': ?securityEncryptionType,
    };
  }

  factory VMDiskSecurityProfile.fromMap(Map<String, dynamic> map) {
    return VMDiskSecurityProfile(
      securityEncryptionType: map['securityEncryptionType'] == null ? null : (map['securityEncryptionType'] as String).input(),
    );
  }
}

