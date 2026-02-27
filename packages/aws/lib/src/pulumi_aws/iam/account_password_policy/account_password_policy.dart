import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_password_policy_args.dart';

/// > **Note:** There is only a single policy allowed per AWS account. An existing policy will be lost when using this resource as an effect of this limitation.
///
/// Manages Password Policy for the AWS Account.
/// See more about [Account Password Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html)
/// in the official AWS docs.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Account Password Policy using the word `iam-account-password-policy`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/accountPasswordPolicy:AccountPasswordPolicy strict iam-account-password-policy
/// ```
class AccountPasswordPolicy extends pulumi.CustomResource {
  /// Whether to allow users to change their own password
  late final pulumi.Output<bool?> allowUsersToChangePassword;

  /// Indicates whether passwords in the account expire. Returns `true` if `max_password_age` contains a value greater than `0`. Returns `false` if it is `0` or _not present_.
  late final pulumi.Output<bool> expirePasswords;

  /// Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)
  late final pulumi.Output<bool> hardExpiry;

  /// The number of days that an user password is valid.
  late final pulumi.Output<int> maxPasswordAge;

  /// Minimum length to require for user passwords.
  late final pulumi.Output<int?> minimumPasswordLength;

  /// The number of previous passwords that users are prevented from reusing.
  late final pulumi.Output<int> passwordReusePrevention;

  /// Whether to require lowercase characters for user passwords.
  late final pulumi.Output<bool> requireLowercaseCharacters;

  /// Whether to require numbers for user passwords.
  late final pulumi.Output<bool> requireNumbers;

  /// Whether to require symbols for user passwords.
  late final pulumi.Output<bool> requireSymbols;

  /// Whether to require uppercase characters for user passwords.
  late final pulumi.Output<bool> requireUppercaseCharacters;

  AccountPasswordPolicy(
    String name, {
    AccountPasswordPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/accountPasswordPolicy:AccountPasswordPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowUsersToChangePassword =
        registerOutput<bool?>('allowUsersToChangePassword');
    this.expirePasswords = registerOutput<bool>('expirePasswords');
    this.hardExpiry = registerOutput<bool>('hardExpiry');
    this.maxPasswordAge = registerOutput<int>('maxPasswordAge');
    this.minimumPasswordLength = registerOutput<int?>('minimumPasswordLength');
    this.passwordReusePrevention =
        registerOutput<int>('passwordReusePrevention');
    this.requireLowercaseCharacters =
        registerOutput<bool>('requireLowercaseCharacters');
    this.requireNumbers = registerOutput<bool>('requireNumbers');
    this.requireSymbols = registerOutput<bool>('requireSymbols');
    this.requireUppercaseCharacters =
        registerOutput<bool>('requireUppercaseCharacters');
  }
}
