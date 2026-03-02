// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osdisk_image_security_profile_response.dart';

/// Contains encryption settings for an OS disk image.
class OSDiskImageEncryptionResponse {
  /// A relative URI containing the resource ID of the disk encryption set.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// This property specifies the security profile of an OS disk image.
  final pulumi.Input<OSDiskImageSecurityProfileResponse>? securityProfile;

  /// Creates a new [OSDiskImageEncryptionResponse].
  /// [diskEncryptionSetId] A relative URI containing the resource ID of the disk encryption set.
  /// [securityProfile] This property specifies the security profile of an OS disk image.
  OSDiskImageEncryptionResponse({
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
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId'] as String).input(),
      securityProfile: map['securityProfile'] == null ? null : (OSDiskImageSecurityProfileResponse.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

