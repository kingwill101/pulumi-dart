import 'package:pulumi/pulumi.dart';
import 'user_login_profile_args.dart';

/// Manages an IAM User Login Profile with limited support for password creation during this provider resource creation. Uses PGP to encrypt the password for safe transport to the user. PGP keys can be obtained from Keybase.
///
/// > To reset an IAM User login password via this provider, you can use delete and recreate this resource or change any of the arguments.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.User("example", {
/// name: "example",
/// path: "/",
/// forceDestroy: true,
/// });
/// const exampleUserLoginProfile = new aws.iam.UserLoginProfile("example", {
/// user: example.name,
/// pgpKey: "keybase:some_person_that_exists",
/// });
/// export const password = exampleUserLoginProfile.encryptedPassword;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.User("example",
/// name="example",
/// path="/",
/// force_destroy=True)
/// example_user_login_profile = aws.iam.UserLoginProfile("example",
/// user=example.name,
/// pgp_key="keybase:some_person_that_exists")
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
/// var example = new Aws.Iam.User("example", new()
/// {
/// Name = "example",
/// Path = "/",
/// ForceDestroy = true,
/// });
///
/// var exampleUserLoginProfile = new Aws.Iam.UserLoginProfile("example", new()
/// {
/// User = example.Name,
/// PgpKey = "keybase:some_person_that_exists",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["password"] = exampleUserLoginProfile.EncryptedPassword,
/// };
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
/// example, err := iam.NewUser(ctx, "example", &iam.UserArgs{
/// Name:         pulumi.String("example"),
/// Path:         pulumi.String("/"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleUserLoginProfile, err := iam.NewUserLoginProfile(ctx, "example", &iam.UserLoginProfileArgs{
/// User:   example.Name,
/// PgpKey: pulumi.String("keybase:some_person_that_exists"),
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("password", exampleUserLoginProfile.EncryptedPassword)
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new User("example", UserArgs.builder()
/// .name("example")
/// .path("/")
/// .forceDestroy(true)
/// .build());
///
/// var exampleUserLoginProfile = new UserLoginProfile("exampleUserLoginProfile", UserLoginProfileArgs.builder()
/// .user(example.name())
/// .pgpKey("keybase:some_person_that_exists")
/// .build());
///
/// ctx.export("password", exampleUserLoginProfile.encryptedPassword());
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:User
/// properties:
/// name: example
/// path: /
/// forceDestroy: true
/// exampleUserLoginProfile:
/// type: aws:iam:UserLoginProfile
/// name: example
/// properties:
/// user: ${example.name}
/// pgpKey: keybase:some_person_that_exists
/// outputs:
/// password: ${exampleUserLoginProfile.encryptedPassword}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM User Login Profiles without password information via the IAM User name. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userLoginProfile:UserLoginProfile example myusername
/// ```
///
/// Since Pulumi has no method to read the PGP or password information during import, use the resource options <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument to ignore them (unless you want to recreate a password). For example:
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Iam.UserLoginProfile("example");
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
/// _, err := iam.NewUserLoginProfile(ctx, "example", nil)
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
/// import com.pulumi.aws.iam.UserLoginProfile;
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
/// var example = new UserLoginProfile("example");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:UserLoginProfile
/// ```
/// <!--End PulumiCodeChooser -->
class UserLoginProfile extends CustomResource {
  /// The encrypted password, base64 encoded. Only available if password was handled on resource creation, not import.
  late final Output<String> encryptedPassword;

  /// The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on this provider resource creation, not import.
  late final Output<String> keyFingerprint;

  /// The plain text password, only available when <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> is not provided.
  late final Output<String> password;

  /// The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>.
  late final Output<int?> passwordLength;

  /// Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  late final Output<bool> passwordResetRequired;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  late final Output<String?> pgpKey;

  /// The IAM user's name.
  late final Output<String> user;

  UserLoginProfile(
    String name, {
    UserLoginProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/userLoginProfile:UserLoginProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.encryptedPassword = Output.createUnknown<String>();
    this.keyFingerprint = Output.createUnknown<String>();
    this.password = Output.createUnknown<String>();
    this.passwordLength = Output.createUnknown<int?>();
    this.passwordResetRequired = Output.createUnknown<bool>();
    this.pgpKey = Output.createUnknown<String?>();
    this.user = Output.createUnknown<String>();
  }
}
