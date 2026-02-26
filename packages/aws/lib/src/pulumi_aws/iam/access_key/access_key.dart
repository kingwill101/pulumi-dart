import 'package:pulumi/pulumi.dart';
import 'access_key_args.dart';

/// Provides an IAM access key. This is a set of credentials that allow API requests to be made as an IAM user.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lbUser = new aws.iam.User("lb", {
/// name: "loadbalancer",
/// path: "/system/",
/// });
/// const lb = new aws.iam.AccessKey("lb", {
/// user: lbUser.name,
/// pgpKey: "keybase:some_person_that_exists",
/// });
/// const lbRo = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: ["ec2:Describe*"],
/// resources: ["*"],
/// }],
/// });
/// const lbRoUserPolicy = new aws.iam.UserPolicy("lb_ro", {
/// name: "test",
/// user: lbUser.name,
/// policy: lbRo.then(lbRo => lbRo.json),
/// });
/// export const secret = lb.encryptedSecret;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb_user = aws.iam.User("lb",
/// name="loadbalancer",
/// path="/system/")
/// lb = aws.iam.AccessKey("lb",
/// user=lb_user.name,
/// pgp_key="keybase:some_person_that_exists")
/// lb_ro = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": ["ec2:Describe*"],
/// "resources": ["*"],
/// }])
/// lb_ro_user_policy = aws.iam.UserPolicy("lb_ro",
/// name="test",
/// user=lb_user.name,
/// policy=lb_ro.json)
/// pulumi.export("secret", lb.encrypted_secret)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var lbUser = new Aws.Iam.User("lb", new()
/// {
/// Name = "loadbalancer",
/// Path = "/system/",
/// });
///
/// var lb = new Aws.Iam.AccessKey("lb", new()
/// {
/// User = lbUser.Name,
/// PgpKey = "keybase:some_person_that_exists",
/// });
///
/// var lbRo = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ec2:Describe*",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var lbRoUserPolicy = new Aws.Iam.UserPolicy("lb_ro", new()
/// {
/// Name = "test",
/// User = lbUser.Name,
/// Policy = lbRo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["secret"] = lb.EncryptedSecret,
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
/// lbUser, err := iam.NewUser(ctx, "lb", &iam.UserArgs{
/// Name: pulumi.String("loadbalancer"),
/// Path: pulumi.String("/system/"),
/// })
/// if err != nil {
/// return err
/// }
/// lb, err := iam.NewAccessKey(ctx, "lb", &iam.AccessKeyArgs{
/// User:   lbUser.Name,
/// PgpKey: pulumi.String("keybase:some_person_that_exists"),
/// })
/// if err != nil {
/// return err
/// }
/// lbRo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "ec2:Describe*",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewUserPolicy(ctx, "lb_ro", &iam.UserPolicyArgs{
/// Name:   pulumi.String("test"),
/// User:   lbUser.Name,
/// Policy: pulumi.String(lbRo.Json),
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("secret", lb.EncryptedSecret)
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
/// import com.pulumi.aws.iam.AccessKey;
/// import com.pulumi.aws.iam.AccessKeyArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.UserPolicy;
/// import com.pulumi.aws.iam.UserPolicyArgs;
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
/// var lbUser = new User("lbUser", UserArgs.builder()
/// .name("loadbalancer")
/// .path("/system/")
/// .build());
///
/// var lb = new AccessKey("lb", AccessKeyArgs.builder()
/// .user(lbUser.name())
/// .pgpKey("keybase:some_person_that_exists")
/// .build());
///
/// final var lbRo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("ec2:Describe*")
/// .resources("*")
/// .build())
/// .build());
///
/// var lbRoUserPolicy = new UserPolicy("lbRoUserPolicy", UserPolicyArgs.builder()
/// .name("test")
/// .user(lbUser.name())
/// .policy(lbRo.json())
/// .build());
///
/// ctx.export("secret", lb.encryptedSecret());
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// lb:
/// type: aws:iam:AccessKey
/// properties:
/// user: ${lbUser.name}
/// pgpKey: keybase:some_person_that_exists
/// lbUser:
/// type: aws:iam:User
/// name: lb
/// properties:
/// name: loadbalancer
/// path: /system/
/// lbRoUserPolicy:
/// type: aws:iam:UserPolicy
/// name: lb_ro
/// properties:
/// name: test
/// user: ${lbUser.name}
/// policy: ${lbRo.json}
/// variables:
/// lbRo:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - ec2:Describe*
/// resources:
/// - '*'
/// outputs:
/// secret: ${lb.encryptedSecret}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.iam.User("test", {
/// name: "test",
/// path: "/test/",
/// });
/// const testAccessKey = new aws.iam.AccessKey("test", {user: test.name});
/// export const awsIamSmtpPasswordV4 = testAccessKey.sesSmtpPasswordV4;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.User("test",
/// name="test",
/// path="/test/")
/// test_access_key = aws.iam.AccessKey("test", user=test.name)
/// pulumi.export("awsIamSmtpPasswordV4", test_access_key.ses_smtp_password_v4)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Iam.User("test", new()
/// {
/// Name = "test",
/// Path = "/test/",
/// });
///
/// var testAccessKey = new Aws.Iam.AccessKey("test", new()
/// {
/// User = test.Name,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["awsIamSmtpPasswordV4"] = testAccessKey.SesSmtpPasswordV4,
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
/// test, err := iam.NewUser(ctx, "test", &iam.UserArgs{
/// Name: pulumi.String("test"),
/// Path: pulumi.String("/test/"),
/// })
/// if err != nil {
/// return err
/// }
/// testAccessKey, err := iam.NewAccessKey(ctx, "test", &iam.AccessKeyArgs{
/// User: test.Name,
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("awsIamSmtpPasswordV4", testAccessKey.SesSmtpPasswordV4)
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
/// import com.pulumi.aws.iam.AccessKey;
/// import com.pulumi.aws.iam.AccessKeyArgs;
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
/// var test = new User("test", UserArgs.builder()
/// .name("test")
/// .path("/test/")
/// .build());
///
/// var testAccessKey = new AccessKey("testAccessKey", AccessKeyArgs.builder()
/// .user(test.name())
/// .build());
///
/// ctx.export("awsIamSmtpPasswordV4", testAccessKey.sesSmtpPasswordV4());
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:iam:User
/// properties:
/// name: test
/// path: /test/
/// testAccessKey:
/// type: aws:iam:AccessKey
/// name: test
/// properties:
/// user: ${test.name}
/// outputs:
/// awsIamSmtpPasswordV4: ${testAccessKey.sesSmtpPasswordV4}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM Access Keys using the identifier. For example:
///
/// ```sh
/// $ pulumi import aws:iam/accessKey:AccessKey example AKIA1234567890
/// ```
///
/// Resource attributes such as <span pulumi-lang-nodejs="`encryptedSecret`" pulumi-lang-dotnet="`EncryptedSecret`" pulumi-lang-go="`encryptedSecret`" pulumi-lang-python="`encrypted_secret`" pulumi-lang-yaml="`encryptedSecret`" pulumi-lang-java="`encryptedSecret`">`encrypted_secret`</span>, <span pulumi-lang-nodejs="`keyFingerprint`" pulumi-lang-dotnet="`KeyFingerprint`" pulumi-lang-go="`keyFingerprint`" pulumi-lang-python="`key_fingerprint`" pulumi-lang-yaml="`keyFingerprint`" pulumi-lang-java="`keyFingerprint`">`key_fingerprint`</span>, <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span>, <span pulumi-lang-nodejs="`secret`" pulumi-lang-dotnet="`Secret`" pulumi-lang-go="`secret`" pulumi-lang-python="`secret`" pulumi-lang-yaml="`secret`" pulumi-lang-java="`secret`">`secret`</span>, <span pulumi-lang-nodejs="`sesSmtpPasswordV4`" pulumi-lang-dotnet="`SesSmtpPasswordV4`" pulumi-lang-go="`sesSmtpPasswordV4`" pulumi-lang-python="`ses_smtp_password_v4`" pulumi-lang-yaml="`sesSmtpPasswordV4`" pulumi-lang-java="`sesSmtpPasswordV4`">`ses_smtp_password_v4`</span>, and <span pulumi-lang-nodejs="`encryptedSesSmtpPasswordV4`" pulumi-lang-dotnet="`EncryptedSesSmtpPasswordV4`" pulumi-lang-go="`encryptedSesSmtpPasswordV4`" pulumi-lang-python="`encrypted_ses_smtp_password_v4`" pulumi-lang-yaml="`encryptedSesSmtpPasswordV4`" pulumi-lang-java="`encryptedSesSmtpPasswordV4`">`encrypted_ses_smtp_password_v4`</span> are not available for imported resources as this information cannot be read from the IAM API.
class AccessKey extends CustomResource {
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  late final Output<String> createDate;

  /// Encrypted secret, base64 encoded, if <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line.
  late final Output<String> encryptedSecret;

  /// Encrypted SES SMTP password, base64 encoded, if <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line.
  late final Output<String> encryptedSesSmtpPasswordV4;

  /// Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources.
  late final Output<String> keyFingerprint;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the <span pulumi-lang-nodejs="`encryptedSecret`" pulumi-lang-dotnet="`EncryptedSecret`" pulumi-lang-go="`encryptedSecret`" pulumi-lang-python="`encrypted_secret`" pulumi-lang-yaml="`encryptedSecret`" pulumi-lang-java="`encryptedSecret`">`encrypted_secret`</span> output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the `-a` option to `gpg --export`).
  late final Output<String?> pgpKey;

  /// Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation.
  late final Output<String> secret;

  /// Secret access key converted into an SES SMTP password by applying [AWS's documented Sigv4 conversion algorithm](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/smtp-credentials.html#smtp-credentials-convert). This attribute is not available for imported resources. As SigV4 is region specific, valid Provider regions are `ap-south-1`, `ap-southeast-2`, `eu-central-1`, `eu-west-1`, `us-east-1` and `us-west-2`. See current [AWS SES regions](https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region).
  late final Output<String> sesSmtpPasswordV4;

  /// Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`.
  late final Output<String?> status;

  /// IAM user to associate with this access key.
  late final Output<String> user;

  AccessKey(
    String name, {
    AccessKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/accessKey:AccessKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createDate = Output.createUnknown<String>();
    this.encryptedSecret = Output.createUnknown<String>();
    this.encryptedSesSmtpPasswordV4 = Output.createUnknown<String>();
    this.keyFingerprint = Output.createUnknown<String>();
    this.pgpKey = Output.createUnknown<String?>();
    this.secret = Output.createUnknown<String>();
    this.sesSmtpPasswordV4 = Output.createUnknown<String>();
    this.status = Output.createUnknown<String?>();
    this.user = Output.createUnknown<String>();
  }
}
