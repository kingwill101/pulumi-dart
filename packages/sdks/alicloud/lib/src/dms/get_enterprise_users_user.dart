// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnterpriseUsersUser {
  /// The Alibaba Cloud unique ID (UID) of the user.
  final pulumi.Input<String> id;
  /// The DingTalk number or mobile number of the user.
  final pulumi.Input<String> mobile;
  /// The nickname of the user.
  final pulumi.Input<String> nickName;
  /// The Alibaba Cloud unique ID (UID) of the parent account if the user corresponds to a Resource Access Management (RAM) user.
  final pulumi.Input<int> parentUid;
  /// The list ids of the role that the user plays.
  final pulumi.Input<List<int>> roleIds;
  /// The list names of the role that he user plays.
  final pulumi.Input<List<String>> roleNames;
  /// The status of the user.
  final pulumi.Input<String> status;
  final pulumi.Input<String> uid;
  /// The ID of the user.
  final pulumi.Input<String> userId;
  /// The nickname of the user.
  final pulumi.Input<String> userName;

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
      id: pulumi.Input.fromValue(map['id'] as String),
      mobile: pulumi.Input.fromValue(map['mobile'] as String),
      nickName: pulumi.Input.fromValue(map['nickName'] as String),
      parentUid: pulumi.Input.fromValue(map['parentUid'] as int),
      roleIds: pulumi.Input.fromValue((map['roleIds'] as List).cast<int>()),
      roleNames: pulumi.Input.fromValue((map['roleNames'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

