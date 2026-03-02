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
  AccessPointPosixUser({
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
      gid: (map['gid'] as int).input(),
      secondaryGids: map['secondaryGids'] == null ? null : (((map['secondaryGids'] as List).cast<int>()).input()).input(),
      uid: (map['uid'] as int).input(),
    );
  }
}

