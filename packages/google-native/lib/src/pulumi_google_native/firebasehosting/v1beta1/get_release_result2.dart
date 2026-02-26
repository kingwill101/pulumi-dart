// ignore_for_file: unused_element, unnecessary_cast

import 'acting_user_response.dart';
import 'version_response6.dart';

/// Result data returned by getRelease.
class GetReleaseResult2 {
  /// The deploy description when the release was created. The value can be up to 512 characters.
  final String message;

  /// The unique identifier for the release, in either of the following formats: - sites/SITE_ID/releases/RELEASE_ID - sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is provided in the response body when you call [`releases.create`](sites.releases/create) or [`channels.releases.create`](sites.channels.releases/create).
  final String name;

  /// The time at which the version is set to be public.
  final String releaseTime;

  /// Identifies the user who created the release.
  final ActingUserResponse releaseUser;

  /// Explains the reason for the release. Specify a value for this field only when creating a `SITE_DISABLE` type release.
  final String type;

  /// The configuration and content that was released.
  final VersionResponse6 version;

  GetReleaseResult2({
    required this.message,
    required this.name,
    required this.releaseTime,
    required this.releaseUser,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['name'] = name;
    map['releaseTime'] = releaseTime;
    map['releaseUser'] = releaseUser.toMap();
    map['type'] = type;
    map['version'] = version.toMap();
    return map;
  }

  factory GetReleaseResult2.fromMap(Map<String, dynamic> map) {
    return GetReleaseResult2(
      message: map['message'] as String,
      name: map['name'] as String,
      releaseTime: map['releaseTime'] as String,
      releaseUser: ActingUserResponse.fromMap(
          (map['releaseUser'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: VersionResponse6.fromMap(
          (map['version'] as Map).cast<String, dynamic>()),
    );
  }
}
