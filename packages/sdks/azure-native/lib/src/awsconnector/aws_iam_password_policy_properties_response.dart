// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsIamPasswordPolicy
class AwsIamPasswordPolicyPropertiesResponse {
  /// <p>Specifies whether IAM users are allowed to change their own password. Gives IAM users permissions to <code>iam:ChangePassword</code> for only their user and to the <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a permissions policy to each user, rather the permissions are applied at the account-level for all users by IAM.</p>
  final bool? allowUsersToChangePassword;
  /// <p>Indicates whether passwords in the account expire. Returns true if <code>MaxPasswordAge</code> contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.</p>
  final bool? expirePasswords;
  /// <p>Specifies whether IAM users are prevented from setting a new password via the Amazon Web Services Management Console after their password has expired. The IAM user cannot access the console until an administrator resets the password. IAM users with <code>iam:ChangePassword</code> permission and active access keys can reset their own expired console password using the CLI or API.</p>
  final bool? hardExpiry;
  /// <p>The number of days that an IAM user password is valid.</p>
  final int? maxPasswordAge;
  /// <p>Minimum length to require for IAM user passwords.</p>
  final int? minimumPasswordLength;
  /// <p>Specifies the number of previous passwords that IAM users are prevented from reusing.</p>
  final int? passwordReusePrevention;
  /// <p>Specifies whether IAM user passwords must contain at least one lowercase character (a to z).</p>
  final bool? requireLowercaseCharacters;
  /// <p>Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).</p>
  final bool? requireNumbers;
  /// <p>Specifies whether IAM user passwords must contain at least one of the following symbols:</p> <p>! @ # $ % ^ &amp; * ( ) _ + - = [ ] { } | '</p>
  final bool? requireSymbols;
  /// <p>Specifies whether IAM user passwords must contain at least one uppercase character (A to Z).</p>
  final bool? requireUppercaseCharacters;

  /// Creates a new [AwsIamPasswordPolicyPropertiesResponse].
  /// [allowUsersToChangePassword] <p>Specifies whether IAM users are allowed to change their own password. Gives IAM users permissions to <code>iam:ChangePassword</code> for only their user and to the <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a permissions policy to each user, rather the permissions are applied at the account-level for all users by IAM.</p>
  /// [expirePasswords] <p>Indicates whether passwords in the account expire. Returns true if <code>MaxPasswordAge</code> contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.</p>
  /// [hardExpiry] <p>Specifies whether IAM users are prevented from setting a new password via the Amazon Web Services Management Console after their password has expired. The IAM user cannot access the console until an administrator resets the password. IAM users with <code>iam:ChangePassword</code> permission and active access keys can reset their own expired console password using the CLI or API.</p>
  /// [maxPasswordAge] <p>The number of days that an IAM user password is valid.</p>
  /// [minimumPasswordLength] <p>Minimum length to require for IAM user passwords.</p>
  /// [passwordReusePrevention] <p>Specifies the number of previous passwords that IAM users are prevented from reusing.</p>
  /// [requireLowercaseCharacters] <p>Specifies whether IAM user passwords must contain at least one lowercase character (a to z).</p>
  /// [requireNumbers] <p>Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).</p>
  /// [requireSymbols] <p>Specifies whether IAM user passwords must contain at least one of the following symbols:</p> <p>! @ # $ % ^ &amp; * ( ) _ + - = [ ] { } | '</p>
  /// [requireUppercaseCharacters] <p>Specifies whether IAM user passwords must contain at least one uppercase character (A to Z).</p>
  AwsIamPasswordPolicyPropertiesResponse({
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

  factory AwsIamPasswordPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsIamPasswordPolicyPropertiesResponse(
      allowUsersToChangePassword: map['allowUsersToChangePassword'] == null ? null : map['allowUsersToChangePassword'] as bool,
      expirePasswords: map['expirePasswords'] == null ? null : map['expirePasswords'] as bool,
      hardExpiry: map['hardExpiry'] == null ? null : map['hardExpiry'] as bool,
      maxPasswordAge: map['maxPasswordAge'] == null ? null : map['maxPasswordAge'] as int,
      minimumPasswordLength: map['minimumPasswordLength'] == null ? null : map['minimumPasswordLength'] as int,
      passwordReusePrevention: map['passwordReusePrevention'] == null ? null : map['passwordReusePrevention'] as int,
      requireLowercaseCharacters: map['requireLowercaseCharacters'] == null ? null : map['requireLowercaseCharacters'] as bool,
      requireNumbers: map['requireNumbers'] == null ? null : map['requireNumbers'] as bool,
      requireSymbols: map['requireSymbols'] == null ? null : map['requireSymbols'] as bool,
      requireUppercaseCharacters: map['requireUppercaseCharacters'] == null ? null : map['requireUppercaseCharacters'] as bool,
    );
  }
}

