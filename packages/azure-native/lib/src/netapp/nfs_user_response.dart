// ignore_for_file: unused_element, unnecessary_cast


/// The effective NFS User ID and Group ID when accessing the volume data.
class NfsUserResponse {
  /// The NFS user's GID
  final double? groupId;
  /// The NFS user's UID
  final double? userId;

  /// Creates a new [NfsUserResponse].
  /// [groupId] The NFS user's GID
  /// [userId] The NFS user's UID
  NfsUserResponse({
    this.groupId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'userId': ?userId,
    };
  }

  factory NfsUserResponse.fromMap(Map<String, dynamic> map) {
    return NfsUserResponse(
      groupId: map['groupId'] == null ? null : map['groupId'] as double,
      userId: map['userId'] == null ? null : map['userId'] as double,
    );
  }
}

