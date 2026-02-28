import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_policy_attachments_exclusive_args.dart';

/// > **NOTE:**: To reliably detect drift between customer managed policies listed in this resource and actual policies attached to the role in the cloud, you currently need to run Pulumi with `pulumi up --refresh`. See [#4766](https://github.com/pulumi/pulumi-aws/issues/4766) for tracking making this work with regular `pulumi up`
///
/// Resource for maintaining exclusive management of managed IAM policies assigned to an AWS IAM (Identity & Access Management) role.
///
/// !> This resource takes exclusive ownership over managed IAM policies attached to a role. This includes removal of managed IAM policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.RolePolicyAttachment` resources managed alongside this resource are included in the `policy_arns` argument.
///
/// > Destruction of this resource means Pulumi will no longer manage reconciliation of the configured policy attachments. It **will not** detach the configured policies from the role.
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
/// const example = new aws.iam.RolePolicyAttachmentsExclusive("example", {
///     roleName: exampleAwsIamRole.name,
///     policyArns: [exampleAwsIamPolicy.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.RolePolicyAttachmentsExclusive("example",
///     role_name=example_aws_iam_role["name"],
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
///     var example = new Aws.Iam.RolePolicyAttachmentsExclusive("example", new()
///     {
///         RoleName = exampleAwsIamRole.Name,
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
/// 		_, err := iam.NewRolePolicyAttachmentsExclusive(ctx, "example", &iam.RolePolicyAttachmentsExclusiveArgs{
/// 			RoleName: pulumi.Any(exampleAwsIamRole.Name),
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
/// import com.pulumi.aws.iam.RolePolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.RolePolicyAttachmentsExclusiveArgs;
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
///         var example = new RolePolicyAttachmentsExclusive("example", RolePolicyAttachmentsExclusiveArgs.builder()
///             .roleName(exampleAwsIamRole.name())
///             .policyArns(exampleAwsIamPolicy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:RolePolicyAttachmentsExclusive
///     properties:
///       roleName: ${exampleAwsIamRole.name}
///       policyArns:
///         - ${exampleAwsIamPolicy.arn}
/// ```
///
///
/// ### Disallow Managed IAM Policies
///
/// To automatically remove any configured managed IAM policies, set the `policy_arns` argument to an empty list.
///
/// > This will not **prevent** managed IAM policies from being assigned to a role via Pulumi (or any other interface). This resource enables bringing managed IAM policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.RolePolicyAttachmentsExclusive("example", {
///     roleName: exampleAwsIamRole.name,
///     policyArns: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.RolePolicyAttachmentsExclusive("example",
///     role_name=example_aws_iam_role["name"],
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
///     var example = new Aws.Iam.RolePolicyAttachmentsExclusive("example", new()
///     {
///         RoleName = exampleAwsIamRole.Name,
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
/// 		_, err := iam.NewRolePolicyAttachmentsExclusive(ctx, "example", &iam.RolePolicyAttachmentsExclusiveArgs{
/// 			RoleName:   pulumi.Any(exampleAwsIamRole.Name),
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
/// import com.pulumi.aws.iam.RolePolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.RolePolicyAttachmentsExclusiveArgs;
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
///         var example = new RolePolicyAttachmentsExclusive("example", RolePolicyAttachmentsExclusiveArgs.builder()
///             .roleName(exampleAwsIamRole.name())
///             .policyArns()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:RolePolicyAttachmentsExclusive
///     properties:
///       roleName: ${exampleAwsIamRole.name}
///       policyArns: []
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of managed IAM policy assignments using the `role_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePolicyAttachmentsExclusive:RolePolicyAttachmentsExclusive example MyRole
/// ```
class RolePolicyAttachmentsExclusive extends pulumi.CustomResource {
  /// A list of managed IAM policy ARNs to be attached to the role. Policies attached to this role but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyArns;

  /// IAM role name.
  late final pulumi.Output<String> roleName;

  /// Creates a new [RolePolicyAttachmentsExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolePolicyAttachmentsExclusive]. {@macro pulumi_iam_role_policy_attachments_exclusive_role_policy_attachments_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolePolicyAttachmentsExclusive(
    String name, {
    RolePolicyAttachmentsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/rolePolicyAttachmentsExclusive:RolePolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyArns = registerOutput<List<String>>('policyArns');
    this.roleName = registerOutput<String>('roleName');
  }
}
