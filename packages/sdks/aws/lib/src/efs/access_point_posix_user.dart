// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPointPosixUser {
  /// POSIX group ID used for all file system operations using this access point.
  final pulumi.Input<int> gid;
  /// Secondary POSIX group IDs used for all file system operations using this access point.
  final pulumi.Input<List<int>>? secondaryGids;
  /// POSIX user ID used for all file system operations using this access point.
  final pulumi.Input<int> uid;

  /// Creates a new [AccessPointPosixUser].
  /// [gid] POSIX group ID used for all file system operations using this access point.
  /// [secondaryGids] Secondary POSIX group IDs used for all file system operations using this access point.
  /// [uid] POSIX user ID used for all file system operations using this access point.
  const AccessPointPosixUser({
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

  factory AccessPointPosixUser.fromMap(Map<String, dynamic> map) {
    return AccessPointPosixUser(
      gid: pulumi.Input.fromValue(map['gid'] as int),
      secondaryGids: (() { final guardedValue = map['secondaryGids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      uid: pulumi.Input.fromValue(map['uid'] as int),
    );
  }
}
