// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_set_parameters_response.dart';

/// Specifies the security profile settings for the managed disk. **Note:** It can
/// only be set for Confidential VMs.
class VMDiskSecurityProfileResponse {
  /// Specifies the customer managed disk encryption set resource id for the managed
  /// disk that is used for Customer Managed Key encrypted ConfidentialVM OS Disk and
  /// VMGuest blob.
  final pulumi.Input<DiskEncryptionSetParametersResponse>? diskEncryptionSet;
  /// Specifies the EncryptionType of the managed disk. It is set to
  /// DiskWithVMGuestState for encryption of the managed disk along with VMGuestState
  /// blob, VMGuestStateOnly for encryption of just the VMGuestState blob, and
  /// NonPersistedTPM for not persisting firmware state in the VMGuestState blob..
  /// **Note:** It can be set for only Confidential VMs.
  final pulumi.Input<String>? securityEncryptionType;

  /// Creates a new [VMDiskSecurityProfileResponse].
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed
  /// [securityEncryptionType] Specifies the EncryptionType of the managed disk. It is set to
  const VMDiskSecurityProfileResponse({
    this.diskEncryptionSet,
    this.securityEncryptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSet': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionSetParametersResponse, Map<String, dynamic>>(diskEncryptionSet, (value) => value.toMap()),
      'securityEncryptionType': ?securityEncryptionType,
    };
  }

  factory VMDiskSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return VMDiskSecurityProfileResponse(
      diskEncryptionSet: (() { final guardedValue = map['diskEncryptionSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionSetParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityEncryptionType: (() { final guardedValue = map['securityEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
