// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters.dart';

/// Specifies the security profile settings for the managed disk. **Note:** It can only be set for Confidential VMs.
class VMDiskSecurityProfile {
  /// Specifies the customer managed disk encryption set resource id for the managed disk that is used for Customer Managed Key encrypted ConfidentialVM OS Disk and VMGuest blob.
  final pulumi.Input<DiskEncryptionSetParameters?>? diskEncryptionSet;
  /// Specifies the EncryptionType of the managed disk. It is set to DiskWithVMGuestState for encryption of the managed disk along with VMGuestState blob, VMGuestStateOnly for encryption of just the VMGuestState blob, and NonPersistedTPM for not persisting firmware state in the VMGuestState blob.. **Note:** It can be set for only Confidential VMs.
  final pulumi.Input<dynamic>? securityEncryptionType;

  /// Creates a new [VMDiskSecurityProfile].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed disk that is used for Customer Managed Key encrypted ConfidentialVM OS Disk and VMGuest blob.
  /// [securityEncryptionType] Specifies the EncryptionType of the managed disk. It is set to DiskWithVMGuestState for encryption of the managed disk along with VMGuestState blob, VMGuestStateOnly for encryption of just the VMGuestState blob, and NonPersistedTPM for not persisting firmware state in the VMGuestState blob.. **Note:** It can be set for only Confidential VMs.
  const VMDiskSecurityProfile({
    this.diskEncryptionSet,
    this.securityEncryptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParameters, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'securityEncryptionType': ?securityEncryptionType,
    };
  }

  factory VMDiskSecurityProfile.fromMap(Map<String, dynamic> map) {
    return VMDiskSecurityProfile(
      diskEncryptionSet: (() { final guardedValue = map['diskEncryptionSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionSetParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityEncryptionType: (() { final guardedValue = map['securityEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
