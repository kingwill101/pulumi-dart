// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryPasswordPolicy {
  /// Whether to restrict login after Password Expiration
  final pulumi.Input<bool>? hardExpire;

  /// Number of password retries.
  final pulumi.Input<int>? maxLoginAttempts;

  /// Password validity period.
  final pulumi.Input<int>? maxPasswordAge;

  /// Maximum password length.
  final pulumi.Input<int>? maxPasswordLength;

  /// The minimum number of different characters in a password.
  final pulumi.Input<int>? minPasswordDifferentChars;

  /// Minimum password length.
  final pulumi.Input<int>? minPasswordLength;

  /// Whether the user name is not allowed in the password.
  final pulumi.Input<bool>? passwordNotContainUsername;

  /// Historical password check policy.
  final pulumi.Input<int>? passwordReusePrevention;

  /// Whether lowercase letters are required in the password.
  final pulumi.Input<bool>? requireLowerCaseChars;

  /// Whether numbers are required in the password.
  final pulumi.Input<bool>? requireNumbers;

  /// Whether symbols are required in the password.
  final pulumi.Input<bool>? requireSymbols;

  /// Whether uppercase letters are required in the password.
  final pulumi.Input<bool>? requireUpperCaseChars;

  /// Creates a new [DirectoryPasswordPolicy].
  /// [hardExpire] Whether to restrict login after Password Expiration
  /// [maxLoginAttempts] Number of password retries.
  /// [maxPasswordAge] Password validity period.
  /// [maxPasswordLength] Maximum password length.
  /// [minPasswordDifferentChars] The minimum number of different characters in a password.
  /// [minPasswordLength] Minimum password length.
  /// [passwordNotContainUsername] Whether the user name is not allowed in the password.
  /// [passwordReusePrevention] Historical password check policy.
  /// [requireLowerCaseChars] Whether lowercase letters are required in the password.
  /// [requireNumbers] Whether numbers are required in the password.
  /// [requireSymbols] Whether symbols are required in the password.
  /// [requireUpperCaseChars] Whether uppercase letters are required in the password.
  DirectoryPasswordPolicy({
    this.hardExpire,
    this.maxLoginAttempts,
    this.maxPasswordAge,
    this.maxPasswordLength,
    this.minPasswordDifferentChars,
    this.minPasswordLength,
    this.passwordNotContainUsername,
    this.passwordReusePrevention,
    this.requireLowerCaseChars,
    this.requireNumbers,
    this.requireSymbols,
    this.requireUpperCaseChars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardExpire': ?hardExpire,
      'maxLoginAttempts': ?maxLoginAttempts,
      'maxPasswordAge': ?maxPasswordAge,
      'maxPasswordLength': ?maxPasswordLength,
      'minPasswordDifferentChars': ?minPasswordDifferentChars,
      'minPasswordLength': ?minPasswordLength,
      'passwordNotContainUsername': ?passwordNotContainUsername,
      'passwordReusePrevention': ?passwordReusePrevention,
      'requireLowerCaseChars': ?requireLowerCaseChars,
      'requireNumbers': ?requireNumbers,
      'requireSymbols': ?requireSymbols,
      'requireUpperCaseChars': ?requireUpperCaseChars,
    };
  }

  factory DirectoryPasswordPolicy.fromMap(Map<String, dynamic> map) {
    return DirectoryPasswordPolicy(
      hardExpire: (() {
        final guardedValue = map['hardExpire'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxLoginAttempts: (() {
        final guardedValue = map['maxLoginAttempts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxPasswordAge: (() {
        final guardedValue = map['maxPasswordAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxPasswordLength: (() {
        final guardedValue = map['maxPasswordLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minPasswordDifferentChars: (() {
        final guardedValue = map['minPasswordDifferentChars'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minPasswordLength: (() {
        final guardedValue = map['minPasswordLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      passwordNotContainUsername: (() {
        final guardedValue = map['passwordNotContainUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      passwordReusePrevention: (() {
        final guardedValue = map['passwordReusePrevention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      requireLowerCaseChars: (() {
        final guardedValue = map['requireLowerCaseChars'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requireNumbers: (() {
        final guardedValue = map['requireNumbers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requireSymbols: (() {
        final guardedValue = map['requireSymbols'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requireUpperCaseChars: (() {
        final guardedValue = map['requireUpperCaseChars'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
