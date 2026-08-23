// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilesAccessPointPosixUser {
  /// POSIX group ID. Changing this value forces replacement.
  final pulumi.Input<int> gid;
  /// Set of secondary POSIX group IDs. Changing this value forces replacement.
  final pulumi.Input<List<int>>? secondaryGids;
  /// POSIX user ID. Changing this value forces replacement.
  final pulumi.Input<int> uid;

  /// Creates a new [FilesAccessPointPosixUser].
  /// [gid] POSIX group ID. Changing this value forces replacement.
  /// [secondaryGids] Set of secondary POSIX group IDs. Changing this value forces replacement.
  /// [uid] POSIX user ID. Changing this value forces replacement.
  const FilesAccessPointPosixUser({
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

  factory FilesAccessPointPosixUser.fromMap(Map<String, dynamic> map) {
    return FilesAccessPointPosixUser(
      gid: pulumi.Input.fromValue(map['gid'] as int),
      secondaryGids: (() { final guardedValue = map['secondaryGids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      uid: pulumi.Input.fromValue(map['uid'] as int),
    );
  }
}
