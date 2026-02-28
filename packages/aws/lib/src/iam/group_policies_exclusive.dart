import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policies_exclusive_args.dart';

/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) group.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a group. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.GroupPolicy` resources managed alongside this resource are included in the `policy_names` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the group.
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
/// const example = new aws.iam.GroupPoliciesExclusive("example", {
///     groupName: exampleAwsIamGroup.name,
///     policyNames: [exampleAwsIamGroupPolicy.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.GroupPoliciesExclusive("example",
///     group_name=example_aws_iam_group["name"],
///     policy_names=[example_aws_iam_group_policy["name"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.GroupPoliciesExclusive("example", new()
///     {
///         GroupName = exampleAwsIamGroup.Name,
///         PolicyNames = new[]
///         {
///             exampleAwsIamGroupPolicy.Name,
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
/// 		_, err := iam.NewGroupPoliciesExclusive(ctx, "example", &iam.GroupPoliciesExclusiveArgs{
/// 			GroupName: pulumi.Any(exampleAwsIamGroup.Name),
/// 			PolicyNames: pulumi.StringArray{
/// 				exampleAwsIamGroupPolicy.Name,
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
/// import com.pulumi.aws.iam.GroupPoliciesExclusive;
/// import com.pulumi.aws.iam.GroupPoliciesExclusiveArgs;
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
///         var example = new GroupPoliciesExclusive("example", GroupPoliciesExclusiveArgs.builder()
///             .groupName(exampleAwsIamGroup.name())
///             .policyNames(exampleAwsIamGroupPolicy.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:GroupPoliciesExclusive
///     properties:
///       groupName: ${exampleAwsIamGroup.name}
///       policyNames:
///         - ${exampleAwsIamGroupPolicy.name}
/// ```
///
///
/// ### Disallow Inline Policies
///
/// To automatically remove any configured inline policies, set the `policy_names` argument to an empty list.
///
/// > This will not __prevent__ inline policies from being assigned to a group via Terraform (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.GroupPoliciesExclusive("example", {
///     groupName: exampleAwsIamGroup.name,
///     policyNames: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.GroupPoliciesExclusive("example",
///     group_name=example_aws_iam_group["name"],
///     policy_names=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.GroupPoliciesExclusive("example", new()
///     {
///         GroupName = exampleAwsIamGroup.Name,
///         PolicyNames = new[] {},
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
/// 		_, err := iam.NewGroupPoliciesExclusive(ctx, "example", &iam.GroupPoliciesExclusiveArgs{
/// 			GroupName:   pulumi.Any(exampleAwsIamGroup.Name),
/// 			PolicyNames: pulumi.StringArray{},
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
/// import com.pulumi.aws.iam.GroupPoliciesExclusive;
/// import com.pulumi.aws.iam.GroupPoliciesExclusiveArgs;
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
///         var example = new GroupPoliciesExclusive("example", GroupPoliciesExclusiveArgs.builder()
///             .groupName(exampleAwsIamGroup.name())
///             .policyNames()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:GroupPoliciesExclusive
///     properties:
///       groupName: ${exampleAwsIamGroup.name}
///       policyNames: []
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the `group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPoliciesExclusive:GroupPoliciesExclusive example MyGroup
/// ```
class GroupPoliciesExclusive extends pulumi.CustomResource {
  /// IAM group name.
  late final pulumi.Output<String> groupName;
  /// A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyNames;

  /// Creates a new [GroupPoliciesExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPoliciesExclusive]. {@macro pulumi_iam_group_policies_exclusive_group_policies_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPoliciesExclusive(
    String name, {
    GroupPoliciesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPoliciesExclusive:GroupPoliciesExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.policyNames = registerOutput<List<String>>('policyNames');
  }
}
