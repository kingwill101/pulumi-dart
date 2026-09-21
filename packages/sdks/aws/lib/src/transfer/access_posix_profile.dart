// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPosixProfile {
  /// POSIX group ID used for all EFS operations by this user.
  final pulumi.Input<int> gid;
  /// Secondary POSIX group IDs used for all EFS operations by this user.
  final pulumi.Input<List<int>?>? secondaryGids;
  /// POSIX user ID used for all EFS operations by this user.
  final pulumi.Input<int> uid;

  /// Creates a new [AccessPosixProfile].
  /// [gid] POSIX group ID used for all EFS operations by this user.
  /// [secondaryGids] Secondary POSIX group IDs used for all EFS operations by this user.
  /// [uid] POSIX user ID used for all EFS operations by this user.
  const AccessPosixProfile({
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

  factory AccessPosixProfile.fromMap(Map<String, dynamic> map) {
    return AccessPosixProfile(
      gid: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['gid'])),
      secondaryGids: (() { final guardedValue = map['secondaryGids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      uid: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['uid'])),
    );
  }
}
