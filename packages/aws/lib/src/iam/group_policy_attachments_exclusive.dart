import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_attachments_exclusive_args.dart';

/// Resource for maintaining exclusive management of managed IAM policies assigned to an AWS IAM (Identity & Access Management) group.
///
/// !> This resource takes exclusive ownership over managed IAM policies attached to a group. This includes removal of managed IAM policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.GroupPolicyAttachment` resources managed alongside this resource are included in the `policy_arns` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured policy attachments. It **will not** detach the configured policies from the group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.GroupPolicyAttachmentsExclusive("example", {
///     groupName: exampleAwsIamGroup.name,
///     policyArns: [exampleAwsIamPolicy.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.GroupPolicyAttachmentsExclusive("example",
///     group_name=example_aws_iam_group["name"],
///     policy_arns=[example_aws_iam_policy["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.GroupPolicyAttachmentsExclusive("example", new()
///     {
///         GroupName = exampleAwsIamGroup.Name,
///         PolicyArns = new[]
///         {
///             exampleAwsIamPolicy.Arn,
///         },
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
/// 		_, err := iam.NewGroupPolicyAttachmentsExclusive(ctx, "example", &iam.GroupPolicyAttachmentsExclusiveArgs{
/// 			GroupName: pulumi.Any(exampleAwsIamGroup.Name),
/// 			PolicyArns: pulumi.StringArray{
/// 				exampleAwsIamPolicy.Arn,
/// 			},
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
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusiveArgs;
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
///         var example = new GroupPolicyAttachmentsExclusive("example", GroupPolicyAttachmentsExclusiveArgs.builder()
///             .groupName(exampleAwsIamGroup.name())
///             .policyArns(exampleAwsIamPolicy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:GroupPolicyAttachmentsExclusive
///     properties:
///       groupName: ${exampleAwsIamGroup.name}
///       policyArns:
///         - ${exampleAwsIamPolicy.arn}
/// ```
///
///
/// ### Disallow Managed IAM Policies
///
/// To automatically remove any configured managed IAM policies, set the `policy_arns` argument to an empty list.
///
/// > This will not **prevent** managed IAM policies from being assigned to a group via Terraform (or any other interface). This resource enables bringing managed IAM policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.GroupPolicyAttachmentsExclusive("example", {
///     groupName: exampleAwsIamGroup.name,
///     policyArns: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.GroupPolicyAttachmentsExclusive("example",
///     group_name=example_aws_iam_group["name"],
///     policy_arns=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.GroupPolicyAttachmentsExclusive("example", new()
///     {
///         GroupName = exampleAwsIamGroup.Name,
///         PolicyArns = new[] {},
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
/// 		_, err := iam.NewGroupPolicyAttachmentsExclusive(ctx, "example", &iam.GroupPolicyAttachmentsExclusiveArgs{
/// 			GroupName:  pulumi.Any(exampleAwsIamGroup.Name),
/// 			PolicyArns: pulumi.StringArray{},
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
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.GroupPolicyAttachmentsExclusiveArgs;
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
///         var example = new GroupPolicyAttachmentsExclusive("example", GroupPolicyAttachmentsExclusiveArgs.builder()
///             .groupName(exampleAwsIamGroup.name())
///             .policyArns()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:GroupPolicyAttachmentsExclusive
///     properties:
///       groupName: ${exampleAwsIamGroup.name}
///       policyArns: []
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of managed IAM policy assignments using the `group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPolicyAttachmentsExclusive:GroupPolicyAttachmentsExclusive example MyGroup
/// ```
class GroupPolicyAttachmentsExclusive extends pulumi.CustomResource {
  /// IAM group name.
  late final pulumi.Output<String> groupName;
  /// A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyArns;

  /// Creates a new [GroupPolicyAttachmentsExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicyAttachmentsExclusive]. {@macro pulumi_iam_group_policy_attachments_exclusive_group_policy_attachments_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicyAttachmentsExclusive(
    String name, {
    GroupPolicyAttachmentsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPolicyAttachmentsExclusive:GroupPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.policyArns = registerOutput<List<String>>('policyArns');
  }
}
