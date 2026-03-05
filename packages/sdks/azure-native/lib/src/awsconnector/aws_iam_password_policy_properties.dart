// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsIamPasswordPolicy
class AwsIamPasswordPolicyProperties {
  /// &lt;p&gt;Specifies whether IAM users are allowed to change their own password. Gives IAM users permissions to &lt;code&gt;iam:ChangePassword&lt;/code&gt; for only their user and to the &lt;code&gt;iam:GetAccountPasswordPolicy&lt;/code&gt; action. This option does not attach a permissions policy to each user, rather the permissions are applied at the account-level for all users by IAM.&lt;/p&gt;
  final pulumi.Input<bool>? allowUsersToChangePassword;
  /// &lt;p&gt;Indicates whether passwords in the account expire. Returns true if &lt;code&gt;MaxPasswordAge&lt;/code&gt; contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.&lt;/p&gt;
  final pulumi.Input<bool>? expirePasswords;
  /// &lt;p&gt;Specifies whether IAM users are prevented from setting a new password via the Amazon Web Services Management Console after their password has expired. The IAM user cannot access the console until an administrator resets the password. IAM users with &lt;code&gt;iam:ChangePassword&lt;/code&gt; permission and active access keys can reset their own expired console password using the CLI or API.&lt;/p&gt;
  final pulumi.Input<bool>? hardExpiry;
  /// &lt;p&gt;The number of days that an IAM user password is valid.&lt;/p&gt;
  final pulumi.Input<int>? maxPasswordAge;
  /// &lt;p&gt;Minimum length to require for IAM user passwords.&lt;/p&gt;
  final pulumi.Input<int>? minimumPasswordLength;
  /// &lt;p&gt;Specifies the number of previous passwords that IAM users are prevented from reusing.&lt;/p&gt;
  final pulumi.Input<int>? passwordReusePrevention;
  /// &lt;p&gt;Specifies whether IAM user passwords must contain at least one lowercase character (a to z).&lt;/p&gt;
  final pulumi.Input<bool>? requireLowercaseCharacters;
  /// &lt;p&gt;Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).&lt;/p&gt;
  final pulumi.Input<bool>? requireNumbers;
  /// &lt;p&gt;Specifies whether IAM user passwords must contain at least one of the following symbols:&lt;/p&gt; &lt;p&gt;! @ # $ % ^ &amp; * ( ) _ + - = [ ] { } | '&lt;/p&gt;
  final pulumi.Input<bool>? requireSymbols;
  /// &lt;p&gt;Specifies whether IAM user passwords must contain at least one uppercase character (A to Z).&lt;/p&gt;
  final pulumi.Input<bool>? requireUppercaseCharacters;

  /// Creates a new [AwsIamPasswordPolicyProperties].
  /// [allowUsersToChangePassword] &lt;p&gt;Specifies whether IAM users are allowed to change their own password. Gives IAM users permissions to &lt;code&gt;iam:ChangePassword&lt;/code&gt; for only their user and to the &lt;code&gt;iam:GetAccountPasswordPolicy&lt;/code&gt; action. This option does not attach a permissions policy to each user, rather the permissions are applied at the account-level for all users by IAM.&lt;/p&gt;
  /// [expirePasswords] &lt;p&gt;Indicates whether passwords in the account expire. Returns true if &lt;code&gt;MaxPasswordAge&lt;/code&gt; contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.&lt;/p&gt;
  /// [hardExpiry] &lt;p&gt;Specifies whether IAM users are prevented from setting a new password via the Amazon Web Services Management Console after their password has expired. The IAM user cannot access the console until an administrator resets the password. IAM users with &lt;code&gt;iam:ChangePassword&lt;/code&gt; permission and active access keys can reset their own expired console password using the CLI or API.&lt;/p&gt;
  /// [maxPasswordAge] &lt;p&gt;The number of days that an IAM user password is valid.&lt;/p&gt;
  /// [minimumPasswordLength] &lt;p&gt;Minimum length to require for IAM user passwords.&lt;/p&gt;
  /// [passwordReusePrevention] &lt;p&gt;Specifies the number of previous passwords that IAM users are prevented from reusing.&lt;/p&gt;
  /// [requireLowercaseCharacters] &lt;p&gt;Specifies whether IAM user passwords must contain at least one lowercase character (a to z).&lt;/p&gt;
  /// [requireNumbers] &lt;p&gt;Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).&lt;/p&gt;
  /// [requireSymbols] &lt;p&gt;Specifies whether IAM user passwords must contain at least one of the following symbols:&lt;/p&gt; &lt;p&gt;! @ # $ % ^ &amp; * ( ) _ + - = [ ] { } | '&lt;/p&gt;
  /// [requireUppercaseCharacters] &lt;p&gt;Specifies whether IAM user passwords must contain at least one uppercase character (A to Z).&lt;/p&gt;
  AwsIamPasswordPolicyProperties({
    this.allowUsersToChangePassword,
    this.expirePasswords,
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

  factory AwsIamPasswordPolicyProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamPasswordPolicyProperties(
      allowUsersToChangePassword: (() { final guardedValue = map['allowUsersToChangePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expirePasswords: (() { final guardedValue = map['expirePasswords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hardExpiry: (() { final guardedValue = map['hardExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
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

