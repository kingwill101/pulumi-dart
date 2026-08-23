// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'osdisk_image_security_profile.dart';

/// Contains encryption settings for an OS disk image.
class OSDiskImageEncryption {
  /// A relative URI containing the resource ID of the disk encryption set.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// This property specifies the security profile of an OS disk image.
  final pulumi.Input<OSDiskImageSecurityProfile>? securityProfile;

  /// Creates a new [OSDiskImageEncryption].
  /// [diskEncryptionSetId] A relative URI containing the resource ID of the disk encryption set.
  /// [securityProfile] This property specifies the security profile of an OS disk image.
  const OSDiskImageEncryption({
    this.diskEncryptionSetId,
    this.securityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<OSDiskImageSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
    };
  }

  factory OSDiskImageEncryption.fromMap(Map<String, dynamic> map) {
    return OSDiskImageEncryption(
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSDiskImageSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
