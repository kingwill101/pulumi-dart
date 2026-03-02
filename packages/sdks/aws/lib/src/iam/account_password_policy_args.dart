// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_account_password_policy_account_password_policy_args_doc}
/// The set of arguments for AccountPasswordPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_account_password_policy_account_password_policy_args_doc}
class AccountPasswordPolicyArgs {
  /// Whether to allow users to change their own password
  final pulumi.Input<bool>? allowUsersToChangePassword;
  /// Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)
  final pulumi.Input<bool>? hardExpiry;
  /// The number of days that an user password is valid.
  final pulumi.Input<int>? maxPasswordAge;
  /// Minimum length to require for user passwords.
  final pulumi.Input<int>? minimumPasswordLength;
  /// The number of previous passwords that users are prevented from reusing.
  final pulumi.Input<int>? passwordReusePrevention;
  /// Whether to require lowercase characters for user passwords.
  final pulumi.Input<bool>? requireLowercaseCharacters;
  /// Whether to require numbers for user passwords.
  final pulumi.Input<bool>? requireNumbers;
  /// Whether to require symbols for user passwords.
  final pulumi.Input<bool>? requireSymbols;
  /// Whether to require uppercase characters for user passwords.
  final pulumi.Input<bool>? requireUppercaseCharacters;

  /// Creates a new [AccountPasswordPolicyArgs].
  /// [allowUsersToChangePassword] Whether to allow users to change their own password
  /// [hardExpiry] Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)
  /// [maxPasswordAge] The number of days that an user password is valid.
  /// [minimumPasswordLength] Minimum length to require for user passwords.
  /// [passwordReusePrevention] The number of previous passwords that users are prevented from reusing.
  /// [requireLowercaseCharacters] Whether to require lowercase characters for user passwords.
  /// [requireNumbers] Whether to require numbers for user passwords.
  /// [requireSymbols] Whether to require symbols for user passwords.
  /// [requireUppercaseCharacters] Whether to require uppercase characters for user passwords.
  AccountPasswordPolicyArgs({
    this.allowUsersToChangePassword,
    this.hardExpiry,
    this.maxPasswordAge,
    this.minimumPasswordLength,
    this.passwordReusePrevention,
    this.requireLowercaseCharacters,
    this.requireNumbers,
    this.requireSymbols,
    this.requireUppercaseCharacters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUsersToChangePassword': ?allowUsersToChangePassword,
      'hardExpiry': ?hardExpiry,
      'maxPasswordAge': ?maxPasswordAge,
      'minimumPasswordLength': ?minimumPasswordLength,
      'passwordReusePrevention': ?passwordReusePrevention,
      'requireLowercaseCharacters': ?requireLowercaseCharacters,
      'requireNumbers': ?requireNumbers,
      'requireSymbols': ?requireSymbols,
      'requireUppercaseCharacters': ?requireUppercaseCharacters,
    };
  }

  factory AccountPasswordPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccountPasswordPolicyArgs(
      allowUsersToChangePassword: map['allowUsersToChangePassword'] == null ? null : ((map['allowUsersToChangePassword'] as bool).input()).input(),
      hardExpiry: map['hardExpiry'] == null ? null : ((map['hardExpiry'] as bool).input()).input(),
      maxPasswordAge: map['maxPasswordAge'] == null ? null : ((map['maxPasswordAge'] as int).input()).input(),
      minimumPasswordLength: map['minimumPasswordLength'] == null ? null : ((map['minimumPasswordLength'] as int).input()).input(),
      passwordReusePrevention: map['passwordReusePrevention'] == null ? null : ((map['passwordReusePrevention'] as int).input()).input(),
      requireLowercaseCharacters: map['requireLowercaseCharacters'] == null ? null : ((map['requireLowercaseCharacters'] as bool).input()).input(),
      requireNumbers: map['requireNumbers'] == null ? null : ((map['requireNumbers'] as bool).input()).input(),
      requireSymbols: map['requireSymbols'] == null ? null : ((map['requireSymbols'] as bool).input()).input(),
      requireUppercaseCharacters: map['requireUppercaseCharacters'] == null ? null : ((map['requireUppercaseCharacters'] as bool).input()).input(),
    );
  }
}

