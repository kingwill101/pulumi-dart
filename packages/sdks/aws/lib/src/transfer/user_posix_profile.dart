// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPosixProfile {
  /// The POSIX group ID used for all EFS operations by this user.
  final pulumi.Input<int> gid;

  /// The secondary POSIX group IDs used for all EFS operations by this user.
  final pulumi.Input<List<int>>? secondaryGids;

  /// The POSIX user ID used for all EFS operations by this user.
  final pulumi.Input<int> uid;

  /// Creates a new [UserPosixProfile].
  /// [gid] The POSIX group ID used for all EFS operations by this user.
  /// [secondaryGids] The secondary POSIX group IDs used for all EFS operations by this user.
  /// [uid] The POSIX user ID used for all EFS operations by this user.
  UserPosixProfile({required this.gid, this.secondaryGids, required this.uid});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'secondaryGids': ?secondaryGids,
      'uid': uid,
    };
  }

  factory UserPosixProfile.fromMap(Map<String, dynamic> map) {
    return UserPosixProfile(
      gid: pulumi.Input.fromValue(map['gid'] as int),
      secondaryGids: (() {
        final guardedValue = map['secondaryGids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      uid: pulumi.Input.fromValue(map['uid'] as int),
    );
  }
}
