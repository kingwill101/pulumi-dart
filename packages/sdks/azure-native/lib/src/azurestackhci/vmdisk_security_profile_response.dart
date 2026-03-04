// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security profile settings for the managed disk. NOTE: It can only be set for Confidential VMs
class VMDiskSecurityProfileResponse {
  /// Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
  final pulumi.Input<String>? securityEncryptionType;

  /// Creates a new [VMDiskSecurityProfileResponse].
  /// [securityEncryptionType] Specifies the EncryptionType of the managed disk. It is set to NonPersistedTPM for not persisting firmware state in the VMGuestState blob. NOTE: It can be set for only Confidential VMs.
  VMDiskSecurityProfileResponse({this.securityEncryptionType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'securityEncryptionType': ?securityEncryptionType};
  }

  factory VMDiskSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return VMDiskSecurityProfileResponse(
      securityEncryptionType: (() {
        final guardedValue = map['securityEncryptionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
