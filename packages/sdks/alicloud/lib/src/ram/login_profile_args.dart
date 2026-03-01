// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_login_profile_login_profile_args_doc}
/// The set of arguments for LoginProfile.
/// {@endtemplate}
/// {@macro pulumi_ram_login_profile_login_profile_args_doc}
class LoginProfileArgs {
  /// Specifies whether to forcefully enable multi-factor authentication (MFA) for the RAM user. Valid values:
  /// - true: forcefully enables MFA for the RAM user. The RAM user must bind an MFA device upon the next logon.
  /// - false (default): does not forcefully enable MFA for the RAM user.
  final pulumi.Input<bool>? mfaBindRequired;
  /// The password must meet the Password strength requirements. For more information about password strength setting requirements, see [GetPasswordPolicy](https://help.aliyun.com/document_detail/2337691.html).
  final pulumi.Input<String> password;
  /// Whether the user must reset the password at the next logon. Value:
  /// - true
  /// - false (default)
  final pulumi.Input<bool>? passwordResetRequired;
  /// The user name.
  final pulumi.Input<String> userName;

  /// Creates a new [LoginProfileArgs].
  /// [mfaBindRequired] Specifies whether to forcefully enable multi-factor authentication (MFA) for the RAM user. Valid values:
  /// [password] The password must meet the Password strength requirements. For more information about password strength setting requirements, see [GetPasswordPolicy](https://help.aliyun.com/document_detail/2337691.html).
  /// [passwordResetRequired] Whether the user must reset the password at the next logon. Value:
  /// [userName] The user name.
  LoginProfileArgs({
    pulumi.Output<bool>? mfaBindRequired,
    required pulumi.Output<String> password,
    pulumi.Output<bool>? passwordResetRequired,
    required pulumi.Output<String> userName,
  }) :
      mfaBindRequired = pulumi.Input.asOptionalInput<bool>(mfaBindRequired),
      password = pulumi.Input.asInput<String>(password),
      passwordResetRequired = pulumi.Input.asOptionalInput<bool>(passwordResetRequired),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mfaBindRequired': ?mfaBindRequired,
      'password': password,
      'passwordResetRequired': ?passwordResetRequired,
      'userName': userName,
    };
  }

  factory LoginProfileArgs.fromMap(Map<String, dynamic> map) {
    return LoginProfileArgs(
      mfaBindRequired: map['mfaBindRequired'] == null ? null : pulumi.Output.create<bool>(map['mfaBindRequired'] as bool),
      password: pulumi.Output.create<String>(map['password'] as String),
      passwordResetRequired: map['passwordResetRequired'] == null ? null : pulumi.Output.create<bool>(map['passwordResetRequired'] as bool),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

