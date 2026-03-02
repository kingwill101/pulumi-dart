// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoginProfile resources.
class LoginProfileState {
  /// Creation time.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to forcefully enable multi-factor authentication (MFA) for the RAM user. Valid values:
  /// - true: forcefully enables MFA for the RAM user. The RAM user must bind an MFA device upon the next logon.
  /// - false (default): does not forcefully enable MFA for the RAM user.
  final pulumi.Input<bool>? mfaBindRequired;
  /// The password must meet the Password strength requirements. For more information about password strength setting requirements, see [GetPasswordPolicy](https://help.aliyun.com/document_detail/2337691.html).
  final pulumi.Input<String>? password;
  /// Whether the user must reset the password at the next logon. Value:
  /// - true
  /// - false (default)
  final pulumi.Input<bool>? passwordResetRequired;
  /// The user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [LoginProfileState].
  /// [createTime] Creation time.
  /// [mfaBindRequired] Specifies whether to forcefully enable multi-factor authentication (MFA) for the RAM user. Valid values:
  /// [password] The password must meet the Password strength requirements. For more information about password strength setting requirements, see [GetPasswordPolicy](https://help.aliyun.com/document_detail/2337691.html).
  /// [passwordResetRequired] Whether the user must reset the password at the next logon. Value:
  /// [userName] The user name.
  LoginProfileState({
    this.createTime,
    this.mfaBindRequired,
    this.password,
    this.passwordResetRequired,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'mfaBindRequired': ?mfaBindRequired,
      'password': ?password,
      'passwordResetRequired': ?passwordResetRequired,
      'userName': ?userName,
    };
  }

  factory LoginProfileState.fromMap(Map<String, dynamic> map) {
    return LoginProfileState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      mfaBindRequired: map['mfaBindRequired'] == null ? null : (map['mfaBindRequired']! as bool).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      passwordResetRequired: map['passwordResetRequired'] == null ? null : (map['passwordResetRequired']! as bool).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

