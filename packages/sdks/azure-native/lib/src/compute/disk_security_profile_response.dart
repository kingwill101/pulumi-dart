// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the security related information for the resource.
class DiskSecurityProfileResponse {
  /// ResourceId of the disk encryption set associated to Confidential VM supported disk encrypted with customer managed key
  final pulumi.Input<String>? secureVMDiskEncryptionSetId;
  /// Specifies the SecurityType of the VM. Applicable for OS disks only.
  final pulumi.Input<String>? securityType;

  /// Creates a new [DiskSecurityProfileResponse].
  /// [secureVMDiskEncryptionSetId] ResourceId of the disk encryption set associated to Confidential VM supported disk encrypted with customer managed key
  /// [securityType] Specifies the SecurityType of the VM. Applicable for OS disks only.
  DiskSecurityProfileResponse({
    this.secureVMDiskEncryptionSetId,
    this.securityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureVMDiskEncryptionSetId': ?secureVMDiskEncryptionSetId,
      'securityType': ?securityType,
    };
  }

  factory DiskSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return DiskSecurityProfileResponse(
      secureVMDiskEncryptionSetId: map['secureVMDiskEncryptionSetId'] == null ? null : (map['secureVMDiskEncryptionSetId']! as String).input(),
      securityType: map['securityType'] == null ? null : (map['securityType']! as String).input(),
    );
  }
}

