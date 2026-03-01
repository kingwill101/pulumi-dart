// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_account_password_policy_account_password_policy_args_doc}
/// The set of arguments for AccountPasswordPolicy.
/// {@endtemplate}
/// {@macro pulumi_ram_account_password_policy_account_password_policy_args_doc}
class AccountPasswordPolicyArgs {
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

  /// Creates a new [AccountPasswordPolicyArgs].
  /// [hardExpiry] Specifies if a password can expire in a hard way. Default to false.
  /// [maxLoginAttempts] Maximum logon attempts with an incorrect password within an hour. Valid value range: [0-32]. Default to 5.
  /// [maxPasswordAge] The number of days after which password expires. A value of 0 indicates that the password never expires. Valid value range: [0-1095]. Default to 0.
  /// [minimumPasswordLength] Minimal required length of password for a user. Valid value range: [8-32]. Default to 12.
  /// [passwordReusePrevention] User is not allowed to use the latest number of passwords specified in this parameter. A value of 0 indicates the password history check policy is disabled. Valid value range: [0-24]. Default to 0.
  /// [requireLowercaseCharacters] Specifies if the occurrence of a lowercase character in the password is mandatory. Default to true.
  /// [requireNumbers] Specifies if the occurrence of a number in the password is mandatory. Default to true.
  /// [requireSymbols] Specifies if the occurrence of a special character in the password is mandatory. Default to true.
  /// [requireUppercaseCharacters] Specifies if the occurrence of an uppercase character in the password is mandatory. Default to true.
  AccountPasswordPolicyArgs({
    pulumi.Output<bool>? hardExpiry,
    pulumi.Output<int>? maxLoginAttempts,
    pulumi.Output<int>? maxPasswordAge,
    pulumi.Output<int>? minimumPasswordLength,
    pulumi.Output<int>? passwordReusePrevention,
    pulumi.Output<bool>? requireLowercaseCharacters,
    pulumi.Output<bool>? requireNumbers,
    pulumi.Output<bool>? requireSymbols,
    pulumi.Output<bool>? requireUppercaseCharacters,
  }) :
      hardExpiry = pulumi.Input.asOptionalInput<bool>(hardExpiry),
      maxLoginAttempts = pulumi.Input.asOptionalInput<int>(maxLoginAttempts),
      maxPasswordAge = pulumi.Input.asOptionalInput<int>(maxPasswordAge),
      minimumPasswordLength = pulumi.Input.asOptionalInput<int>(minimumPasswordLength),
      passwordReusePrevention = pulumi.Input.asOptionalInput<int>(passwordReusePrevention),
      requireLowercaseCharacters = pulumi.Input.asOptionalInput<bool>(requireLowercaseCharacters),
      requireNumbers = pulumi.Input.asOptionalInput<bool>(requireNumbers),
      requireSymbols = pulumi.Input.asOptionalInput<bool>(requireSymbols),
      requireUppercaseCharacters = pulumi.Input.asOptionalInput<bool>(requireUppercaseCharacters);

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

  factory AccountPasswordPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccountPasswordPolicyArgs(
      hardExpiry: map['hardExpiry'] == null ? null : pulumi.Output.create<bool>(map['hardExpiry'] as bool),
      maxLoginAttempts: map['maxLoginAttempts'] == null ? null : pulumi.Output.create<int>(map['maxLoginAttempts'] as int),
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

