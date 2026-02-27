// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountPasswordPolicy.
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
      allowUsersToChangePassword:
          pulumi.Input.asOptionalInput<bool>(map['allowUsersToChangePassword']),
      hardExpiry: pulumi.Input.asOptionalInput<bool>(map['hardExpiry']),
      maxPasswordAge: pulumi.Input.asOptionalInput<int>(map['maxPasswordAge']),
      minimumPasswordLength:
          pulumi.Input.asOptionalInput<int>(map['minimumPasswordLength']),
      passwordReusePrevention:
          pulumi.Input.asOptionalInput<int>(map['passwordReusePrevention']),
      requireLowercaseCharacters:
          pulumi.Input.asOptionalInput<bool>(map['requireLowercaseCharacters']),
      requireNumbers: pulumi.Input.asOptionalInput<bool>(map['requireNumbers']),
      requireSymbols: pulumi.Input.asOptionalInput<bool>(map['requireSymbols']),
      requireUppercaseCharacters:
          pulumi.Input.asOptionalInput<bool>(map['requireUppercaseCharacters']),
    );
  }
}
