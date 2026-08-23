import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_policy_attachments_exclusive_args.dart';
import 'user_policy_attachments_exclusive_state.dart';

/// Resource for maintaining exclusive management of managed IAM policies assigned to an AWS IAM (Identity & Access Management) user.
///
/// &gt; This resource takes exclusive ownership over managed IAM policies attached to a user. This includes removal of managed IAM policies which are not explicitly configured. To prevent persistent drift, ensure any `aws.iam.UserPolicyAttachment` resources managed alongside this resource are included in the `policyArns` argument.
///
/// &gt; Destruction of this resource means Terraform will no longer manage reconciliation of the configured policy attachments. It **will not** detach the configured policies from the user.
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
/// const example = new aws.iam.UserPolicyAttachmentsExclusive("example", {
///     userName: exampleAwsIamUser.name,
///     policyArns: [exampleAwsIamPolicy.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.UserPolicyAttachmentsExclusive("example",
///     user_name=example_aws_iam_user["name"],
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
///     var example = new Aws.Iam.UserPolicyAttachmentsExclusive("example", new()
///     {
///         UserName = exampleAwsIamUser.Name,
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
/// 		_, err := iam.NewUserPolicyAttachmentsExclusive(ctx, "example", &iam.UserPolicyAttachmentsExclusiveArgs{
/// 			UserName: pulumi.Any(exampleAwsIamUser.Name),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iam_userpolicyattachmentsexclusive" "example" {
///   user_name   = exampleAwsIamUser.name
///   policy_arns = [exampleAwsIamPolicy.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.UserPolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.UserPolicyAttachmentsExclusiveArgs;
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
///         var example = new UserPolicyAttachmentsExclusive("example", UserPolicyAttachmentsExclusiveArgs.builder()
///             .userName(exampleAwsIamUser.name())
///             .policyArns(exampleAwsIamPolicy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:UserPolicyAttachmentsExclusive
///     properties:
///       userName: ${exampleAwsIamUser.name}
///       policyArns:
///         - ${exampleAwsIamPolicy.arn}
/// ```
///
///
/// ### Disallow Managed IAM Policies
///
/// To automatically remove any configured managed IAM policies, set the `policyArns` argument to an empty list.
///
/// &gt; This will not **prevent** managed IAM policies from being assigned to a user via Terraform (or any other interface). This resource enables bringing managed IAM policy assignments into a configured state, however, this reconciliation happens only when `apply` is proactively run.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.UserPolicyAttachmentsExclusive("example", {
///     userName: exampleAwsIamUser.name,
///     policyArns: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.UserPolicyAttachmentsExclusive("example",
///     user_name=example_aws_iam_user["name"],
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
///     var example = new Aws.Iam.UserPolicyAttachmentsExclusive("example", new()
///     {
///         UserName = exampleAwsIamUser.Name,
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
/// 		_, err := iam.NewUserPolicyAttachmentsExclusive(ctx, "example", &iam.UserPolicyAttachmentsExclusiveArgs{
/// 			UserName:   pulumi.Any(exampleAwsIamUser.Name),
/// 			PolicyArns: pulumi.StringArray{},
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
/// resource "aws_iam_userpolicyattachmentsexclusive" "example" {
///   user_name   = exampleAwsIamUser.name
///   policy_arns = []
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.UserPolicyAttachmentsExclusive;
/// import com.pulumi.aws.iam.UserPolicyAttachmentsExclusiveArgs;
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
///         var example = new UserPolicyAttachmentsExclusive("example", UserPolicyAttachmentsExclusiveArgs.builder()
///             .userName(exampleAwsIamUser.name())
///             .policyArns()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:UserPolicyAttachmentsExclusive
///     properties:
///       userName: ${exampleAwsIamUser.name}
///       policyArns: []
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import exclusive management of managed IAM policy assignments using the `userName`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicyAttachmentsExclusive:UserPolicyAttachmentsExclusive example MyUser
/// ```
class UserPolicyAttachmentsExclusive extends pulumi.CustomResource {
  /// A list of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed.
  late final pulumi.Output<List<String>> policyArns;
  /// IAM user name.
  late final pulumi.Output<String> userName;

  /// Creates a new [UserPolicyAttachmentsExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPolicyAttachmentsExclusive]. {@macro pulumi_iam_user_policy_attachments_exclusive_user_policy_attachments_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPolicyAttachmentsExclusive(
    String name, {
    UserPolicyAttachmentsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicyAttachmentsExclusive:UserPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyArns = registerOutput<List<String>>('policyArns');
    userName = registerOutput<String>('userName');
  }

  /// Gets an existing [UserPolicyAttachmentsExclusive] resource's state with the given [name] and [id].
  static UserPolicyAttachmentsExclusive get(
    String name,
    pulumi.Input<String> id, {
    UserPolicyAttachmentsExclusiveState? state,
  }) {
    return UserPolicyAttachmentsExclusive._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserPolicyAttachmentsExclusive._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicyAttachmentsExclusive:UserPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyArns = registerOutput<List<String>>('policyArns');
    userName = registerOutput<String>('userName');
  }
}
