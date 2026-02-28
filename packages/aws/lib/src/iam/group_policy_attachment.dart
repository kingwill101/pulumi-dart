import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_attachment_args.dart';

/// Attaches a Managed IAM Policy to an IAM group
///
/// > **NOTE:** The usage of this resource conflicts with the `aws.iam.PolicyAttachment` resource and will permanently show a difference if both are defined.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const group = new aws.iam.Group("group", {name: "test-group"});
/// const policy = new aws.iam.Policy("policy", {
///     name: "test-policy",
///     description: "A test policy",
///     policy: "{ ... policy JSON ... }",
/// });
/// const test_attach = new aws.iam.GroupPolicyAttachment("test-attach", {
///     group: group.name,
///     policyArn: policy.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// group = aws.iam.Group("group", name="test-group")
/// policy = aws.iam.Policy("policy",
///     name="test-policy",
///     description="A test policy",
///     policy="{ ... policy JSON ... }")
/// test_attach = aws.iam.GroupPolicyAttachment("test-attach",
///     group=group.name,
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
///     var @group = new Aws.Iam.Group("group", new()
///     {
///         Name = "test-group",
///     });
///
///     var policy = new Aws.Iam.Policy("policy", new()
///     {
///         Name = "test-policy",
///         Description = "A test policy",
///         PolicyDocument = "{ ... policy JSON ... }",
///     });
///
///     var test_attach = new Aws.Iam.GroupPolicyAttachment("test-attach", new()
///     {
///         Group = @group.Name,
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
/// 		group, err := iam.NewGroup(ctx, "group", &iam.GroupArgs{
/// 			Name: pulumi.String("test-group"),
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
/// 		_, err = iam.NewGroupPolicyAttachment(ctx, "test-attach", &iam.GroupPolicyAttachmentArgs{
/// 			Group:     group.Name,
/// 			PolicyArn: policy.Arn,
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
/// import com.pulumi.aws.iam.Group;
/// import com.pulumi.aws.iam.GroupArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.GroupPolicyAttachment;
/// import com.pulumi.aws.iam.GroupPolicyAttachmentArgs;
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
///         var group = new Group("group", GroupArgs.builder()
///             .name("test-group")
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .name("test-policy")
///             .description("A test policy")
///             .policy("{ ... policy JSON ... }")
///             .build());
///
///         var test_attach = new GroupPolicyAttachment("test-attach", GroupPolicyAttachmentArgs.builder()
///             .group(group.name())
///             .policyArn(policy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   group:
///     type: aws:iam:Group
///     properties:
///       name: test-group
///   policy:
///     type: aws:iam:Policy
///     properties:
///       name: test-policy
///       description: A test policy
///       policy: '{ ... policy JSON ... }'
///   test-attach:
///     type: aws:iam:GroupPolicyAttachment
///     properties:
///       group: ${group.name}
///       policyArn: ${policy.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM group policy attachments using the group name and policy arn separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPolicyAttachment:GroupPolicyAttachment test-attach test-group/arn:aws:iam::xxxxxxxxxxxx:policy/test-policy
/// ```
class GroupPolicyAttachment extends pulumi.CustomResource {
  /// The group the policy should be applied to
  late final pulumi.Output<String> group;

  /// The ARN of the policy you want to apply
  late final pulumi.Output<String> policyArn;

  /// Creates a new [GroupPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicyAttachment]. {@macro pulumi_iam_group_policy_attachment_group_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicyAttachment(
    String name, {
    GroupPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPolicyAttachment:GroupPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<String>('group');
    this.policyArn = registerOutput<String>('policyArn');
  }
}
