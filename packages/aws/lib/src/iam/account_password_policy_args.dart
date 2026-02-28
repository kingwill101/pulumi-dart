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
    bool? allowUsersToChangePassword,
    bool? hardExpiry,
    int? maxPasswordAge,
    int? minimumPasswordLength,
    int? passwordReusePrevention,
    bool? requireLowercaseCharacters,
    bool? requireNumbers,
    bool? requireSymbols,
    bool? requireUppercaseCharacters,
  })  : allowUsersToChangePassword =
            pulumi.Input.asOptionalInput<bool>(allowUsersToChangePassword),
        hardExpiry = pulumi.Input.asOptionalInput<bool>(hardExpiry),
        maxPasswordAge = pulumi.Input.asOptionalInput<int>(maxPasswordAge),
        minimumPasswordLength =
            pulumi.Input.asOptionalInput<int>(minimumPasswordLength),
        passwordReusePrevention =
            pulumi.Input.asOptionalInput<int>(passwordReusePrevention),
        requireLowercaseCharacters =
            pulumi.Input.asOptionalInput<bool>(requireLowercaseCharacters),
        requireNumbers = pulumi.Input.asOptionalInput<bool>(requireNumbers),
        requireSymbols = pulumi.Input.asOptionalInput<bool>(requireSymbols),
        requireUppercaseCharacters =
            pulumi.Input.asOptionalInput<bool>(requireUppercaseCharacters);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowUsersToChangePasswordValue = allowUsersToChangePassword;
    if (allowUsersToChangePasswordValue != null) {
      map['allowUsersToChangePassword'] = allowUsersToChangePasswordValue;
    }
    final hardExpiryValue = hardExpiry;
    if (hardExpiryValue != null) {
      map['hardExpiry'] = hardExpiryValue;
    }
    final maxPasswordAgeValue = maxPasswordAge;
    if (maxPasswordAgeValue != null) {
      map['maxPasswordAge'] = maxPasswordAgeValue;
    }
    final minimumPasswordLengthValue = minimumPasswordLength;
    if (minimumPasswordLengthValue != null) {
      map['minimumPasswordLength'] = minimumPasswordLengthValue;
    }
    final passwordReusePreventionValue = passwordReusePrevention;
    if (passwordReusePreventionValue != null) {
      map['passwordReusePrevention'] = passwordReusePreventionValue;
    }
    final requireLowercaseCharactersValue = requireLowercaseCharacters;
    if (requireLowercaseCharactersValue != null) {
      map['requireLowercaseCharacters'] = requireLowercaseCharactersValue;
    }
    final requireNumbersValue = requireNumbers;
    if (requireNumbersValue != null) {
      map['requireNumbers'] = requireNumbersValue;
    }
    final requireSymbolsValue = requireSymbols;
    if (requireSymbolsValue != null) {
      map['requireSymbols'] = requireSymbolsValue;
    }
    final requireUppercaseCharactersValue = requireUppercaseCharacters;
    if (requireUppercaseCharactersValue != null) {
      map['requireUppercaseCharacters'] = requireUppercaseCharactersValue;
    }
    return map;
  }

  factory AccountPasswordPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccountPasswordPolicyArgs(
      allowUsersToChangePassword: map['allowUsersToChangePassword'] == null
          ? null
          : map['allowUsersToChangePassword'] as bool,
      hardExpiry: map['hardExpiry'] == null ? null : map['hardExpiry'] as bool,
      maxPasswordAge:
          map['maxPasswordAge'] == null ? null : map['maxPasswordAge'] as int,
      minimumPasswordLength: map['minimumPasswordLength'] == null
          ? null
          : map['minimumPasswordLength'] as int,
      passwordReusePrevention: map['passwordReusePrevention'] == null
          ? null
          : map['passwordReusePrevention'] as int,
      requireLowercaseCharacters: map['requireLowercaseCharacters'] == null
          ? null
          : map['requireLowercaseCharacters'] as bool,
      requireNumbers:
          map['requireNumbers'] == null ? null : map['requireNumbers'] as bool,
      requireSymbols:
          map['requireSymbols'] == null ? null : map['requireSymbols'] as bool,
      requireUppercaseCharacters: map['requireUppercaseCharacters'] == null
          ? null
          : map['requireUppercaseCharacters'] as bool,
    );
  }
}
