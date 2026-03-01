// ignore_for_file: unused_element, unnecessary_cast


class GetEnterpriseUsersUser {
  /// The Alibaba Cloud unique ID (UID) of the user.
  final String id;
  /// The DingTalk number or mobile number of the user.
  final String mobile;
  /// The nickname of the user.
  final String nickName;
  /// The Alibaba Cloud unique ID (UID) of the parent account if the user corresponds to a Resource Access Management (RAM) user.
  final int parentUid;
  /// The list ids of the role that the user plays.
  final List<int> roleIds;
  /// The list names of the role that he user plays.
  final List<String> roleNames;
  /// The status of the user.
  final String status;
  final String uid;
  /// The ID of the user.
  final String userId;
  /// The nickname of the user.
  final String userName;

  /// Creates a new [GetEnterpriseUsersUser].
  /// [id] The Alibaba Cloud unique ID (UID) of the user.
  /// [mobile] The DingTalk number or mobile number of the user.
  /// [nickName] The nickname of the user.
  /// [parentUid] The Alibaba Cloud unique ID (UID) of the parent account if the user corresponds to a Resource Access Management (RAM) user.
  /// [roleIds] The list ids of the role that the user plays.
  /// [roleNames] The list names of the role that he user plays.
  /// [status] The status of the user.
  /// [uid] Required.
  /// [userId] The ID of the user.
  /// [userName] The nickname of the user.
  GetEnterpriseUsersUser({
    required this.id,
    required this.mobile,
    required this.nickName,
    required this.parentUid,
    required this.roleIds,
    required this.roleNames,
    required this.status,
    required this.uid,
    required this.userId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'mobile': mobile,
      'nickName': nickName,
      'parentUid': parentUid,
      'roleIds': roleIds,
      'roleNames': roleNames,
      'status': status,
      'uid': uid,
      'userId': userId,
      'userName': userName,
    };
  }

  factory GetEnterpriseUsersUser.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseUsersUser(
      id: map['id'] as String,
      mobile: map['mobile'] as String,
      nickName: map['nickName'] as String,
      parentUid: map['parentUid'] as int,
      roleIds: (map['roleIds'] as List).cast<int>(),
      roleNames: (map['roleNames'] as List).cast<String>(),
      status: map['status'] as String,
      uid: map['uid'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
    );
  }
}

