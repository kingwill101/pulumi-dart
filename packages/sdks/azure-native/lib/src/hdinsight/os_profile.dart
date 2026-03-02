// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_operating_system_profile.dart';

/// The Linux operation systems profile.
class OsProfile {
  /// The Linux OS profile.
  final pulumi.Input<LinuxOperatingSystemProfile>? linuxOperatingSystemProfile;

  /// Creates a new [OsProfile].
  /// [linuxOperatingSystemProfile] The Linux OS profile.
  OsProfile({
    this.linuxOperatingSystemProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOperatingSystemProfile': ?pulumi.Input.mapOptionalInputValue<LinuxOperatingSystemProfile, Map<String, dynamic>>(linuxOperatingSystemProfile, (value) => value.toMap()),
    };
  }

  factory OsProfile.fromMap(Map<String, dynamic> map) {
    return OsProfile(
      linuxOperatingSystemProfile: map['linuxOperatingSystemProfile'] == null ? null : (LinuxOperatingSystemProfile.fromMap((map['linuxOperatingSystemProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

