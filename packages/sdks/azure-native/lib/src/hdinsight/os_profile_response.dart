// ignore_for_file: unused_element, unnecessary_cast

import 'linux_operating_system_profile_response.dart';

/// The Linux operation systems profile.
class OsProfileResponse {
  /// The Linux OS profile.
  final LinuxOperatingSystemProfileResponse? linuxOperatingSystemProfile;

  /// Creates a new [OsProfileResponse].
  /// [linuxOperatingSystemProfile] The Linux OS profile.
  OsProfileResponse({
    this.linuxOperatingSystemProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOperatingSystemProfile': ?linuxOperatingSystemProfile == null ? null : linuxOperatingSystemProfile!.toMap(),
    };
  }

  factory OsProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileResponse(
      linuxOperatingSystemProfile: map['linuxOperatingSystemProfile'] == null ? null : LinuxOperatingSystemProfileResponse.fromMap((map['linuxOperatingSystemProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

