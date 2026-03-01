import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_policies_exclusive_args.dart';

/// Resource for maintaining exclusive management of inline policies assigned to an AWS IAM (Identity & Access Management) user.
///
/// !> This resource takes exclusive ownership over inline policies assigned to a user. This includes removal of inline policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.UserPolicy` resources managed alongside this resource are included in the `policy_names` argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured inline policy assignments. It __will not__ delete the configured policies from the user.
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
/// const example = new aws.iam.UserPoliciesExclusive("example", {
///     userName: exampleAwsIamUser.name,
///     policyNames: [exampleAwsIamUserPolicy.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.UserPoliciesExclusive("example",
///     user_name=example_aws_iam_user["name"],
///     policy_names=[example_aws_iam_user_policy["name"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.UserPoliciesExclusive("example", new()
///     {
///         UserName = exampleAwsIamUser.Name,
///         PolicyNames = new[]
///         {
///             exampleAwsIamUserPolicy.Name,
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
/// 		_, err := iam.NewUserPoliciesExclusive(ctx, "example", &iam.UserPoliciesExclusiveArgs{
/// 			UserName: pulumi.Any(exampleAwsIamUser.Name),
/// 			PolicyNames: pulumi.StringArray{
/// 				exampleAwsIamUserPolicy.Name,
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
/// import com.pulumi.aws.iam.UserPoliciesExclusive;
/// import com.pulumi.aws.iam.UserPoliciesExclusiveArgs;
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
///         var example = new UserPoliciesExclusive("example", UserPoliciesExclusiveArgs.builder()
///             .userName(exampleAwsIamUser.name())
///             .policyNames(exampleAwsIamUserPolicy.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:UserPoliciesExclusive
///     properties:
///       userName: ${exampleAwsIamUser.name}
///       policyNames:
///         - ${exampleAwsIamUserPolicy.name}
/// ```
///
///
/// ### Disallow Inline Policies
///
/// To automatically remove any configured inline policies, set the `policy_names` argument to an empty list.
///
/// > This will not __prevent__ inline policies from being assigned to a user via Terraform (or any other interface). This resource enables bringing inline policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.UserPoliciesExclusive("example", {
///     userName: exampleAwsIamUser.name,
///     policyNames: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.UserPoliciesExclusive("example",
///     user_name=example_aws_iam_user["name"],
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
///     var example = new Aws.Iam.UserPoliciesExclusive("example", new()
///     {
///         UserName = exampleAwsIamUser.Name,
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
/// 		_, err := iam.NewUserPoliciesExclusive(ctx, "example", &iam.UserPoliciesExclusiveArgs{
/// 			UserName:    pulumi.Any(exampleAwsIamUser.Name),
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
/// import com.pulumi.aws.iam.UserPoliciesExclusive;
/// import com.pulumi.aws.iam.UserPoliciesExclusiveArgs;
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
///         var example = new UserPoliciesExclusive("example", UserPoliciesExclusiveArgs.builder()
///             .userName(exampleAwsIamUser.name())
///             .policyNames()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:UserPoliciesExclusive
///     properties:
///       userName: ${exampleAwsIamUser.name}
///       policyNames: []
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of inline policy assignments using the `user_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPoliciesExclusive:UserPoliciesExclusive example MyUser
/// ```
class UserPoliciesExclusive extends pulumi.CustomResource {
  /// A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyNames;

  /// IAM user name.
  late final pulumi.Output<String> userName;

  /// Creates a new [UserPoliciesExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPoliciesExclusive]. {@macro pulumi_iam_user_policies_exclusive_user_policies_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPoliciesExclusive(
    String name, {
    UserPoliciesExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iam/userPoliciesExclusive:UserPoliciesExclusive',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.policyNames = registerOutput<List<String>>('policyNames');
    this.userName = registerOutput<String>('userName');
  }
}
