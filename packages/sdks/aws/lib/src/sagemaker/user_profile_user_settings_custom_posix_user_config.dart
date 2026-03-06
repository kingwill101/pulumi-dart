// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCustomPosixUserConfig {
  /// The POSIX group ID.
  final pulumi.Input<int> gid;
  /// The POSIX user ID.
  final pulumi.Input<int> uid;

  /// Creates a new [UserProfileUserSettingsCustomPosixUserConfig].
  /// [gid] The POSIX group ID.
  /// [uid] The POSIX user ID.
  const UserProfileUserSettingsCustomPosixUserConfig({
    required this.gid,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'uid': uid,
    };
  }

  factory UserProfileUserSettingsCustomPosixUserConfig.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCustomPosixUserConfig(
      gid: pulumi.Input.fromValue(map['gid'] as int),
      uid: pulumi.Input.fromValue(map['uid'] as int),
    );
  }
}

