// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountPasswordPolicy resources.
class AccountPasswordPolicyState {
  /// Whether to allow users to change their own password
  final pulumi.Input<bool>? allowUsersToChangePassword;
  /// Indicates whether passwords in the account expire. Returns `true` if `max_password_age` contains a value greater than `0`. Returns `false` if it is `0` or _not present_.
  final pulumi.Input<bool>? expirePasswords;
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

  /// Creates a new [AccountPasswordPolicyState].
  /// [allowUsersToChangePassword] Whether to allow users to change their own password
  /// [expirePasswords] Indicates whether passwords in the account expire. Returns `true` if `max_password_age` contains a value greater than `0`. Returns `false` if it is `0` or _not present_.
  /// [hardExpiry] Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)
  /// [maxPasswordAge] The number of days that an user password is valid.
  /// [minimumPasswordLength] Minimum length to require for user passwords.
  /// [passwordReusePrevention] The number of previous passwords that users are prevented from reusing.
  /// [requireLowercaseCharacters] Whether to require lowercase characters for user passwords.
  /// [requireNumbers] Whether to require numbers for user passwords.
  /// [requireSymbols] Whether to require symbols for user passwords.
  /// [requireUppercaseCharacters] Whether to require uppercase characters for user passwords.
  AccountPasswordPolicyState({
    pulumi.Output<bool>? allowUsersToChangePassword,
    pulumi.Output<bool>? expirePasswords,
    pulumi.Output<bool>? hardExpiry,
    pulumi.Output<int>? maxPasswordAge,
    pulumi.Output<int>? minimumPasswordLength,
    pulumi.Output<int>? passwordReusePrevention,
    pulumi.Output<bool>? requireLowercaseCharacters,
    pulumi.Output<bool>? requireNumbers,
    pulumi.Output<bool>? requireSymbols,
    pulumi.Output<bool>? requireUppercaseCharacters,
  }) :
      allowUsersToChangePassword = pulumi.Input.asOptionalInput<bool>(allowUsersToChangePassword),
      expirePasswords = pulumi.Input.asOptionalInput<bool>(expirePasswords),
      hardExpiry = pulumi.Input.asOptionalInput<bool>(hardExpiry),
      maxPasswordAge = pulumi.Input.asOptionalInput<int>(maxPasswordAge),
      minimumPasswordLength = pulumi.Input.asOptionalInput<int>(minimumPasswordLength),
      passwordReusePrevention = pulumi.Input.asOptionalInput<int>(passwordReusePrevention),
      requireLowercaseCharacters = pulumi.Input.asOptionalInput<bool>(requireLowercaseCharacters),
      requireNumbers = pulumi.Input.asOptionalInput<bool>(requireNumbers),
      requireSymbols = pulumi.Input.asOptionalInput<bool>(requireSymbols),
      requireUppercaseCharacters = pulumi.Input.asOptionalInput<bool>(requireUppercaseCharacters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUsersToChangePassword': ?allowUsersToChangePassword,
      'expirePasswords': ?expirePasswords,
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

  factory AccountPasswordPolicyState.fromMap(Map<String, dynamic> map) {
    return AccountPasswordPolicyState(
      allowUsersToChangePassword: map['allowUsersToChangePassword'] == null ? null : pulumi.Output.create<bool>(map['allowUsersToChangePassword'] as bool),
      expirePasswords: map['expirePasswords'] == null ? null : pulumi.Output.create<bool>(map['expirePasswords'] as bool),
      hardExpiry: map['hardExpiry'] == null ? null : pulumi.Output.create<bool>(map['hardExpiry'] as bool),
      maxPasswordAge: map['maxPasswordAge'] == null ? null : pulumi.Output.create<int>(map['maxPasswordAge'] as int),
      minimumPasswordLength: map['minimumPasswordLength'] == null ? null : pulumi.Output.create<int>(map['minimumPasswordLength'] as int),
      passwordReusePrevention: map['passwordReusePrevention'] == null ? null : pulumi.Output.create<int>(map['passwordReusePrevention'] as int),
      requireLowercaseCharacters: map['requireLowercaseCharacters'] == null ? null : pulumi.Output.create<bool>(map['requireLowercaseCharacters'] as bool),
      requireNumbers: map['requireNumbers'] == null ? null : pulumi.Output.create<bool>(map['requireNumbers'] as bool),
      requireSymbols: map['requireSymbols'] == null ? null : pulumi.Output.create<bool>(map['requireSymbols'] as bool),
      requireUppercaseCharacters: map['requireUppercaseCharacters'] == null ? null : pulumi.Output.create<bool>(map['requireUppercaseCharacters'] as bool),
    );
  }
}

