import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Provides an IAM user.
///
/// &gt; *NOTE:* If policies are attached to the user via the `aws.iam.PolicyAttachment` resource and you are modifying the user `name` or `path`, the `forceDestroy` argument must be set to `true` and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The `aws.iam.UserPolicyAttachment` resource (recommended) does not have this requirement.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lb = new aws.iam.User("lb", {
///     name: "loadbalancer",
///     path: "/system/",
///     tags: {
///         "tag-key": "tag-value",
///     },
/// });
/// const lbAccessKey = new aws.iam.AccessKey("lb", {user: lb.name});
/// const lbRo = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["ec2:Describe*"],
///         resources: ["*"],
///     }],
/// });
/// const lbRoUserPolicy = new aws.iam.UserPolicy("lb_ro", {
///     name: "test",
///     user: lb.name,
///     policy: lbRo.then(lbRo => lbRo.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb = aws.iam.User("lb",
///     name="loadbalancer",
///     path="/system/",
///     tags={
///         "tag-key": "tag-value",
///     })
/// lb_access_key = aws.iam.AccessKey("lb", user=lb.name)
/// lb_ro = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["ec2:Describe*"],
///     "resources": ["*"],
/// }])
/// lb_ro_user_policy = aws.iam.UserPolicy("lb_ro",
///     name="test",
///     user=lb.name,
///     policy=lb_ro.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lb = new Aws.Iam.User("lb", new()
///     {
///         Name = "loadbalancer",
///         Path = "/system/",
///         Tags =
///         {
///             { "tag-key", "tag-value" },
///         },
///     });
///
///     var lbAccessKey = new Aws.Iam.AccessKey("lb", new()
///     {
///         User = lb.Name,
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
///         User = lb.Name,
///         Policy = lbRo.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 		lb, err := iam.NewUser(ctx, "lb", &iam.UserArgs{
/// 			Name: pulumi.String("loadbalancer"),
/// 			Path: pulumi.String("/system/"),
/// 			Tags: pulumi.StringMap{
/// 				"tag-key": pulumi.String("tag-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewAccessKey(ctx, "lb", &iam.AccessKeyArgs{
/// 			User: lb.Name,
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
/// 			User:   lb.Name,
/// 			Policy: pulumi.String(lbRo.Json),
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
/// data "aws_iam_getpolicydocument" "lbRo" {
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:Describe*"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_iam_user" "lb" {
///   name = "loadbalancer"
///   path = "/system/"
///   tags = {
///     "tag-key" = "tag-value"
///   }
/// }
/// resource "aws_iam_accesskey" "lb" {
///   user = aws_iam_user.lb.name
/// }
/// resource "aws_iam_userpolicy" "lb_ro" {
///   name   = "test"
///   user   = aws_iam_user.lb.name
///   policy = data.aws_iam_getpolicydocument.lbRo.json
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
///         var lb = new User("lb", UserArgs.builder()
///             .name("loadbalancer")
///             .path("/system/")
///             .tags(Map.of("tag-key", "tag-value"))
///             .build());
///
///         var lbAccessKey = new AccessKey("lbAccessKey", AccessKeyArgs.builder()
///             .user(lb.name())
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
///             .user(lb.name())
///             .policy(lbRo.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lb:
///     type: aws:iam:User
///     properties:
///       name: loadbalancer
///       path: /system/
///       tags:
///         tag-key: tag-value
///   lbAccessKey:
///     type: aws:iam:AccessKey
///     name: lb
///     properties:
///       user: ${lb.name}
///   lbRoUserPolicy:
///     type: aws:iam:UserPolicy
///     name: lb_ro
///     properties:
///       name: test
///       user: ${lb.name}
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
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) User name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM Users using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/user:User example example-user
/// ```
class User extends pulumi.CustomResource {
  /// The ARN assigned by AWS for this user.
  late final pulumi.Output<String> arn;
  /// When destroying this user, destroy even if it
  /// has non-provider-managed IAM access keys, login profile or MFA devices. Without `forceDestroy`
  /// a user with non-provider-managed access keys and login profile will fail to be destroyed. This only deletes objects when the user is destroyed, not when setting this parameter to true. Once this parameter is set to true, there must be a successful pulumi up run before a destroy is required to update this value in the resource state. Without a successful pulumi up after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the user or destroying the user, this flag will not work. Additionally when importing a user, a successful pulumi up is required to set this value in state before it will take effect on a destroy operation.
  late final pulumi.Output<bool?> forceDestroy;
  /// The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  late final pulumi.Output<String> name;
  /// Path in which to create the user.
  late final pulumi.Output<String?> path;
  /// The ARN of the policy that is used to set the permissions boundary for the user.
  late final pulumi.Output<String?> permissionsBoundary;
  /// Key-value mapping of tags for the IAM user. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The [unique ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#GUIDs) assigned by AWS.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_iam_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissionsBoundary = registerOutput<String?>('permissionsBoundary');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissionsBoundary = registerOutput<String?>('permissionsBoundary');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'aws:iam/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    permissionsBoundary = registerOutput<String?>('permissionsBoundary');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueId = registerOutput<String>('uniqueId');
  }
}
