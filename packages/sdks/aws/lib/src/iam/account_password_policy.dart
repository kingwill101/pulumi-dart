import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_password_policy_args.dart';
import 'account_password_policy_state.dart';

/// &gt; **Note:** There is only a single policy allowed per AWS account. An existing policy will be lost when using this resource as an effect of this limitation.
///
/// Manages Password Policy for the AWS Account.
/// See more about [Account Password Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html)
/// in the official AWS docs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const strict = new aws.iam.AccountPasswordPolicy("strict", {
///     minimumPasswordLength: 8,
///     requireLowercaseCharacters: true,
///     requireNumbers: true,
///     requireUppercaseCharacters: true,
///     requireSymbols: true,
///     allowUsersToChangePassword: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// strict = aws.iam.AccountPasswordPolicy("strict",
///     minimum_password_length=8,
///     require_lowercase_characters=True,
///     require_numbers=True,
///     require_uppercase_characters=True,
///     require_symbols=True,
///     allow_users_to_change_password=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var strict = new Aws.Iam.AccountPasswordPolicy("strict", new()
///     {
///         MinimumPasswordLength = 8,
///         RequireLowercaseCharacters = true,
///         RequireNumbers = true,
///         RequireUppercaseCharacters = true,
///         RequireSymbols = true,
///         AllowUsersToChangePassword = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewAccountPasswordPolicy(ctx, "strict", &iam.AccountPasswordPolicyArgs{
/// 			MinimumPasswordLength:      pulumi.Int(8),
/// 			RequireLowercaseCharacters: pulumi.Bool(true),
/// 			RequireNumbers:             pulumi.Bool(true),
/// 			RequireUppercaseCharacters: pulumi.Bool(true),
/// 			RequireSymbols:             pulumi.Bool(true),
/// 			AllowUsersToChangePassword: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iam_accountpasswordpolicy" "strict" {
///   minimum_password_length        = 8
///   require_lowercase_characters   = true
///   require_numbers                = true
///   require_uppercase_characters   = true
///   require_symbols                = true
///   allow_users_to_change_password = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.AccountPasswordPolicy;
/// import com.pulumi.aws.iam.AccountPasswordPolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var strict = new AccountPasswordPolicy("strict", AccountPasswordPolicyArgs.builder()
///             .minimumPasswordLength(8)
///             .requireLowercaseCharacters(true)
///             .requireNumbers(true)
///             .requireUppercaseCharacters(true)
///             .requireSymbols(true)
///             .allowUsersToChangePassword(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   strict:
///     type: aws:iam:AccountPasswordPolicy
///     properties:
///       minimumPasswordLength: 8
///       requireLowercaseCharacters: true
///       requireNumbers: true
///       requireUppercaseCharacters: true
///       requireSymbols: true
///       allowUsersToChangePassword: true
/// ```
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
  /// Indicates whether passwords in the account expire. Returns `true` if `maxPasswordAge` contains a value greater than `0`. Returns `false` if it is `0` or _not present_.
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

  /// Creates a new [AccountPasswordPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountPasswordPolicy]. {@macro pulumi_iam_account_password_policy_account_password_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    allowUsersToChangePassword = registerOutput<bool?>('allowUsersToChangePassword');
    expirePasswords = registerOutput<bool>('expirePasswords');
    hardExpiry = registerOutput<bool>('hardExpiry');
    maxPasswordAge = registerOutput<int>('maxPasswordAge');
    minimumPasswordLength = registerOutput<int?>('minimumPasswordLength');
    passwordReusePrevention = registerOutput<int>('passwordReusePrevention');
    requireLowercaseCharacters = registerOutput<bool>('requireLowercaseCharacters');
    requireNumbers = registerOutput<bool>('requireNumbers');
    requireSymbols = registerOutput<bool>('requireSymbols');
    requireUppercaseCharacters = registerOutput<bool>('requireUppercaseCharacters');
  }

  /// Gets an existing [AccountPasswordPolicy] resource's state with the given [name] and [id].
  static AccountPasswordPolicy get(
    String name,
    pulumi.Input<String> id, {
    AccountPasswordPolicyState? state,
  }) {
    return AccountPasswordPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountPasswordPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/accountPasswordPolicy:AccountPasswordPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowUsersToChangePassword = registerOutput<bool?>('allowUsersToChangePassword');
    expirePasswords = registerOutput<bool>('expirePasswords');
    hardExpiry = registerOutput<bool>('hardExpiry');
    maxPasswordAge = registerOutput<int>('maxPasswordAge');
    minimumPasswordLength = registerOutput<int?>('minimumPasswordLength');
    passwordReusePrevention = registerOutput<int>('passwordReusePrevention');
    requireLowercaseCharacters = registerOutput<bool>('requireLowercaseCharacters');
    requireNumbers = registerOutput<bool>('requireNumbers');
    requireSymbols = registerOutput<bool>('requireSymbols');
    requireUppercaseCharacters = registerOutput<bool>('requireUppercaseCharacters');
  }
}
