// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessPointPosixUser {
  /// Group ID
  final pulumi.Input<int> gid;
  /// Secondary group IDs
  final pulumi.Input<List<int>> secondaryGids;
  /// User Id
  final pulumi.Input<int> uid;

  /// Creates a new [GetAccessPointPosixUser].
  /// [gid] Group ID
  /// [secondaryGids] Secondary group IDs
  /// [uid] User Id
  GetAccessPointPosixUser({
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

  factory GetAccessPointPosixUser.fromMap(Map<String, dynamic> map) {
    return GetAccessPointPosixUser(
      gid: pulumi.Input.fromValue(map['gid'] as int),
      secondaryGids: pulumi.Input.fromValue((map['secondaryGids'] as List).cast<int>()),
      uid: pulumi.Input.fromValue(map['uid'] as int),
    );
  }
}

