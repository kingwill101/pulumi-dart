import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_policy_assignment_args.dart';
import 'iam_policy_assignment_identities.dart';

/// Resource for managing an AWS QuickSight IAM Policy Assignment.
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
/// const example = new aws.quicksight.IamPolicyAssignment("example", {
///     assignmentName: "example",
///     assignmentStatus: "ENABLED",
///     policyArn: exampleAwsIamPolicy.arn,
///     identities: {
///         users: [exampleAwsQuicksightUser.userName],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.IamPolicyAssignment("example",
///     assignment_name="example",
///     assignment_status="ENABLED",
///     policy_arn=example_aws_iam_policy["arn"],
///     identities={
///         "users": [example_aws_quicksight_user["userName"]],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.IamPolicyAssignment("example", new()
///     {
///         AssignmentName = "example",
///         AssignmentStatus = "ENABLED",
///         PolicyArn = exampleAwsIamPolicy.Arn,
///         Identities = new Aws.Quicksight.Inputs.IamPolicyAssignmentIdentitiesArgs
///         {
///             Users = new[]
///             {
///                 exampleAwsQuicksightUser.UserName,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewIamPolicyAssignment(ctx, "example", &quicksight.IamPolicyAssignmentArgs{
/// 			AssignmentName:   pulumi.String("example"),
/// 			AssignmentStatus: pulumi.String("ENABLED"),
/// 			PolicyArn:        pulumi.Any(exampleAwsIamPolicy.Arn),
/// 			Identities: &quicksight.IamPolicyAssignmentIdentitiesArgs{
/// 				Users: pulumi.StringArray{
/// 					exampleAwsQuicksightUser.UserName,
/// 				},
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
/// import com.pulumi.aws.quicksight.IamPolicyAssignment;
/// import com.pulumi.aws.quicksight.IamPolicyAssignmentArgs;
/// import com.pulumi.aws.quicksight.inputs.IamPolicyAssignmentIdentitiesArgs;
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
///         var example = new IamPolicyAssignment("example", IamPolicyAssignmentArgs.builder()
///             .assignmentName("example")
///             .assignmentStatus("ENABLED")
///             .policyArn(exampleAwsIamPolicy.arn())
///             .identities(IamPolicyAssignmentIdentitiesArgs.builder()
///                 .users(exampleAwsQuicksightUser.userName())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:IamPolicyAssignment
///     properties:
///       assignmentName: example
///       assignmentStatus: ENABLED
///       policyArn: ${exampleAwsIamPolicy.arn}
///       identities:
///         users:
///           - ${exampleAwsQuicksightUser.userName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight IAM Policy Assignment using the AWS account ID, namespace, and assignment name separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/iamPolicyAssignment:IamPolicyAssignment example 123456789012,default,example
/// ```
class IamPolicyAssignment extends pulumi.CustomResource {
  /// Assignment ID.
  late final pulumi.Output<String> assignmentId;
  /// Name of the assignment.
  late final pulumi.Output<String> assignmentName;
  /// Status of the assignment. Valid values are `ENABLED`, `DISABLED`, and `DRAFT`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> assignmentStatus;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// Amazon QuickSight users, groups, or both to assign the policy to. See `identities` block.
  late final pulumi.Output<IamPolicyAssignmentIdentities?> identities;
  /// Namespace that contains the assignment. Defaults to `default`.
  late final pulumi.Output<String> namespace;
  /// ARN of the IAM policy to apply to the Amazon QuickSight users and groups specified in this assignment.
  late final pulumi.Output<String?> policyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [IamPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamPolicyAssignment]. {@macro pulumi_quicksight_iam_policy_assignment_iam_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamPolicyAssignment(
    String name, {
    IamPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/iamPolicyAssignment:IamPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignmentId = registerOutput<String>('assignmentId');
    this.assignmentName = registerOutput<String>('assignmentName');
    this.assignmentStatus = registerOutput<String>('assignmentStatus');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.identities = registerOutput<IamPolicyAssignmentIdentities?>('identities');
    this.namespace = registerOutput<String>('namespace');
    this.policyArn = registerOutput<String?>('policyArn');
    this.region = registerOutput<String>('region');
  }
}
