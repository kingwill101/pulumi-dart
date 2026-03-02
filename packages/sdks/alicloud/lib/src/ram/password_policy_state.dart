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
      hardExpiry: map['hardExpiry'] == null ? null : (map['hardExpiry']! as bool).input(),
      maxLoginAttemps: map['maxLoginAttemps'] == null ? null : (map['maxLoginAttemps']! as int).input(),
      maxPasswordAge: map['maxPasswordAge'] == null ? null : (map['maxPasswordAge']! as int).input(),
      minimumPasswordDifferentCharacter: map['minimumPasswordDifferentCharacter'] == null ? null : (map['minimumPasswordDifferentCharacter']! as int).input(),
      minimumPasswordLength: map['minimumPasswordLength'] == null ? null : (map['minimumPasswordLength']! as int).input(),
      passwordNotContainUserName: map['passwordNotContainUserName'] == null ? null : (map['passwordNotContainUserName']! as bool).input(),
      passwordReusePrevention: map['passwordReusePrevention'] == null ? null : (map['passwordReusePrevention']! as int).input(),
      requireLowercaseCharacters: map['requireLowercaseCharacters'] == null ? null : (map['requireLowercaseCharacters']! as bool).input(),
      requireNumbers: map['requireNumbers'] == null ? null : (map['requireNumbers']! as bool).input(),
      requireSymbols: map['requireSymbols'] == null ? null : (map['requireSymbols']! as bool).input(),
      requireUppercaseCharacters: map['requireUppercaseCharacters'] == null ? null : (map['requireUppercaseCharacters']! as bool).input(),
    );
  }
}

