// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_enterprise_user_enterprise_user_args_doc}
/// The set of arguments for EnterpriseUser.
/// {@endtemplate}
/// {@macro pulumi_dms_enterprise_user_enterprise_user_args_doc}
class EnterpriseUserArgs {
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
  final pulumi.Input<String> uid;
  /// The nickname of the user.
  final pulumi.Input<String>? userName;

  /// Creates a new [EnterpriseUserArgs].
  /// [maxExecuteCount] Maximum number of inquiries on the day.
  /// [maxResultCount] Query the maximum number of rows on the day.
  /// [mobile] The DingTalk number or mobile number of the user.
  /// [nickName] It has been deprecated from 1.100.0 and use `user_name` instead.
  /// [roleNames] The roles that the user plays.
  /// [status] The state of DMS Enterprise User. Valid values: `NORMAL`, `DISABLE`.
  /// [tid] The tenant ID.
  /// [uid] The Alibaba Cloud unique ID (UID) of the user to add.
  /// [userName] The nickname of the user.
  EnterpriseUserArgs({
    int? maxExecuteCount,
    int? maxResultCount,
    String? mobile,
    String? nickName,
    List<String>? roleNames,
    String? status,
    int? tid,
    required String uid,
    String? userName,
  }) :
      maxExecuteCount = pulumi.Input.asOptionalInput<int>(maxExecuteCount),
      maxResultCount = pulumi.Input.asOptionalInput<int>(maxResultCount),
      mobile = pulumi.Input.asOptionalInput<String>(mobile),
      nickName = pulumi.Input.asOptionalInput<String>(nickName),
      roleNames = pulumi.Input.asOptionalInput<List<String>>(roleNames),
      status = pulumi.Input.asOptionalInput<String>(status),
      tid = pulumi.Input.asOptionalInput<int>(tid),
      uid = pulumi.Input.asInput<String>(uid),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExecuteCount': ?maxExecuteCount,
      'maxResultCount': ?maxResultCount,
      'mobile': ?mobile,
      'nickName': ?nickName,
      'roleNames': ?roleNames,
      'status': ?status,
      'tid': ?tid,
      'uid': uid,
      'userName': ?userName,
    };
  }

  factory EnterpriseUserArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseUserArgs(
      maxExecuteCount: map['maxExecuteCount'] == null ? null : map['maxExecuteCount'] as int,
      maxResultCount: map['maxResultCount'] == null ? null : map['maxResultCount'] as int,
      mobile: map['mobile'] == null ? null : map['mobile'] as String,
      nickName: map['nickName'] == null ? null : map['nickName'] as String,
      roleNames: map['roleNames'] == null ? null : (map['roleNames'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
      tid: map['tid'] == null ? null : map['tid'] as int,
      uid: map['uid'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

