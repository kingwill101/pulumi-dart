// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_login_profile_user_login_profile_args_doc}
/// The set of arguments for UserLoginProfile.
/// {@endtemplate}
/// {@macro pulumi_iam_user_login_profile_user_login_profile_args_doc}
class UserLoginProfileArgs {
  /// The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is `20`.
  final pulumi.Input<int>? passwordLength;
  /// Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  final pulumi.Input<bool>? passwordResetRequired;
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  final pulumi.Input<String>? pgpKey;
  /// The IAM user's name.
  final pulumi.Input<String> user;

  /// Creates a new [UserLoginProfileArgs].
  /// [passwordLength] The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is `20`.
  /// [passwordResetRequired] Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  /// [user] The IAM user's name.
  const UserLoginProfileArgs({
    this.passwordLength,
    this.passwordResetRequired,
    this.pgpKey,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordLength': ?passwordLength,
      'passwordResetRequired': ?passwordResetRequired,
      'pgpKey': ?pgpKey,
      'user': user,
    };
  }

  factory UserLoginProfileArgs.fromMap(Map<String, dynamic> map) {
    return UserLoginProfileArgs(
      passwordLength: (() { final guardedValue = map['passwordLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      passwordResetRequired: (() { final guardedValue = map['passwordResetRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pgpKey: (() { final guardedValue = map['pgpKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
