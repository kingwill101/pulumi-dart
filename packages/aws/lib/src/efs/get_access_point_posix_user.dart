// ignore_for_file: unused_element, unnecessary_cast

class GetAccessPointPosixUser {
  /// Group ID
  final int gid;

  /// Secondary group IDs
  final List<int> secondaryGids;

  /// User Id
  final int uid;

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
    final map = <String, dynamic>{};
    map['gid'] = gid;
    map['secondaryGids'] = secondaryGids;
    map['uid'] = uid;
    return map;
  }

  factory GetAccessPointPosixUser.fromMap(Map<String, dynamic> map) {
    return GetAccessPointPosixUser(
      gid: map['gid'] as int,
      secondaryGids: (map['secondaryGids'] as List).cast<int>(),
      uid: map['uid'] as int,
    );
  }
}
