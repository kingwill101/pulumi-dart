// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserLoginProfile.
class UserLoginProfileArgs {
  /// The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is `20`.
  final pulumi.Input<int>? passwordLength;

  /// Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  final pulumi.Input<bool>? passwordResetRequired;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  final pulumi.Input<String>? pgpKey;

  /// The IAM user's name.
  final pulumi.Input<String> user;

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
      passwordLength: pulumi.Input.asOptionalInput<int>(map['passwordLength']),
      passwordResetRequired:
          pulumi.Input.asOptionalInput<bool>(map['passwordResetRequired']),
      pgpKey: pulumi.Input.asOptionalInput<String>(map['pgpKey']),
      user: pulumi.Input.asInput<String>(map['user']),
    );
  }
}
