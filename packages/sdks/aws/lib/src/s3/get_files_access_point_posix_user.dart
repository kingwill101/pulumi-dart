// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFilesAccessPointPosixUser {
  /// POSIX group ID.
  final pulumi.Input<int> gid;
  /// Set of secondary POSIX group IDs.
  final pulumi.Input<List<int>> secondaryGids;
  /// POSIX user ID.
  final pulumi.Input<int> uid;

  /// Creates a new [GetFilesAccessPointPosixUser].
  /// [gid] POSIX group ID.
  /// [secondaryGids] Set of secondary POSIX group IDs.
  /// [uid] POSIX user ID.
  const GetFilesAccessPointPosixUser({
    required this.gid,
    required this.secondaryGids,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': gid,
      'secondaryGids': secondaryGids,
      'uid': uid,
    };
  }

  factory GetFilesAccessPointPosixUser.fromMap(Map<String, dynamic> map) {
    return GetFilesAccessPointPosixUser(
      gid: pulumi.Input.fromValue((map['gid'] as num).toInt()),
      secondaryGids: pulumi.Input.fromValue((map['secondaryGids'] as List).cast<int>()),
      uid: pulumi.Input.fromValue((map['uid'] as num).toInt()),
    );
  }
}
