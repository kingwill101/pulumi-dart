import 'package:pulumi/pulumi.dart';
import 'account_password_policy_args.dart';

/// > **Note:** There is only a single policy allowed per AWS account. An existing policy will be lost when using this resource as an effect of this limitation.
///
/// Manages Password Policy for the AWS Account.
/// See more about [Account Password Policy](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_account-policy.html)
/// in the official AWS docs.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const strict = new aws.iam.AccountPasswordPolicy("strict", {
/// minimumPasswordLength: 8,
/// requireLowercaseCharacters: true,
/// requireNumbers: true,
/// requireUppercaseCharacters: true,
/// requireSymbols: true,
/// allowUsersToChangePassword: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// strict = aws.iam.AccountPasswordPolicy("strict",
/// minimum_password_length=8,
/// require_lowercase_characters=True,
/// require_numbers=True,
/// require_uppercase_characters=True,
/// require_symbols=True,
/// allow_users_to_change_password=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var strict = new Aws.Iam.AccountPasswordPolicy("strict", new()
/// {
/// MinimumPasswordLength = 8,
/// RequireLowercaseCharacters = true,
/// RequireNumbers = true,
/// RequireUppercaseCharacters = true,
/// RequireSymbols = true,
/// AllowUsersToChangePassword = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewAccountPasswordPolicy(ctx, "strict", &iam.AccountPasswordPolicyArgs{
/// MinimumPasswordLength:      pulumi.Int(8),
/// RequireLowercaseCharacters: pulumi.Bool(true),
/// RequireNumbers:             pulumi.Bool(true),
/// RequireUppercaseCharacters: pulumi.Bool(true),
/// RequireSymbols:             pulumi.Bool(true),
/// AllowUsersToChangePassword: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var strict = new AccountPasswordPolicy("strict", AccountPasswordPolicyArgs.builder()
/// .minimumPasswordLength(8)
/// .requireLowercaseCharacters(true)
/// .requireNumbers(true)
/// .requireUppercaseCharacters(true)
/// .requireSymbols(true)
/// .allowUsersToChangePassword(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// strict:
/// type: aws:iam:AccountPasswordPolicy
/// properties:
/// minimumPasswordLength: 8
/// requireLowercaseCharacters: true
/// requireNumbers: true
/// requireUppercaseCharacters: true
/// requireSymbols: true
/// allowUsersToChangePassword: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM Account Password Policy using the word `iam-account-password-policy`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/accountPasswordPolicy:AccountPasswordPolicy strict iam-account-password-policy
/// ```
class AccountPasswordPolicy extends CustomResource {
  /// Whether to allow users to change their own password
  late final Output<bool?> allowUsersToChangePassword;

  /// Indicates whether passwords in the account expire. Returns <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if <span pulumi-lang-nodejs="`maxPasswordAge`" pulumi-lang-dotnet="`MaxPasswordAge`" pulumi-lang-go="`maxPasswordAge`" pulumi-lang-python="`max_password_age`" pulumi-lang-yaml="`maxPasswordAge`" pulumi-lang-java="`maxPasswordAge`">`max_password_age`</span> contains a value greater than <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Returns <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if it is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> or _not present_.
  late final Output<bool> expirePasswords;

  /// Whether users are prevented from setting a new password after their password has expired (i.e., require administrator reset)
  late final Output<bool> hardExpiry;

  /// The number of days that an user password is valid.
  late final Output<int> maxPasswordAge;

  /// Minimum length to require for user passwords.
  late final Output<int?> minimumPasswordLength;

  /// The number of previous passwords that users are prevented from reusing.
  late final Output<int> passwordReusePrevention;

  /// Whether to require lowercase characters for user passwords.
  late final Output<bool> requireLowercaseCharacters;

  /// Whether to require numbers for user passwords.
  late final Output<bool> requireNumbers;

  /// Whether to require symbols for user passwords.
  late final Output<bool> requireSymbols;

  /// Whether to require uppercase characters for user passwords.
  late final Output<bool> requireUppercaseCharacters;

  AccountPasswordPolicy(
    String name, {
    AccountPasswordPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/accountPasswordPolicy:AccountPasswordPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowUsersToChangePassword = Output.createUnknown<bool?>();
    this.expirePasswords = Output.createUnknown<bool>();
    this.hardExpiry = Output.createUnknown<bool>();
    this.maxPasswordAge = Output.createUnknown<int>();
    this.minimumPasswordLength = Output.createUnknown<int?>();
    this.passwordReusePrevention = Output.createUnknown<int>();
    this.requireLowercaseCharacters = Output.createUnknown<bool>();
    this.requireNumbers = Output.createUnknown<bool>();
    this.requireSymbols = Output.createUnknown<bool>();
    this.requireUppercaseCharacters = Output.createUnknown<bool>();
  }
}
