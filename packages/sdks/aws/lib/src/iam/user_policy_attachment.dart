import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_policy_attachment_args.dart';
import 'user_policy_attachment_state.dart';

/// Attaches a Managed IAM Policy to an IAM user
///
/// &gt; **NOTE:** The usage of this resource conflicts with the `aws.iam.PolicyAttachment` resource and will permanently show a difference if both are defined.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const user = new aws.iam.User("user", {name: "test-user"});
/// const policy = new aws.iam.Policy("policy", {
///     name: "test-policy",
///     description: "A test policy",
///     policy: "{ ... policy JSON ... }",
/// });
/// const test_attach = new aws.iam.UserPolicyAttachment("test-attach", {
///     user: user.name,
///     policyArn: policy.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user = aws.iam.User("user", name="test-user")
/// policy = aws.iam.Policy("policy",
///     name="test-policy",
///     description="A test policy",
///     policy="{ ... policy JSON ... }")
/// test_attach = aws.iam.UserPolicyAttachment("test-attach",
///     user=user.name,
///     policy_arn=policy.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = new Aws.Iam.User("user", new()
///     {
///         Name = "test-user",
///     });
///
///     var policy = new Aws.Iam.Policy("policy", new()
///     {
///         Name = "test-policy",
///         Description = "A test policy",
///         PolicyDocument = "{ ... policy JSON ... }",
///     });
///
///     var test_attach = new Aws.Iam.UserPolicyAttachment("test-attach", new()
///     {
///         User = user.Name,
///         PolicyArn = policy.Arn,
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
/// 		user, err := iam.NewUser(ctx, "user", &iam.UserArgs{
/// 			Name: pulumi.String("test-user"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := iam.NewPolicy(ctx, "policy", &iam.PolicyArgs{
/// 			Name:        pulumi.String("test-policy"),
/// 			Description: pulumi.String("A test policy"),
/// 			Policy:      pulumi.Any("{ ... policy JSON ... }"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewUserPolicyAttachment(ctx, "test-attach", &iam.UserPolicyAttachmentArgs{
/// 			User:      user.Name,
/// 			PolicyArn: policy.Arn,
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
/// resource "aws_iam_user" "user" {
///   name = "test-user"
/// }
/// resource "aws_iam_policy" "policy" {
///   name        = "test-policy"
///   description = "A test policy"
///   policy      = "{ ... policy JSON ... }"
/// }
/// resource "aws_iam_userpolicyattachment" "test-attach" {
///   user       = aws_iam_user.user.name
///   policy_arn = aws_iam_policy.policy.arn
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
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.UserPolicyAttachment;
/// import com.pulumi.aws.iam.UserPolicyAttachmentArgs;
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
///         var user = new User("user", UserArgs.builder()
///             .name("test-user")
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .name("test-policy")
///             .description("A test policy")
///             .policy("{ ... policy JSON ... }")
///             .build());
///
///         var test_attach = new UserPolicyAttachment("test-attach", UserPolicyAttachmentArgs.builder()
///             .user(user.name())
///             .policyArn(policy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   user:
///     type: aws:iam:User
///     properties:
///       name: test-user
///   policy:
///     type: aws:iam:Policy
///     properties:
///       name: test-policy
///       description: A test policy
///       policy: '{ ... policy JSON ... }'
///   test-attach:
///     type: aws:iam:UserPolicyAttachment
///     properties:
///       user: ${user.name}
///       policyArn: ${policy.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `user` (String) Name of the IAM user.
/// * `policyArn` (String) ARN of the IAM policy.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM user policy attachments using the user name and policy arn separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicyAttachment:UserPolicyAttachment example test-user/arn:aws:iam::xxxxxxxxxxxx:policy/test-policy
/// ```
class UserPolicyAttachment extends pulumi.CustomResource {
  /// The ARN of the policy you want to apply
  late final pulumi.Output<String> policyArn;
  /// The user the policy should be applied to
  late final pulumi.Output<String> user;

  /// Creates a new [UserPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPolicyAttachment]. {@macro pulumi_iam_user_policy_attachment_user_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPolicyAttachment(
    String name, {
    UserPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicyAttachment:UserPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policyArn = registerOutput<String>('policyArn');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [UserPolicyAttachment] resource's state with the given [name] and [id].
  static UserPolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    UserPolicyAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserPolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserPolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicyAttachment:UserPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyArn = registerOutput<String>('policyArn');
    user = registerOutput<String>('user');
  }

  /// Creates a typed reference to an existing [UserPolicyAttachment] resource.
  UserPolicyAttachment.reference(String urn)
    : super(
        'aws:iam/userPolicyAttachment:UserPolicyAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policyArn = registerOutput<String>('policyArn');
    user = registerOutput<String>('user');
  }
}
