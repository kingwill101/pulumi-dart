import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_password_policy_args.dart';
import 'account_password_policy_state.dart';

/// ## Example Usage
///
/// Empty resource sets defaults values for every property.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.ram.AccountPasswordPolicy("default", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ram.AccountPasswordPolicy("default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ram.AccountPasswordPolicy("default");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ram.NewAccountPasswordPolicy(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ram.AccountPasswordPolicy;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var default_ = new AccountPasswordPolicy("default");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ram:AccountPasswordPolicy
/// ```
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const corporate = new alicloud.ram.AccountPasswordPolicy("corporate", {
///     minimumPasswordLength: 9,
///     requireLowercaseCharacters: false,
///     requireUppercaseCharacters: false,
///     requireNumbers: false,
///     requireSymbols: false,
///     hardExpiry: true,
///     maxPasswordAge: 12,
///     passwordReusePrevention: 5,
///     maxLoginAttempts: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// corporate = alicloud.ram.AccountPasswordPolicy("corporate",
///     minimum_password_length=9,
///     require_lowercase_characters=False,
///     require_uppercase_characters=False,
///     require_numbers=False,
///     require_symbols=False,
///     hard_expiry=True,
///     max_password_age=12,
///     password_reuse_prevention=5,
///     max_login_attempts=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var corporate = new AliCloud.Ram.AccountPasswordPolicy("corporate", new()
///     {
///         MinimumPasswordLength = 9,
///         RequireLowercaseCharacters = false,
///         RequireUppercaseCharacters = false,
///         RequireNumbers = false,
///         RequireSymbols = false,
///         HardExpiry = true,
///         MaxPasswordAge = 12,
///         PasswordReusePrevention = 5,
///         MaxLoginAttempts = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ram.NewAccountPasswordPolicy(ctx, "corporate", &ram.AccountPasswordPolicyArgs{
/// 			MinimumPasswordLength:      pulumi.Int(9),
/// 			RequireLowercaseCharacters: pulumi.Bool(false),
/// 			RequireUppercaseCharacters: pulumi.Bool(false),
/// 			RequireNumbers:             pulumi.Bool(false),
/// 			RequireSymbols:             pulumi.Bool(false),
/// 			HardExpiry:                 pulumi.Bool(true),
/// 			MaxPasswordAge:             pulumi.Int(12),
/// 			PasswordReusePrevention:    pulumi.Int(5),
/// 			MaxLoginAttempts:           pulumi.Int(3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ram.AccountPasswordPolicy;
/// import com.pulumi.alicloud.ram.AccountPasswordPolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var corporate = new AccountPasswordPolicy("corporate", AccountPasswordPolicyArgs.builder()
///             .minimumPasswordLength(9)
///             .requireLowercaseCharacters(false)
///             .requireUppercaseCharacters(false)
///             .requireNumbers(false)
///             .requireSymbols(false)
///             .hardExpiry(true)
///             .maxPasswordAge(12)
///             .passwordReusePrevention(5)
///             .maxLoginAttempts(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   corporate:
///     type: alicloud:ram:AccountPasswordPolicy
///     properties:
///       minimumPasswordLength: 9
///       requireLowercaseCharacters: false
///       requireUppercaseCharacters: false
///       requireNumbers: false
///       requireSymbols: false
///       hardExpiry: true
///       maxPasswordAge: 12
///       passwordReusePrevention: 5
///       maxLoginAttempts: 3
/// ```
///
/// For not specified values sets defaults.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM account password policy can be imported using the `id`, e.g.
///
/// bash
///
/// ```sh
/// $ pulumi import alicloud:ram/accountPasswordPolicy:AccountPasswordPolicy example ram-account-password-policy
/// ```
class AccountPasswordPolicy extends pulumi.CustomResource {
  /// Specifies if a password can expire in a hard way. Default to false.
  late final pulumi.Output<bool?> hardExpiry;
  /// Maximum logon attempts with an incorrect password within an hour. Valid value range: [0-32]. Default to 5.
  late final pulumi.Output<int?> maxLoginAttempts;
  /// The number of days after which password expires. A value of 0 indicates that the password never expires. Valid value range: [0-1095]. Default to 0.
  late final pulumi.Output<int?> maxPasswordAge;
  /// Minimal required length of password for a user. Valid value range: [8-32]. Default to 12.
  late final pulumi.Output<int?> minimumPasswordLength;
  /// User is not allowed to use the latest number of passwords specified in this parameter. A value of 0 indicates the password history check policy is disabled. Valid value range: [0-24]. Default to 0.
  late final pulumi.Output<int?> passwordReusePrevention;
  /// Specifies if the occurrence of a lowercase character in the password is mandatory. Default to true.
  late final pulumi.Output<bool?> requireLowercaseCharacters;
  /// Specifies if the occurrence of a number in the password is mandatory. Default to true.
  late final pulumi.Output<bool?> requireNumbers;
  /// Specifies if the occurrence of a special character in the password is mandatory. Default to true.
  late final pulumi.Output<bool?> requireSymbols;
  /// Specifies if the occurrence of an uppercase character in the password is mandatory. Default to true.
  late final pulumi.Output<bool?> requireUppercaseCharacters;

  /// Creates a new [AccountPasswordPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountPasswordPolicy]. {@macro pulumi_ram_account_password_policy_account_password_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountPasswordPolicy(
    String name, {
    AccountPasswordPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/accountPasswordPolicy:AccountPasswordPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hardExpiry = registerOutput<bool?>('hardExpiry');
    maxLoginAttempts = registerOutput<int?>('maxLoginAttempts');
    maxPasswordAge = registerOutput<int?>('maxPasswordAge');
    minimumPasswordLength = registerOutput<int?>('minimumPasswordLength');
    passwordReusePrevention = registerOutput<int?>('passwordReusePrevention');
    requireLowercaseCharacters = registerOutput<bool?>('requireLowercaseCharacters');
    requireNumbers = registerOutput<bool?>('requireNumbers');
    requireSymbols = registerOutput<bool?>('requireSymbols');
    requireUppercaseCharacters = registerOutput<bool?>('requireUppercaseCharacters');
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
          'alicloud:ram/accountPasswordPolicy:AccountPasswordPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hardExpiry = registerOutput<bool?>('hardExpiry');
    maxLoginAttempts = registerOutput<int?>('maxLoginAttempts');
    maxPasswordAge = registerOutput<int?>('maxPasswordAge');
    minimumPasswordLength = registerOutput<int?>('minimumPasswordLength');
    passwordReusePrevention = registerOutput<int?>('passwordReusePrevention');
    requireLowercaseCharacters = registerOutput<bool?>('requireLowercaseCharacters');
    requireNumbers = registerOutput<bool?>('requireNumbers');
    requireSymbols = registerOutput<bool?>('requireSymbols');
    requireUppercaseCharacters = registerOutput<bool?>('requireUppercaseCharacters');
  }
}
