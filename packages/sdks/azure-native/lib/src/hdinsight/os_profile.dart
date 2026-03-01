// ignore_for_file: unused_element, unnecessary_cast

import 'linux_operating_system_profile.dart';

/// The Linux operation systems profile.
class OsProfile {
  /// The Linux OS profile.
  final LinuxOperatingSystemProfile? linuxOperatingSystemProfile;

  /// Creates a new [OsProfile].
  /// [linuxOperatingSystemProfile] The Linux OS profile.
  OsProfile({
    this.linuxOperatingSystemProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOperatingSystemProfile': ?linuxOperatingSystemProfile == null ? null : linuxOperatingSystemProfile!.toMap(),
    };
  }

  factory OsProfile.fromMap(Map<String, dynamic> map) {
    return OsProfile(
      linuxOperatingSystemProfile: map['linuxOperatingSystemProfile'] == null ? null : LinuxOperatingSystemProfile.fromMap((map['linuxOperatingSystemProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

