// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseUser resources.
class EnterpriseUserState {
  /// Maximum number of inquiries on the day.
  final pulumi.Input<int>? maxExecuteCount;
  /// Query the maximum number of rows on the day.
  final pulumi.Input<int>? maxResultCount;
  /// The DingTalk number or mobile number of the user.
  final pulumi.Input<String>? mobile;
  /// It has been deprecated from 1.100.0 and use `user_name` instead.
  final pulumi.Input<String>? nickName;
  /// The roles that the user plays.
  final pulumi.Input<List<String>>? roleNames;
  /// The state of DMS Enterprise User. Valid values: `NORMAL`, `DISABLE`.
  final pulumi.Input<String>? status;
  /// The tenant ID.
  final pulumi.Input<int>? tid;
  /// The Alibaba Cloud unique ID (UID) of the user to add.
  final pulumi.Input<String>? uid;
  /// The nickname of the user.
  final pulumi.Input<String>? userName;

  /// Creates a new [EnterpriseUserState].
  /// [maxExecuteCount] Maximum number of inquiries on the day.
  /// [maxResultCount] Query the maximum number of rows on the day.
  /// [mobile] The DingTalk number or mobile number of the user.
  /// [nickName] It has been deprecated from 1.100.0 and use `user_name` instead.
  /// [roleNames] The roles that the user plays.
  /// [status] The state of DMS Enterprise User. Valid values: `NORMAL`, `DISABLE`.
  /// [tid] The tenant ID.
  /// [uid] The Alibaba Cloud unique ID (UID) of the user to add.
  /// [userName] The nickname of the user.
  EnterpriseUserState({
    this.maxExecuteCount,
    this.maxResultCount,
    this.mobile,
    this.nickName,
    this.roleNames,
    this.status,
    this.tid,
    this.uid,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExecuteCount': ?maxExecuteCount,
      'maxResultCount': ?maxResultCount,
      'mobile': ?mobile,
      'nickName': ?nickName,
      'roleNames': ?roleNames,
      'status': ?status,
      'tid': ?tid,
      'uid': ?uid,
      'userName': ?userName,
    };
  }

  factory EnterpriseUserState.fromMap(Map<String, dynamic> map) {
    return EnterpriseUserState(
      maxExecuteCount: map['maxExecuteCount'] == null ? null : (map['maxExecuteCount']! as int).input(),
      maxResultCount: map['maxResultCount'] == null ? null : (map['maxResultCount']! as int).input(),
      mobile: map['mobile'] == null ? null : (map['mobile']! as String).input(),
      nickName: map['nickName'] == null ? null : (map['nickName']! as String).input(),
      roleNames: map['roleNames'] == null ? null : ((map['roleNames']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tid: map['tid'] == null ? null : (map['tid']! as int).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

