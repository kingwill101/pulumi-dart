// ignore_for_file: unused_element, unnecessary_cast


/// The effective NFS User ID and Group ID when accessing the volume data.
class NfsUser {
  /// The NFS user's GID
  final double? groupId;
  /// The NFS user's UID
  final double? userId;

  /// Creates a new [NfsUser].
  /// [groupId] The NFS user's GID
  /// [userId] The NFS user's UID
  NfsUser({
    this.groupId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'userId': ?userId,
    };
  }

  factory NfsUser.fromMap(Map<String, dynamic> map) {
    return NfsUser(
      groupId: map['groupId'] == null ? null : map['groupId'] as double,
      userId: map['userId'] == null ? null : map['userId'] as double,
    );
  }
}

