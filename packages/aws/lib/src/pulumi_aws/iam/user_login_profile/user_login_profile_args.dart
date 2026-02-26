// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserLoginProfile.
class UserLoginProfileArgs {
  /// The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>.
  final Input<int>? passwordLength;

  /// Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  final Input<bool>? passwordResetRequired;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  final Input<String>? pgpKey;

  /// The IAM user's name.
  final Input<String> user;

  UserLoginProfileArgs({
    this.passwordLength,
    this.passwordResetRequired,
    this.pgpKey,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordLengthValue = passwordLength;
    if (passwordLengthValue != null) {
      map['passwordLength'] = passwordLengthValue;
    }
    final passwordResetRequiredValue = passwordResetRequired;
    if (passwordResetRequiredValue != null) {
      map['passwordResetRequired'] = passwordResetRequiredValue;
    }
    final pgpKeyValue = pgpKey;
    if (pgpKeyValue != null) {
      map['pgpKey'] = pgpKeyValue;
    }
    map['user'] = user;
    return map;
  }

  factory UserLoginProfileArgs.fromMap(Map<String, dynamic> map) {
    return UserLoginProfileArgs(
      passwordLength: Input.asOptionalInput<int>(map['passwordLength']),
      passwordResetRequired:
          Input.asOptionalInput<bool>(map['passwordResetRequired']),
      pgpKey: Input.asOptionalInput<String>(map['pgpKey']),
      user: Input.asInput<String>(map['user']),
    );
  }
}
