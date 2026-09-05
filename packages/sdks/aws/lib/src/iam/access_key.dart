import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_args.dart';
import 'access_key_state.dart';

/// Provides an IAM access key. This is a set of credentials that allow API requests to be made as an IAM user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lbUser = new aws.iam.User("lb", {
///     name: "loadbalancer",
///     path: "/system/",
/// });
/// const lb = new aws.iam.AccessKey("lb", {
///     user: lbUser.name,
///     pgpKey: "keybase:some_person_that_exists",
/// });
/// const lbRo = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["ec2:Describe*"],
///         resources: ["*"],
///     }],
/// });
/// const lbRoUserPolicy = new aws.iam.UserPolicy("lb_ro", {
///     name: "test",
///     user: lbUser.name,
///     policy: lbRo.then(lbRo => lbRo.json),
/// });
/// export const secret = lb.encryptedSecret;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb_user = aws.iam.User("lb",
///     name="loadbalancer",
///     path="/system/")
/// lb = aws.iam.AccessKey("lb",
///     user=lb_user.name,
///     pgp_key="keybase:some_person_that_exists")
/// lb_ro = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["ec2:Describe*"],
///     "resources": ["*"],
/// }])
/// lb_ro_user_policy = aws.iam.UserPolicy("lb_ro",
///     name="test",
///     user=lb_user.name,
///     policy=lb_ro.json)
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
///     var lbUser = new Aws.Iam.User("lb", new()
///     {
///         Name = "loadbalancer",
///         Path = "/system/",
///     });
///
///     var lb = new Aws.Iam.AccessKey("lb", new()
///     {
///         User = lbUser.Name,
///         PgpKey = "keybase:some_person_that_exists",
///     });
///
///     var lbRo = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:Describe*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var lbRoUserPolicy = new Aws.Iam.UserPolicy("lb_ro", new()
///     {
///         Name = "test",
///         User = lbUser.Name,
///         Policy = lbRo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["secret"] = lb.EncryptedSecret,
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
/// 		lbUser, err := iam.NewUser(ctx, "lb", &iam.UserArgs{
/// 			Name: pulumi.String("loadbalancer"),
/// 			Path: pulumi.String("/system/"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lb, err := iam.NewAccessKey(ctx, "lb", &iam.AccessKeyArgs{
/// 			User:   lbUser.Name,
/// 			PgpKey: pulumi.String("keybase:some_person_that_exists"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lbRo, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"ec2:Describe*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewUserPolicy(ctx, "lb_ro", &iam.UserPolicyArgs{
/// 			Name:   pulumi.String("test"),
/// 			User:   lbUser.Name,
/// 			Policy: pulumi.String(lbRo.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("secret", lb.EncryptedSecret)
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
/// data "aws_iam_getpolicydocument" "lbRo" {
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:Describe*"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_iam_accesskey" "lb" {
///   user    = aws_iam_user.lb.name
///   pgp_key = "keybase:some_person_that_exists"
/// }
/// resource "aws_iam_user" "lb" {
///   name = "loadbalancer"
///   path = "/system/"
/// }
/// resource "aws_iam_userpolicy" "lb_ro" {
///   name   = "test"
///   user   = aws_iam_user.lb.name
///   policy = data.aws_iam_getpolicydocument.lbRo.json
/// }
/// output "secret" {
///   value = aws_iam_accesskey.lb.encrypted_secret
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.UserPolicy;
/// import com.pulumi.aws.iam.UserPolicyArgs;
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
///         var lbUser = new User("lbUser", UserArgs.builder()
///             .name("loadbalancer")
///             .path("/system/")
///             .build());
///
///         var lb = new AccessKey("lb", AccessKeyArgs.builder()
///             .user(lbUser.name())
///             .pgpKey("keybase:some_person_that_exists")
///             .build());
///
///         final var lbRo = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("ec2:Describe*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var lbRoUserPolicy = new UserPolicy("lbRoUserPolicy", UserPolicyArgs.builder()
///             .name("test")
///             .user(lbUser.name())
///             .policy(lbRo.json())
///             .build());
///
///         ctx.export("secret", lb.encryptedSecret());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lb:
///     type: aws:iam:AccessKey
///     properties:
///       user: ${lbUser.name}
///       pgpKey: keybase:some_person_that_exists
///   lbUser:
///     type: aws:iam:User
///     name: lb
///     properties:
///       name: loadbalancer
///       path: /system/
///   lbRoUserPolicy:
///     type: aws:iam:UserPolicy
///     name: lb_ro
///     properties:
///       name: test
///       user: ${lbUser.name}
///       policy: ${lbRo.json}
/// variables:
///   lbRo:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - ec2:Describe*
///             resources:
///               - '*'
/// outputs:
///   secret: ${lb.encryptedSecret}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.iam.User("test", {
///     name: "test",
///     path: "/test/",
/// });
/// const testAccessKey = new aws.iam.AccessKey("test", {user: test.name});
/// export const awsIamSmtpPasswordV4 = testAccessKey.sesSmtpPasswordV4;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.User("test",
///     name="test",
///     path="/test/")
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
///     var test = new Aws.Iam.User("test", new()
///     {
///         Name = "test",
///         Path = "/test/",
///     });
///
///     var testAccessKey = new Aws.Iam.AccessKey("test", new()
///     {
///         User = test.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["awsIamSmtpPasswordV4"] = testAccessKey.SesSmtpPasswordV4,
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
/// 		test, err := iam.NewUser(ctx, "test", &iam.UserArgs{
/// 			Name: pulumi.String("test"),
/// 			Path: pulumi.String("/test/"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAccessKey, err := iam.NewAccessKey(ctx, "test", &iam.AccessKeyArgs{
/// 			User: test.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("awsIamSmtpPasswordV4", testAccessKey.SesSmtpPasswordV4)
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
/// resource "aws_iam_user" "test" {
///   name = "test"
///   path = "/test/"
/// }
/// resource "aws_iam_accesskey" "test" {
///   user = aws_iam_user.test.name
/// }
/// output "awsIamSmtpPasswordV4" {
///   value = aws_iam_accesskey.test.ses_smtp_password_v4
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
///         var test = new User("test", UserArgs.builder()
///             .name("test")
///             .path("/test/")
///             .build());
///
///         var testAccessKey = new AccessKey("testAccessKey", AccessKeyArgs.builder()
///             .user(test.name())
///             .build());
///
///         ctx.export("awsIamSmtpPasswordV4", testAccessKey.sesSmtpPasswordV4());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:iam:User
///     properties:
///       name: test
///       path: /test/
///   testAccessKey:
///     type: aws:iam:AccessKey
///     name: test
///     properties:
///       user: ${test.name}
/// outputs:
///   awsIamSmtpPasswordV4: ${testAccessKey.sesSmtpPasswordV4}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) Access key ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM Access Keys using the identifier. For example:
///
/// ```sh
/// $ pulumi import aws:iam/accessKey:AccessKey example AKIA1234567890
/// ```
///
/// Resource attributes such as `encryptedSecret`, `keyFingerprint`, `pgpKey`, `secret`, `sesSmtpPasswordV4`, and `encryptedSesSmtpPasswordV4` are not available for imported resources as this information cannot be read from the IAM API.
class AccessKey extends pulumi.CustomResource {
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  late final pulumi.Output<String> createDate;
  /// Encrypted secret, base64 encoded, if `pgpKey` was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line.
  late final pulumi.Output<String> encryptedSecret;
  /// Encrypted SES SMTP password, base64 encoded, if `pgpKey` was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line.
  late final pulumi.Output<String> encryptedSesSmtpPasswordV4;
  /// Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources.
  late final pulumi.Output<String> keyFingerprint;
  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the `encryptedSecret` output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the `-a` option to `gpg --export`).
  late final pulumi.Output<String?> pgpKey;
  /// Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a `pgpKey` instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation.
  late final pulumi.Output<String> secret;
  /// Secret access key converted into an SES SMTP password by applying [AWS's documented Sigv4 conversion algorithm](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/smtp-credentials.html#smtp-credentials-convert). This attribute is not available for imported resources. As SigV4 is region specific, valid Provider regions are `ap-south-1`, `ap-southeast-2`, `eu-central-1`, `eu-west-1`, `us-east-1` and `us-west-2`. See current [AWS SES regions](https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region).
  late final pulumi.Output<String> sesSmtpPasswordV4;
  /// Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`.
  late final pulumi.Output<String?> status;
  /// IAM user to associate with this access key.
  late final pulumi.Output<String> user;

  /// Creates a new [AccessKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessKey]. {@macro pulumi_iam_access_key_access_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessKey(
    String name, {
    AccessKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/accessKey:AccessKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['secret', 'sesSmtpPasswordV4'],
        ) {
    createDate = registerOutput<String>('createDate');
    encryptedSecret = registerOutput<String>('encryptedSecret');
    encryptedSesSmtpPasswordV4 = registerOutput<String>('encryptedSesSmtpPasswordV4');
    keyFingerprint = registerOutput<String>('keyFingerprint');
    pgpKey = registerOutput<String?>('pgpKey');
    secret = registerOutput<String>('secret', isSecret: true);
    sesSmtpPasswordV4 = registerOutput<String>('sesSmtpPasswordV4', isSecret: true);
    status = registerOutput<String?>('status');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [AccessKey] resource's state with the given [name] and [id].
  static AccessKey get(
    String name,
    pulumi.Input<String> id, {
    AccessKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/accessKey:AccessKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createDate = registerOutput<String>('createDate');
    encryptedSecret = registerOutput<String>('encryptedSecret');
    encryptedSesSmtpPasswordV4 = registerOutput<String>('encryptedSesSmtpPasswordV4');
    keyFingerprint = registerOutput<String>('keyFingerprint');
    pgpKey = registerOutput<String?>('pgpKey');
    secret = registerOutput<String>('secret', isSecret: true);
    sesSmtpPasswordV4 = registerOutput<String>('sesSmtpPasswordV4', isSecret: true);
    status = registerOutput<String?>('status');
    user = registerOutput<String>('user');
  }

  /// Creates a typed reference to an existing [AccessKey] resource.
  AccessKey.reference(String urn)
    : super(
        'aws:iam/accessKey:AccessKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret', 'sesSmtpPasswordV4'],
        isResourceReference: true,
      ) {
    createDate = registerOutput<String>('createDate');
    encryptedSecret = registerOutput<String>('encryptedSecret');
    encryptedSesSmtpPasswordV4 = registerOutput<String>('encryptedSesSmtpPasswordV4');
    keyFingerprint = registerOutput<String>('keyFingerprint');
    pgpKey = registerOutput<String?>('pgpKey');
    secret = registerOutput<String>('secret', isSecret: true);
    sesSmtpPasswordV4 = registerOutput<String>('sesSmtpPasswordV4', isSecret: true);
    status = registerOutput<String?>('status');
    user = registerOutput<String>('user');
  }
}
