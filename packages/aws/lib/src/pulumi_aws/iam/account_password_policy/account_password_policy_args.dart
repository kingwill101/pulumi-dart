// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AccountPasswordPolicy.
class AccountPasswordPolicyArgs {
  /// Whether to allow users to change their own password
  final Input<bool>? allowUsersToChangePassword;

  /// Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)
  final Input<bool>? hardExpiry;

  /// The number of days that an user password is valid.
  final Input<int>? maxPasswordAge;

  /// Minimum length to require for user passwords.
  final Input<int>? minimumPasswordLength;

  /// The number of previous passwords that users are prevented from reusing.
  final Input<int>? passwordReusePrevention;

  /// Whether to require lowercase characters for user passwords.
  final Input<bool>? requireLowercaseCharacters;

  /// Whether to require numbers for user passwords.
  final Input<bool>? requireNumbers;

  /// Whether to require symbols for user passwords.
  final Input<bool>? requireSymbols;

  /// Whether to require uppercase characters for user passwords.
  final Input<bool>? requireUppercaseCharacters;

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
          Input.asOptionalInput<bool>(map['allowUsersToChangePassword']),
      hardExpiry: Input.asOptionalInput<bool>(map['hardExpiry']),
      maxPasswordAge: Input.asOptionalInput<int>(map['maxPasswordAge']),
      minimumPasswordLength:
          Input.asOptionalInput<int>(map['minimumPasswordLength']),
      passwordReusePrevention:
          Input.asOptionalInput<int>(map['passwordReusePrevention']),
      requireLowercaseCharacters:
          Input.asOptionalInput<bool>(map['requireLowercaseCharacters']),
      requireNumbers: Input.asOptionalInput<bool>(map['requireNumbers']),
      requireSymbols: Input.asOptionalInput<bool>(map['requireSymbols']),
      requireUppercaseCharacters:
          Input.asOptionalInput<bool>(map['requireUppercaseCharacters']),
    );
  }
}
