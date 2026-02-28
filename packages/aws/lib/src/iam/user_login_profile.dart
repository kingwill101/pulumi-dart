import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_login_profile_args.dart';

/// Manages an IAM User Login Profile with limited support for password creation during this provider resource creation. Uses PGP to encrypt the password for safe transport to the user. PGP keys can be obtained from Keybase.
///
/// > To reset an IAM User login password via this provider, you can use delete and recreate this resource or change any of the arguments.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.User("example", {
///     name: "example",
///     path: "/",
///     forceDestroy: true,
/// });
/// const exampleUserLoginProfile = new aws.iam.UserLoginProfile("example", {
///     user: example.name,
///     pgpKey: "keybase:some_person_that_exists",
/// });
/// export const password = exampleUserLoginProfile.encryptedPassword;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.User("example",
///     name="example",
///     path="/",
///     force_destroy=True)
/// example_user_login_profile = aws.iam.UserLoginProfile("example",
///     user=example.name,
///     pgp_key="keybase:some_person_that_exists")
/// pulumi.export("password", example_user_login_profile.encrypted_password)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.User("example", new()
///     {
///         Name = "example",
///         Path = "/",
///         ForceDestroy = true,
///     });
///
///     var exampleUserLoginProfile = new Aws.Iam.UserLoginProfile("example", new()
///     {
///         User = example.Name,
///         PgpKey = "keybase:some_person_that_exists",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["password"] = exampleUserLoginProfile.EncryptedPassword,
///     };
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
/// 		example, err := iam.NewUser(ctx, "example", &iam.UserArgs{
/// 			Name:         pulumi.String("example"),
/// 			Path:         pulumi.String("/"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserLoginProfile, err := iam.NewUserLoginProfile(ctx, "example", &iam.UserLoginProfileArgs{
/// 			User:   example.Name,
/// 			PgpKey: pulumi.String("keybase:some_person_that_exists"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("password", exampleUserLoginProfile.EncryptedPassword)
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
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.UserLoginProfile;
/// import com.pulumi.aws.iam.UserLoginProfileArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .name("example")
///             .path("/")
///             .forceDestroy(true)
///             .build());
///
///         var exampleUserLoginProfile = new UserLoginProfile("exampleUserLoginProfile", UserLoginProfileArgs.builder()
///             .user(example.name())
///             .pgpKey("keybase:some_person_that_exists")
///             .build());
///
///         ctx.export("password", exampleUserLoginProfile.encryptedPassword());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:User
///     properties:
///       name: example
///       path: /
///       forceDestroy: true
///   exampleUserLoginProfile:
///     type: aws:iam:UserLoginProfile
///     name: example
///     properties:
///       user: ${example.name}
///       pgpKey: keybase:some_person_that_exists
/// outputs:
///   password: ${exampleUserLoginProfile.encryptedPassword}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM User Login Profiles without password information via the IAM User name. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userLoginProfile:UserLoginProfile example myusername
/// ```
///
/// Since Pulumi has no method to read the PGP or password information during import, use the resource options `ignore_changes` argument to ignore them (unless you want to recreate a password). For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.UserLoginProfile("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.UserLoginProfile("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.UserLoginProfile("example");
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
/// 		_, err := iam.NewUserLoginProfile(ctx, "example", nil)
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
/// import com.pulumi.aws.iam.UserLoginProfile;
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
///         var example = new UserLoginProfile("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:UserLoginProfile
/// ```
class UserLoginProfile extends pulumi.CustomResource {
  /// The encrypted password, base64 encoded. Only available if password was handled on resource creation, not import.
  late final pulumi.Output<String> encryptedPassword;
  /// The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on this provider resource creation, not import.
  late final pulumi.Output<String> keyFingerprint;
  /// The plain text password, only available when `pgp_key` is not provided.
  late final pulumi.Output<String> password;
  /// The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is `20`.
  late final pulumi.Output<int?> passwordLength;
  /// Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  late final pulumi.Output<bool> passwordResetRequired;
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  late final pulumi.Output<String?> pgpKey;
  /// The IAM user's name.
  late final pulumi.Output<String> user;

  /// Creates a new [UserLoginProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserLoginProfile]. {@macro pulumi_iam_user_login_profile_user_login_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserLoginProfile(
    String name, {
    UserLoginProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userLoginProfile:UserLoginProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encryptedPassword = registerOutput<String>('encryptedPassword');
    this.keyFingerprint = registerOutput<String>('keyFingerprint');
    this.password = registerOutput<String>('password');
    this.passwordLength = registerOutput<int?>('passwordLength');
    this.passwordResetRequired = registerOutput<bool>('passwordResetRequired');
    this.pgpKey = registerOutput<String?>('pgpKey');
    this.user = registerOutput<String>('user');
  }
}
