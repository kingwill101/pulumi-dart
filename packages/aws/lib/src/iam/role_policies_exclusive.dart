import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_policies_exclusive_args.dart';

/// > **NOTE:**: To reliably detect drift between customer managed inline policies listed in this resource and actual policies attached to the role in the cloud, you currently need to run Pulumi with `pulumi up --refresh`. See [#4766](https://github.com/pulumi/pulumi-aws/issues/4766) for tracking making this work with regular `pulumi up` invocations.
///
/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) role.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a role. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.RolePolicy` resources managed alongside this resource are included in the `policy_names` argument.
///
/// > Destruction of this resource means Pulumi will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the role.
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
/// const example = new aws.iam.RolePoliciesExclusive("example", {
///     roleName: exampleAwsIamRole.name,
///     policyNames: [exampleAwsIamRolePolicy.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.RolePoliciesExclusive("example",
///     role_name=example_aws_iam_role["name"],
///     policy_names=[example_aws_iam_role_policy["name"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.RolePoliciesExclusive("example", new()
///     {
///         RoleName = exampleAwsIamRole.Name,
///         PolicyNames = new[]
///         {
///             exampleAwsIamRolePolicy.Name,
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
/// 		_, err := iam.NewRolePoliciesExclusive(ctx, "example", &iam.RolePoliciesExclusiveArgs{
/// 			RoleName: pulumi.Any(exampleAwsIamRole.Name),
/// 			PolicyNames: pulumi.StringArray{
/// 				exampleAwsIamRolePolicy.Name,
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
/// import com.pulumi.aws.iam.RolePoliciesExclusive;
/// import com.pulumi.aws.iam.RolePoliciesExclusiveArgs;
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
///         var example = new RolePoliciesExclusive("example", RolePoliciesExclusiveArgs.builder()
///             .roleName(exampleAwsIamRole.name())
///             .policyNames(exampleAwsIamRolePolicy.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:RolePoliciesExclusive
///     properties:
///       roleName: ${exampleAwsIamRole.name}
///       policyNames:
///         - ${exampleAwsIamRolePolicy.name}
/// ```
///
///
/// ### Disallow Inline Policies
///
/// To automatically remove any configured inline policies, set the `policy_names` argument to an empty list.
///
/// > This will not __prevent__ inline policies from being assigned to a role via Pulumi (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.RolePoliciesExclusive("example", {
///     roleName: exampleAwsIamRole.name,
///     policyNames: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.RolePoliciesExclusive("example",
///     role_name=example_aws_iam_role["name"],
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
///     var example = new Aws.Iam.RolePoliciesExclusive("example", new()
///     {
///         RoleName = exampleAwsIamRole.Name,
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
/// 		_, err := iam.NewRolePoliciesExclusive(ctx, "example", &iam.RolePoliciesExclusiveArgs{
/// 			RoleName:    pulumi.Any(exampleAwsIamRole.Name),
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
/// import com.pulumi.aws.iam.RolePoliciesExclusive;
/// import com.pulumi.aws.iam.RolePoliciesExclusiveArgs;
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
///         var example = new RolePoliciesExclusive("example", RolePoliciesExclusiveArgs.builder()
///             .roleName(exampleAwsIamRole.name())
///             .policyNames()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:RolePoliciesExclusive
///     properties:
///       roleName: ${exampleAwsIamRole.name}
///       policyNames: []
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the `role_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePoliciesExclusive:RolePoliciesExclusive example MyRole
/// ```
class RolePoliciesExclusive extends pulumi.CustomResource {
  /// A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyNames;

  /// IAM role name.
  late final pulumi.Output<String> roleName;

  /// Creates a new [RolePoliciesExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolePoliciesExclusive]. {@macro pulumi_iam_role_policies_exclusive_role_policies_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolePoliciesExclusive(
    String name, {
    RolePoliciesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iam/rolePoliciesExclusive:RolePoliciesExclusive',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.policyNames = registerOutput<List<String>>('policyNames');
    this.roleName = registerOutput<String>('roleName');
  }
}
