// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_set_parameters_response.dart';

/// Specifies the security profile settings for the managed disk. **Note:** It can
/// only be set for Confidential VMs.
class VMDiskSecurityProfileResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed
  /// disk that is used for Customer Managed Key encrypted ConfidentialVM OS Disk and
  /// VMGuest blob.
  final DiskEncryptionSetParametersResponse? diskEncryptionSet;
  /// Specifies the EncryptionType of the managed disk. It is set to
  /// DiskWithVMGuestState for encryption of the managed disk along with VMGuestState
  /// blob, VMGuestStateOnly for encryption of just the VMGuestState blob, and
  /// NonPersistedTPM for not persisting firmware state in the VMGuestState blob..
  /// **Note:** It can be set for only Confidential VMs.
  final String? securityEncryptionType;

  /// Creates a new [VMDiskSecurityProfileResponse].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed
  /// [securityEncryptionType] Specifies the EncryptionType of the managed disk. It is set to
  VMDiskSecurityProfileResponse({
    this.diskEncryptionSet,
    this.securityEncryptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?diskEncryptionSet == null ? null : diskEncryptionSet!.toMap(),
      'securityEncryptionType': ?securityEncryptionType,
    };
  }

  factory VMDiskSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return VMDiskSecurityProfileResponse(
      diskEncryptionSet: map['diskEncryptionSet'] == null ? null : DiskEncryptionSetParametersResponse.fromMap((map['diskEncryptionSet'] as Map).cast<String, dynamic>()),
      securityEncryptionType: map['securityEncryptionType'] == null ? null : map['securityEncryptionType'] as String,
    );
  }
}

