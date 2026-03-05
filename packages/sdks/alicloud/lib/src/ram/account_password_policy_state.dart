// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountPasswordPolicy resources.
class AccountPasswordPolicyState {
  /// Specifies if a password can expire in a hard way. Default to false.
  final pulumi.Input<bool>? hardExpiry;
  /// Maximum logon attempts with an incorrect password within an hour. Valid value range: [0-32]. Default to 5.
  final pulumi.Input<int>? maxLoginAttempts;
  /// The number of days after which password expires. A value of 0 indicates that the password never expires. Valid value range: [0-1095]. Default to 0.
  final pulumi.Input<int>? maxPasswordAge;
  /// Minimal required length of password for a user. Valid value range: [8-32]. Default to 12.
  final pulumi.Input<int>? minimumPasswordLength;
  /// User is not allowed to use the latest number of passwords specified in this parameter. A value of 0 indicates the password history check policy is disabled. Valid value range: [0-24]. Default to 0.
  final pulumi.Input<int>? passwordReusePrevention;
  /// Specifies if the occurrence of a lowercase character in the password is mandatory. Default to true.
  final pulumi.Input<bool>? requireLowercaseCharacters;
  /// Specifies if the occurrence of a number in the password is mandatory. Default to true.
  final pulumi.Input<bool>? requireNumbers;
  /// Specifies if the occurrence of a special character in the password is mandatory. Default to true.
  final pulumi.Input<bool>? requireSymbols;
  /// Specifies if the occurrence of an uppercase character in the password is mandatory. Default to true.
  final pulumi.Input<bool>? requireUppercaseCharacters;

  /// Creates a new [AccountPasswordPolicyState].
  /// [hardExpiry] Specifies if a password can expire in a hard way. Default to false.
  /// [maxLoginAttempts] Maximum logon attempts with an incorrect password within an hour. Valid value range: [0-32]. Default to 5.
  /// [maxPasswordAge] The number of days after which password expires. A value of 0 indicates that the password never expires. Valid value range: [0-1095]. Default to 0.
  /// [minimumPasswordLength] Minimal required length of password for a user. Valid value range: [8-32]. Default to 12.
  /// [passwordReusePrevention] User is not allowed to use the latest number of passwords specified in this parameter. A value of 0 indicates the password history check policy is disabled. Valid value range: [0-24]. Default to 0.
  /// [requireLowercaseCharacters] Specifies if the occurrence of a lowercase character in the password is mandatory. Default to true.
  /// [requireNumbers] Specifies if the occurrence of a number in the password is mandatory. Default to true.
  /// [requireSymbols] Specifies if the occurrence of a special character in the password is mandatory. Default to true.
  /// [requireUppercaseCharacters] Specifies if the occurrence of an uppercase character in the password is mandatory. Default to true.
  AccountPasswordPolicyState({
    this.hardExpiry,
    this.maxLoginAttempts,
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
      'hardExpiry': ?hardExpiry,
      'maxLoginAttempts': ?maxLoginAttempts,
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
      hardExpiry: (() { final guardedValue = map['hardExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxLoginAttempts: (() { final guardedValue = map['maxLoginAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPasswordAge: (() { final guardedValue = map['maxPasswordAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumPasswordLength: (() { final guardedValue = map['minimumPasswordLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      passwordReusePrevention: (() { final guardedValue = map['passwordReusePrevention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requireLowercaseCharacters: (() { final guardedValue = map['requireLowercaseCharacters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireNumbers: (() { final guardedValue = map['requireNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireSymbols: (() { final guardedValue = map['requireSymbols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireUppercaseCharacters: (() { final guardedValue = map['requireUppercaseCharacters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

