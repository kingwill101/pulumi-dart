// ignore_for_file: unused_element, unnecessary_cast

class UserPosixProfile {
  /// The POSIX group ID used for all EFS operations by this user.
  final int gid;

  /// The secondary POSIX group IDs used for all EFS operations by this user.
  final List<int>? secondaryGids;

  /// The POSIX user ID used for all EFS operations by this user.
  final int uid;

  /// Creates a new [UserPosixProfile].
  /// [gid] The POSIX group ID used for all EFS operations by this user.
  /// [secondaryGids] The secondary POSIX group IDs used for all EFS operations by this user.
  /// [uid] The POSIX user ID used for all EFS operations by this user.
  UserPosixProfile({
    required this.gid,
    this.secondaryGids,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gid'] = gid;
    final secondaryGidsValue = secondaryGids;
    if (secondaryGidsValue != null) {
      map['secondaryGids'] = secondaryGidsValue;
    }
    map['uid'] = uid;
    return map;
  }

  factory UserPosixProfile.fromMap(Map<String, dynamic> map) {
    return UserPosixProfile(
      gid: map['gid'] as int,
      secondaryGids: map['secondaryGids'] == null
          ? null
          : (map['secondaryGids'] as List).cast<int>(),
      uid: map['uid'] as int,
    );
  }
}
