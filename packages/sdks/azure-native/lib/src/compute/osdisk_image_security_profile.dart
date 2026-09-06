// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains security profile for an OS disk image.
class OSDiskImageSecurityProfile {
  /// confidential VM encryption types
  final pulumi.Input<dynamic>? confidentialVMEncryptionType;
  /// secure VM disk encryption set id
  final pulumi.Input<String?>? secureVMDiskEncryptionSetId;

  /// Creates a new [OSDiskImageSecurityProfile].
  /// [confidentialVMEncryptionType] confidential VM encryption types
  /// [secureVMDiskEncryptionSetId] secure VM disk encryption set id
  const OSDiskImageSecurityProfile({
    this.confidentialVMEncryptionType,
    this.secureVMDiskEncryptionSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialVMEncryptionType': ?confidentialVMEncryptionType,
      'secureVMDiskEncryptionSetId': ?secureVMDiskEncryptionSetId,
    };
  }

  factory OSDiskImageSecurityProfile.fromMap(Map<String, dynamic> map) {
    return OSDiskImageSecurityProfile(
      confidentialVMEncryptionType: (() { final guardedValue = map['confidentialVMEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      secureVMDiskEncryptionSetId: (() { final guardedValue = map['secureVMDiskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
