// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PasswordPolicy resources.
class PasswordPolicyState {
  /// Whether to restrict logon after the password expires. Value:
  /// - true: After the password expires, you cannot log in to the console. You must reset the password of the RAM user through the main account or a RAM user with administrator permissions to log on normally.
  /// - false (default): After the password expires, the RAM user can change the password and log on normally.
  final pulumi.Input<bool>? hardExpiry;

  /// Password retry constraint. After entering the wrong password continuously for the set number of times, the account will be locked for one hour.
  /// Value range: 0~32.
  /// Default value: 0, which means that the password retry constraint is not enabled.
  final pulumi.Input<int>? maxLoginAttemps;

  /// Password validity period.
  /// Value range: 0~1095. Unit: days.
  /// Default value: 0, which means never expires.
  final pulumi.Input<int>? maxPasswordAge;

  /// The minimum number of unique characters in the password.
  /// Valid values: 0 to 8.
  /// The default value is 0, which indicates that no limits are imposed on the number of unique characters in a password.
  final pulumi.Input<int>? minimumPasswordDifferentCharacter;

  /// The minimum number of characters in the password.
  /// Valid values: 8 to 32. Default value: 8.
  final pulumi.Input<int>? minimumPasswordLength;

  /// Whether the user name is not allowed in the password. Value:
  /// - true: The password cannot contain the user name.
  /// - false (default): The user name can be included in the password.
  final pulumi.Input<bool>? passwordNotContainUserName;

  /// Historical password check policy.
  /// Do not use the previous N Passwords. The value range of N is 0 to 24.
  /// Default value: 0, indicating that the historical password check policy is not enabled.
  final pulumi.Input<int>? passwordReusePrevention;

  /// Specifies whether the password must contain lowercase letters. Valid values:
  /// - true
  /// - false (default)
  final pulumi.Input<bool>? requireLowercaseCharacters;

  /// Specifies whether the password must contain digits. Valid values:
  /// - true
  /// - false (default)
  final pulumi.Input<bool>? requireNumbers;

  /// Specifies whether the password must contain special characters. Valid values:
  /// - true
  /// - false (default)
  final pulumi.Input<bool>? requireSymbols;

  /// Specifies whether the password must contain uppercase letters. Valid values:
  /// - true
  /// - false (default)
  final pulumi.Input<bool>? requireUppercaseCharacters;

  /// Creates a new [PasswordPolicyState].
  /// [hardExpiry] Whether to restrict logon after the password expires. Value:
  /// [maxLoginAttemps] Password retry constraint. After entering the wrong password continuously for the set number of times, the account will be locked for one hour.
  /// [maxPasswordAge] Password validity period.
  /// [minimumPasswordDifferentCharacter] The minimum number of unique characters in the password.
  /// [minimumPasswordLength] The minimum number of characters in the password.
  /// [passwordNotContainUserName] Whether the user name is not allowed in the password. Value:
  /// [passwordReusePrevention] Historical password check policy.
  /// [requireLowercaseCharacters] Specifies whether the password must contain lowercase letters. Valid values:
  /// [requireNumbers] Specifies whether the password must contain digits. Valid values:
  /// [requireSymbols] Specifies whether the password must contain special characters. Valid values:
  /// [requireUppercaseCharacters] Specifies whether the password must contain uppercase letters. Valid values:
  PasswordPolicyState({
    this.hardExpiry,
    this.maxLoginAttemps,
    this.maxPasswordAge,
    this.minimumPasswordDifferentCharacter,
    this.minimumPasswordLength,
    this.passwordNotContainUserName,
    this.passwordReusePrevention,
    this.requireLowercaseCharacters,
    this.requireNumbers,
    this.requireSymbols,
    this.requireUppercaseCharacters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardExpiry': ?hardExpiry,
      'maxLoginAttemps': ?maxLoginAttemps,
      'maxPasswordAge': ?maxPasswordAge,
      'minimumPasswordDifferentCharacter': ?minimumPasswordDifferentCharacter,
      'minimumPasswordLength': ?minimumPasswordLength,
      'passwordNotContainUserName': ?passwordNotContainUserName,
      'passwordReusePrevention': ?passwordReusePrevention,
      'requireLowercaseCharacters': ?requireLowercaseCharacters,
      'requireNumbers': ?requireNumbers,
      'requireSymbols': ?requireSymbols,
      'requireUppercaseCharacters': ?requireUppercaseCharacters,
    };
  }

  factory PasswordPolicyState.fromMap(Map<String, dynamic> map) {
    return PasswordPolicyState(
      hardExpiry: (() {
        final guardedValue = map['hardExpiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxLoginAttemps: (() {
        final guardedValue = map['maxLoginAttemps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxPasswordAge: (() {
        final guardedValue = map['maxPasswordAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumPasswordDifferentCharacter: (() {
        final guardedValue = map['minimumPasswordDifferentCharacter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimumPasswordLength: (() {
        final guardedValue = map['minimumPasswordLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      passwordNotContainUserName: (() {
        final guardedValue = map['passwordNotContainUserName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      passwordReusePrevention: (() {
        final guardedValue = map['passwordReusePrevention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      requireLowercaseCharacters: (() {
        final guardedValue = map['requireLowercaseCharacters'];
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
      requireUppercaseCharacters: (() {
        final guardedValue = map['requireUppercaseCharacters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
