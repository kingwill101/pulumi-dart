// ignore_for_file: unused_element, unnecessary_cast

import 'osdisk_image_security_profile.dart';

/// Contains encryption settings for an OS disk image.
class OSDiskImageEncryption {
  /// A relative URI containing the resource ID of the disk encryption set.
  final String? diskEncryptionSetId;
  /// This property specifies the security profile of an OS disk image.
  final OSDiskImageSecurityProfile? securityProfile;

  /// Creates a new [OSDiskImageEncryption].
  /// [diskEncryptionSetId] A relative URI containing the resource ID of the disk encryption set.
  /// [securityProfile] This property specifies the security profile of an OS disk image.
  OSDiskImageEncryption({
    this.diskEncryptionSetId,
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
    };
  }

  factory OSDiskImageEncryption.fromMap(Map<String, dynamic> map) {
    return OSDiskImageEncryption(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      securityProfile: map['securityProfile'] == null ? null : OSDiskImageSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

