// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osdisk_image_security_profile_response.dart';

/// Contains encryption settings for an OS disk image.
class OSDiskImageEncryptionResponse {
  /// A relative URI containing the resource ID of the disk encryption set.
  final pulumi.Input<String?>? diskEncryptionSetId;
  /// This property specifies the security profile of an OS disk image.
  final pulumi.Input<OSDiskImageSecurityProfileResponse?>? securityProfile;

  /// Creates a new [OSDiskImageEncryptionResponse].
  /// [diskEncryptionSetId] A relative URI containing the resource ID of the disk encryption set.
  /// [securityProfile] This property specifies the security profile of an OS disk image.
  const OSDiskImageEncryptionResponse({
    this.diskEncryptionSetId,
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<OSDiskImageSecurityProfileResponse, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
    };
  }

  factory OSDiskImageEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return OSDiskImageEncryptionResponse(
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSDiskImageSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
