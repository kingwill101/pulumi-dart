// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_profiles_profiles_profile.dart';

/// Result data returned by getProfilesProfiles.
class GetProfilesProfilesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of Profiles.
  final List<GetProfilesProfilesProfile> profiles;
  final String region;

  /// Creates a new [GetProfilesProfilesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [profiles] List of Profiles.
  /// [region] Required.
  GetProfilesProfilesResult({
    required this.id,
    required this.profiles,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['profiles'] = pulumi.Input.encodeList<GetProfilesProfilesProfile,
        Map<String, dynamic>>(profiles, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetProfilesProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetProfilesProfilesResult(
      id: map['id'] as String,
      profiles: pulumi.Input.decodeList<GetProfilesProfilesProfile>(
          map['profiles'],
          (value) => GetProfilesProfilesProfile.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
