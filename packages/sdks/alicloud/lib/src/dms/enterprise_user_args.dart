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
  const EnterpriseUserArgs({
    this.maxExecuteCount,
    this.maxResultCount,
    this.mobile,
    this.nickName,
    this.roleNames,
    this.status,
    this.tid,
    required this.uid,
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
      'uid': uid,
      'userName': ?userName,
    };
  }

  factory EnterpriseUserArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseUserArgs(
      maxExecuteCount: (() { final guardedValue = map['maxExecuteCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxResultCount: (() { final guardedValue = map['maxResultCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mobile: (() { final guardedValue = map['mobile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nickName: (() { final guardedValue = map['nickName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleNames: (() { final guardedValue = map['roleNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tid: (() { final guardedValue = map['tid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uid: pulumi.Input.fromValue(map['uid'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

