// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains security profile for an OS disk image.
class OSDiskImageSecurityProfileResponse {
  /// confidential VM encryption types
  final pulumi.Input<String>? confidentialVMEncryptionType;

  /// secure VM disk encryption set id
  final pulumi.Input<String>? secureVMDiskEncryptionSetId;

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
      confidentialVMEncryptionType: (() {
        final guardedValue = map['confidentialVMEncryptionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secureVMDiskEncryptionSetId: (() {
        final guardedValue = map['secureVMDiskEncryptionSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
