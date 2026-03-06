// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_operating_system_profile_response.dart';

/// The Linux operation systems profile.
class OsProfileResponse {
  /// The Linux OS profile.
  final pulumi.Input<LinuxOperatingSystemProfileResponse>? linuxOperatingSystemProfile;

  /// Creates a new [OsProfileResponse].
  /// [linuxOperatingSystemProfile] The Linux OS profile.
  const OsProfileResponse({
    this.linuxOperatingSystemProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxOperatingSystemProfile': ?pulumi.Input.mapOptionalInputValue<LinuxOperatingSystemProfileResponse, Map<String, dynamic>>(linuxOperatingSystemProfile, (value) => value.toMap()),
    };
  }

  factory OsProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileResponse(
      linuxOperatingSystemProfile: (() { final guardedValue = map['linuxOperatingSystemProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxOperatingSystemProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

