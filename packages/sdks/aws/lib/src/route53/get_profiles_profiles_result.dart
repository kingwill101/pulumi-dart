// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_profiles_profiles_profile.dart';

/// Result data returned by getProfilesProfiles.
class GetProfilesProfilesResult {
  /// List of Profiles.
  final List<GetProfilesProfilesProfile>? profiles;
  final String? region;

  /// Creates a new [GetProfilesProfilesResult].
  /// [profiles] List of Profiles.
  /// [region] Optional.
  const GetProfilesProfilesResult({
    this.profiles,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profiles': ?(() { final guardedValue = profiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProfilesProfilesProfile, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetProfilesProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetProfilesProfilesResult(
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProfilesProfilesProfile>(guardedValue, (value) => GetProfilesProfilesProfile.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
