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
    pulumi.Output<bool>? hardExpiry,
    pulumi.Output<int>? maxLoginAttemps,
    pulumi.Output<int>? maxPasswordAge,
    pulumi.Output<int>? minimumPasswordDifferentCharacter,
    pulumi.Output<int>? minimumPasswordLength,
    pulumi.Output<bool>? passwordNotContainUserName,
    pulumi.Output<int>? passwordReusePrevention,
    pulumi.Output<bool>? requireLowercaseCharacters,
    pulumi.Output<bool>? requireNumbers,
    pulumi.Output<bool>? requireSymbols,
    pulumi.Output<bool>? requireUppercaseCharacters,
  }) :
      hardExpiry = pulumi.Input.asOptionalInput<bool>(hardExpiry),
      maxLoginAttemps = pulumi.Input.asOptionalInput<int>(maxLoginAttemps),
      maxPasswordAge = pulumi.Input.asOptionalInput<int>(maxPasswordAge),
      minimumPasswordDifferentCharacter = pulumi.Input.asOptionalInput<int>(minimumPasswordDifferentCharacter),
      minimumPasswordLength = pulumi.Input.asOptionalInput<int>(minimumPasswordLength),
      passwordNotContainUserName = pulumi.Input.asOptionalInput<bool>(passwordNotContainUserName),
      passwordReusePrevention = pulumi.Input.asOptionalInput<int>(passwordReusePrevention),
      requireLowercaseCharacters = pulumi.Input.asOptionalInput<bool>(requireLowercaseCharacters),
      requireNumbers = pulumi.Input.asOptionalInput<bool>(requireNumbers),
      requireSymbols = pulumi.Input.asOptionalInput<bool>(requireSymbols),
      requireUppercaseCharacters = pulumi.Input.asOptionalInput<bool>(requireUppercaseCharacters);

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
      hardExpiry: map['hardExpiry'] == null ? null : pulumi.Output.create<bool>(map['hardExpiry'] as bool),
      maxLoginAttemps: map['maxLoginAttemps'] == null ? null : pulumi.Output.create<int>(map['maxLoginAttemps'] as int),
      maxPasswordAge: map['maxPasswordAge'] == null ? null : pulumi.Output.create<int>(map['maxPasswordAge'] as int),
      minimumPasswordDifferentCharacter: map['minimumPasswordDifferentCharacter'] == null ? null : pulumi.Output.create<int>(map['minimumPasswordDifferentCharacter'] as int),
      minimumPasswordLength: map['minimumPasswordLength'] == null ? null : pulumi.Output.create<int>(map['minimumPasswordLength'] as int),
      passwordNotContainUserName: map['passwordNotContainUserName'] == null ? null : pulumi.Output.create<bool>(map['passwordNotContainUserName'] as bool),
      passwordReusePrevention: map['passwordReusePrevention'] == null ? null : pulumi.Output.create<int>(map['passwordReusePrevention'] as int),
      requireLowercaseCharacters: map['requireLowercaseCharacters'] == null ? null : pulumi.Output.create<bool>(map['requireLowercaseCharacters'] as bool),
      requireNumbers: map['requireNumbers'] == null ? null : pulumi.Output.create<bool>(map['requireNumbers'] as bool),
      requireSymbols: map['requireSymbols'] == null ? null : pulumi.Output.create<bool>(map['requireSymbols'] as bool),
      requireUppercaseCharacters: map['requireUppercaseCharacters'] == null ? null : pulumi.Output.create<bool>(map['requireUppercaseCharacters'] as bool),
    );
  }
}

