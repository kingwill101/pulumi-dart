// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPosixProfile {
  /// POSIX group ID used for all EFS operations by this user.
  final pulumi.Input<int> gid;
  /// Secondary POSIX group IDs used for all EFS operations by this user.
  final pulumi.Input<List<int>?>? secondaryGids;
  /// POSIX user ID used for all EFS operations by this user.
  final pulumi.Input<int> uid;

  /// Creates a new [UserPosixProfile].
  /// [gid] POSIX group ID used for all EFS operations by this user.
  /// [secondaryGids] Secondary POSIX group IDs used for all EFS operations by this user.
  /// [uid] POSIX user ID used for all EFS operations by this user.
  const UserPosixProfile({
    required this.gid,
    this.secondaryGids,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'secondaryGids': ?secondaryGids,
      'uid': uid,
    };
  }

  factory UserPosixProfile.fromMap(Map<String, dynamic> map) {
    return UserPosixProfile(
      gid: pulumi.Input.fromValue((map['gid'] as num).toInt()),
      secondaryGids: (() { final guardedValue = map['secondaryGids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      uid: pulumi.Input.fromValue((map['uid'] as num).toInt()),
    );
  }
}
