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
  UserLoginProfileArgs({
    pulumi.Output<int>? passwordLength,
    pulumi.Output<bool>? passwordResetRequired,
    pulumi.Output<String>? pgpKey,
    required pulumi.Output<String> user,
  }) :
      passwordLength = pulumi.Input.asOptionalInput<int>(passwordLength),
      passwordResetRequired = pulumi.Input.asOptionalInput<bool>(passwordResetRequired),
      pgpKey = pulumi.Input.asOptionalInput<String>(pgpKey),
      user = pulumi.Input.asInput<String>(user);

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
      passwordLength: map['passwordLength'] == null ? null : pulumi.Output.create<int>(map['passwordLength'] as int),
      passwordResetRequired: map['passwordResetRequired'] == null ? null : pulumi.Output.create<bool>(map['passwordResetRequired'] as bool),
      pgpKey: map['pgpKey'] == null ? null : pulumi.Output.create<String>(map['pgpKey'] as String),
      user: pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

