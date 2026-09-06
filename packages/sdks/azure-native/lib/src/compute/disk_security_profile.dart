// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the security related information for the resource.
class DiskSecurityProfile {
  /// ResourceId of the disk encryption set associated to Confidential VM supported disk encrypted with customer managed key
  final pulumi.Input<String?>? secureVMDiskEncryptionSetId;
  /// Specifies the SecurityType of the VM. Applicable for OS disks only.
  final pulumi.Input<dynamic>? securityType;

  /// Creates a new [DiskSecurityProfile].
  /// [secureVMDiskEncryptionSetId] ResourceId of the disk encryption set associated to Confidential VM supported disk encrypted with customer managed key
  /// [securityType] Specifies the SecurityType of the VM. Applicable for OS disks only.
  const DiskSecurityProfile({
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
      secureVMDiskEncryptionSetId: (() { final guardedValue = map['secureVMDiskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityType: (() { final guardedValue = map['securityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
