import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_instances_args.dart';
import 'stack_instances_deployment_targets.dart';
import 'stack_instances_operation_preferences.dart';
import 'stack_instances_stack_instance_summary.dart';
import 'stack_instances_state.dart';

/// Manages CloudFormation stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. Additional information about stacks can be found in the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html).
///
/// &gt; **NOTE:** This resource will manage all stack instances for the specified `stackSetName`. If you create stack instances outside of Terraform or import existing infrastructure, ensure that your configuration includes all accounts and regions where stack instances exist for the stack set. Failing to include all accounts and regions will cause Terraform to continuously report differences between your configuration and the actual infrastructure.
///
/// &gt; **NOTE:** All target accounts must have an IAM Role created that matches the name of the execution role configured in the stack (the `executionRoleName` argument in the `aws.cloudformation.StackSet` resource) in a trust relationship with the administrative account or administration IAM Role. The execution role must have appropriate permissions to manage resources defined in the template along with those required for stacks to operate. See the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) for more details.
///
/// &gt; **NOTE:** To retain the Stack during Terraform resource destroy, ensure `retainStacks = true` has been successfully applied into the Terraform state first. This must be completed _before_ an apply that would destroy the resource.
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
/// const example = new aws.cloudformation.StackInstances("example", {
///     accounts: [
///         "123456789012",
///         "234567890123",
///     ],
///     regions: [
///         "us-east-1",
///         "us-west-2",
///     ],
///     stackSetName: exampleAwsCloudformationStackSet.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudformation.StackInstances("example",
///     accounts=[
///         "123456789012",
///         "234567890123",
///     ],
///     regions=[
///         "us-east-1",
///         "us-west-2",
///     ],
///     stack_set_name=example_aws_cloudformation_stack_set["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFormation.StackInstances("example", new()
///     {
///         Accounts = new[]
///         {
///             "123456789012",
///             "234567890123",
///         },
///         Regions = new[]
///         {
///             "us-east-1",
///             "us-west-2",
///         },
///         StackSetName = exampleAwsCloudformationStackSet.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudformation.NewStackInstances(ctx, "example", &cloudformation.StackInstancesArgs{
/// 			Accounts: pulumi.StringArray{
/// 				pulumi.String("123456789012"),
/// 				pulumi.String("234567890123"),
/// 			},
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("us-west-2"),
/// 			},
/// 			StackSetName: pulumi.Any(exampleAwsCloudformationStackSet.Name),
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
/// resource "aws_cloudformation_stackinstances" "example" {
///   accounts       = ["123456789012", "234567890123"]
///   regions        = ["us-east-1", "us-west-2"]
///   stack_set_name = exampleAwsCloudformationStackSet.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudformation.StackInstances;
/// import com.pulumi.aws.cloudformation.StackInstancesArgs;
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
///         var example = new StackInstances("example", StackInstancesArgs.builder()
///             .accounts(
///                 "123456789012",
///                 "234567890123")
///             .regions(
///                 "us-east-1",
///                 "us-west-2")
///             .stackSetName(exampleAwsCloudformationStackSet.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudformation:StackInstances
///     properties:
///       accounts:
///         - '123456789012'
///         - '234567890123'
///       regions:
///         - us-east-1
///         - us-west-2
///       stackSetName: ${exampleAwsCloudformationStackSet.name}
/// ```
///
///
/// ### Example IAM Setup in Target Account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             identifiers: [aWSCloudFormationStackSetAdministrationRole.arn],
///             type: "AWS",
///         }],
///         actions: ["sts:AssumeRole"],
///         effect: "Allow",
///     }],
/// });
/// const aWSCloudFormationStackSetExecutionRole = new aws.iam.Role("AWSCloudFormationStackSetExecutionRole", {
///     assumeRolePolicy: aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.then(aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy => aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.json),
///     name: "AWSCloudFormationStackSetExecutionRole",
/// });
/// // Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
/// // Additional IAM permissions necessary depend on the resources defined in the StackSet template
/// const aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: [
///             "cloudformation:*",
///             "s3:*",
///             "sns:*",
///         ],
///         effect: "Allow",
///         resources: ["*"],
///     }],
/// });
/// const aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicyRolePolicy = new aws.iam.RolePolicy("AWSCloudFormationStackSetExecutionRole_MinimumExecutionPolicy", {
///     name: "MinimumExecutionPolicy",
///     policy: aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.then(aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy => aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.json),
///     role: aWSCloudFormationStackSetExecutionRole.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// a_ws_cloud_formation_stack_set_execution_role_assume_role_policy = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "identifiers": [a_ws_cloud_formation_stack_set_administration_role["arn"]],
///         "type": "AWS",
///     }],
///     "actions": ["sts:AssumeRole"],
///     "effect": "Allow",
/// }])
/// a_ws_cloud_formation_stack_set_execution_role = aws.iam.Role("AWSCloudFormationStackSetExecutionRole",
///     assume_role_policy=a_ws_cloud_formation_stack_set_execution_role_assume_role_policy.json,
///     name="AWSCloudFormationStackSetExecutionRole")
/// # Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
/// # Additional IAM permissions necessary depend on the resources defined in the StackSet template
/// a_ws_cloud_formation_stack_set_execution_role_minimum_execution_policy = aws.iam.get_policy_document(statements=[{
///     "actions": [
///         "cloudformation:*",
///         "s3:*",
///         "sns:*",
///     ],
///     "effect": "Allow",
///     "resources": ["*"],
/// }])
/// a_ws_cloud_formation_stack_set_execution_role_minimum_execution_policy_role_policy = aws.iam.RolePolicy("AWSCloudFormationStackSetExecutionRole_MinimumExecutionPolicy",
///     name="MinimumExecutionPolicy",
///     policy=a_ws_cloud_formation_stack_set_execution_role_minimum_execution_policy.json,
///     role=a_ws_cloud_formation_stack_set_execution_role.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             aWSCloudFormationStackSetAdministrationRole.Arn,
///                         },
///                         Type = "AWS",
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Effect = "Allow",
///             },
///         },
///     });
///
///     var aWSCloudFormationStackSetExecutionRole = new Aws.Iam.Role("AWSCloudFormationStackSetExecutionRole", new()
///     {
///         AssumeRolePolicy = aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Name = "AWSCloudFormationStackSetExecutionRole",
///     });
///
///     // Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
///     // Additional IAM permissions necessary depend on the resources defined in the StackSet template
///     var aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "cloudformation:*",
///                     "s3:*",
///                     "sns:*",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicyRolePolicy = new Aws.Iam.RolePolicy("AWSCloudFormationStackSetExecutionRole_MinimumExecutionPolicy", new()
///     {
///         Name = "MinimumExecutionPolicy",
///         Policy = aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Role = aWSCloudFormationStackSetExecutionRole.Name,
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
/// 		aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Identifiers: pulumi.StringArray{
/// 								aWSCloudFormationStackSetAdministrationRole.Arn,
/// 							},
/// 							Type: "AWS",
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		aWSCloudFormationStackSetExecutionRole, err := iam.NewRole(ctx, "AWSCloudFormationStackSetExecutionRole", &iam.RoleArgs{
/// 			AssumeRolePolicy: pulumi.String(aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.Json),
/// 			Name:             pulumi.String("AWSCloudFormationStackSetExecutionRole"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
/// 		// Additional IAM permissions necessary depend on the resources defined in the StackSet template
/// 		aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"cloudformation:*",
/// 						"s3:*",
/// 						"sns:*",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "AWSCloudFormationStackSetExecutionRole_MinimumExecutionPolicy", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("MinimumExecutionPolicy"),
/// 			Policy: pulumi.String(aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.Json),
/// 			Role:   aWSCloudFormationStackSetExecutionRole.Name,
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
/// data "aws_iam_getpolicydocument" "aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy" {
///   statements {
///     principals {
///       identifiers = [aWSCloudFormationStackSetAdministrationRole.arn]
///       type        = "AWS"
///     }
///     actions = ["sts:AssumeRole"]
///     effect  = "Allow"
///   }
/// }
/// data "aws_iam_getpolicydocument" "aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy" {
///   statements {
///     actions   = ["cloudformation:*", "s3:*", "sns:*"]
///     effect    = "Allow"
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_iam_role" "AWSCloudFormationStackSetExecutionRole" {
///   assume_role_policy = data.aws_iam_getpolicydocument.aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.json
///   name               = "AWSCloudFormationStackSetExecutionRole"
/// }
/// resource "aws_iam_rolepolicy" "AWSCloudFormationStackSetExecutionRole_MinimumExecutionPolicy" {
///   name   = "MinimumExecutionPolicy"
///   policy = data.aws_iam_getpolicydocument.aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.json
///   role   = aws_iam_role.AWSCloudFormationStackSetExecutionRole.name
/// }
/// # Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
/// # Additional IAM permissions necessary depend on the resources defined in the StackSet template
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
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
///         final var aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers(aWSCloudFormationStackSetAdministrationRole.arn())
///                     .type("AWS")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .effect("Allow")
///                 .build())
///             .build());
///
///         var aWSCloudFormationStackSetExecutionRole = new Role("aWSCloudFormationStackSetExecutionRole", RoleArgs.builder()
///             .assumeRolePolicy(aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.json())
///             .name("AWSCloudFormationStackSetExecutionRole")
///             .build());
///
///         // Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
///         // Additional IAM permissions necessary depend on the resources defined in the StackSet template
///         final var aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions(
///                     "cloudformation:*",
///                     "s3:*",
///                     "sns:*")
///                 .effect("Allow")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicyRolePolicy = new RolePolicy("aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicyRolePolicy", RolePolicyArgs.builder()
///             .name("MinimumExecutionPolicy")
///             .policy(aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.json())
///             .role(aWSCloudFormationStackSetExecutionRole.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   aWSCloudFormationStackSetExecutionRole:
///     type: aws:iam:Role
///     name: AWSCloudFormationStackSetExecutionRole
///     properties:
///       assumeRolePolicy: ${aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.json}
///       name: AWSCloudFormationStackSetExecutionRole
///   aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicyRolePolicy:
///     type: aws:iam:RolePolicy
///     name: AWSCloudFormationStackSetExecutionRole_MinimumExecutionPolicy
///     properties:
///       name: MinimumExecutionPolicy
///       policy: ${aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.json}
///       role: ${aWSCloudFormationStackSetExecutionRole.name}
/// variables:
///   aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - identifiers:
///                   - ${aWSCloudFormationStackSetAdministrationRole.arn}
///                 type: AWS
///             actions:
///               - sts:AssumeRole
///             effect: Allow
///   # Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
///   # Additional IAM permissions necessary depend on the resources defined in the StackSet template
///   aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - cloudformation:*
///               - s3:*
///               - sns:*
///             effect: Allow
///             resources:
///               - '*'
/// ```
///
///
/// ### Example Deployment across Organizations account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudformation.StackInstances("example", {
///     deploymentTargets: {
///         organizationalUnitIds: [exampleAwsOrganizationsOrganization.roots[0].id],
///     },
///     regions: [
///         "us-west-2",
///         "us-east-1",
///     ],
///     stackSetName: exampleAwsCloudformationStackSet.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudformation.StackInstances("example",
///     deployment_targets={
///         "organizational_unit_ids": [example_aws_organizations_organization["roots"][0]["id"]],
///     },
///     regions=[
///         "us-west-2",
///         "us-east-1",
///     ],
///     stack_set_name=example_aws_cloudformation_stack_set["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFormation.StackInstances("example", new()
///     {
///         DeploymentTargets = new Aws.CloudFormation.Inputs.StackInstancesDeploymentTargetsArgs
///         {
///             OrganizationalUnitIds = new[]
///             {
///                 exampleAwsOrganizationsOrganization.Roots[0].Id,
///             },
///         },
///         Regions = new[]
///         {
///             "us-west-2",
///             "us-east-1",
///         },
///         StackSetName = exampleAwsCloudformationStackSet.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudformation.NewStackInstances(ctx, "example", &cloudformation.StackInstancesArgs{
/// 			DeploymentTargets: &cloudformation.StackInstancesDeploymentTargetsArgs{
/// 				OrganizationalUnitIds: pulumi.StringArray{
/// 					exampleAwsOrganizationsOrganization.Roots[0].Id,
/// 				},
/// 			},
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-west-2"),
/// 				pulumi.String("us-east-1"),
/// 			},
/// 			StackSetName: pulumi.Any(exampleAwsCloudformationStackSet.Name),
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
/// resource "aws_cloudformation_stackinstances" "example" {
///   deployment_targets = {
///     organizational_unit_ids = [exampleAwsOrganizationsOrganization.roots[0].id]
///   }
///   regions        = ["us-west-2", "us-east-1"]
///   stack_set_name = exampleAwsCloudformationStackSet.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudformation.StackInstances;
/// import com.pulumi.aws.cloudformation.StackInstancesArgs;
/// import com.pulumi.aws.cloudformation.inputs.StackInstancesDeploymentTargetsArgs;
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
///         var example = new StackInstances("example", StackInstancesArgs.builder()
///             .deploymentTargets(StackInstancesDeploymentTargetsArgs.builder()
///                 .organizationalUnitIds(exampleAwsOrganizationsOrganization.roots()[0].id())
///                 .build())
///             .regions(
///                 "us-west-2",
///                 "us-east-1")
///             .stackSetName(exampleAwsCloudformationStackSet.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudformation:StackInstances
///     properties:
///       deploymentTargets:
///         organizationalUnitIds:
///           - ${exampleAwsOrganizationsOrganization.roots[0].id}
///       regions:
///         - us-west-2
///         - us-east-1
///       stackSetName: ${exampleAwsCloudformationStackSet.name}
/// ```
///
///
/// ## Import
///
/// Import CloudFormation stack instances that target OUs, using the stack set name, `callAs`, and "OU" separated by commas (`,`). For example:
///
///
/// Using `pulumi import`, import CloudFormation stack instances using the stack set name and `callAs` separated by commas (`,`). If you are importing a stack instance targeting OUs, see the example below. For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackInstances:StackInstances example example,SELF
/// ```
///
/// Using `pulumi import`, Import CloudFormation stack instances that target OUs, using the stack set name, `callAs`, and "OU" separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackInstances:StackInstances example example,SELF,OU
/// ```
class StackInstances extends pulumi.CustomResource {
  /// Accounts where you want to create stack instances in the specified `regions`. You can specify either `accounts` or `deploymentTargets`, but not both.
  late final pulumi.Output<List<String>> accounts;
  /// Whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  late final pulumi.Output<String?> callAs;
  /// AWS Organizations accounts for which to create stack instances in the `regions`. stack sets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for most of this argument. See deploymentTargets below.
  late final pulumi.Output<StackInstancesDeploymentTargets?> deploymentTargets;
  /// Preferences for how AWS CloudFormation performs a stack set operation. See operationPreferences below.
  late final pulumi.Output<StackInstancesOperationPreferences?> operationPreferences;
  /// Key-value map of input parameters to override from the stack set for these instances. This argument's drift detection is limited to the first account and region since each instance can have unique parameters.
  late final pulumi.Output<Map<String, String>?> parameterOverrides;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Regions where you want to create stack instances in the specified `accounts`.
  late final pulumi.Output<List<String>> regions;
  /// Whether to remove the stack instances from the stack set, but not delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. To retain the stack, ensure `retainStacks = true` has been successfully applied _before_ an apply that would destroy the resource. Defaults to `false`.
  late final pulumi.Output<bool?> retainStacks;
  /// List of stack instances created from an organizational unit deployment target. This may not always be set depending on whether CloudFormation returns summaries for your configuration. See `stackInstanceSummaries`.
  late final pulumi.Output<List<StackInstancesStackInstanceSummary>> stackInstanceSummaries;
  /// Name or unique ID of the stack set that the stack instance is associated with.
  late final pulumi.Output<String> stackSetId;
  /// Name of the stack set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> stackSetName;

  /// Creates a new [StackInstances].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackInstances]. {@macro pulumi_cloudformation_stack_instances_stack_instances_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackInstances(
    String name, {
    StackInstancesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/stackInstances:StackInstances',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accounts = registerOutput<List<String>>('accounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    callAs = registerOutput<String?>('callAs');
    deploymentTargets = registerOutput<StackInstancesDeploymentTargets?>('deploymentTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackInstancesDeploymentTargets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operationPreferences = registerOutput<StackInstancesOperationPreferences?>('operationPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackInstancesOperationPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parameterOverrides = registerOutput<Map<String, String>?>('parameterOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    retainStacks = registerOutput<bool?>('retainStacks');
    stackInstanceSummaries = registerOutput<List<StackInstancesStackInstanceSummary>>('stackInstanceSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackInstancesStackInstanceSummary>(guardedValue, (value) => StackInstancesStackInstanceSummary.fromMap((value as Map).cast<String, dynamic>())); });
    stackSetId = registerOutput<String>('stackSetId');
    stackSetName = registerOutput<String>('stackSetName');
  }

  /// Gets an existing [StackInstances] resource's state with the given [name] and [id].
  static StackInstances get(
    String name,
    pulumi.Input<String> id, {
    StackInstancesState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StackInstances._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StackInstances._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/stackInstances:StackInstances',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accounts = registerOutput<List<String>>('accounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    callAs = registerOutput<String?>('callAs');
    deploymentTargets = registerOutput<StackInstancesDeploymentTargets?>('deploymentTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackInstancesDeploymentTargets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operationPreferences = registerOutput<StackInstancesOperationPreferences?>('operationPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackInstancesOperationPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parameterOverrides = registerOutput<Map<String, String>?>('parameterOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    retainStacks = registerOutput<bool?>('retainStacks');
    stackInstanceSummaries = registerOutput<List<StackInstancesStackInstanceSummary>>('stackInstanceSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackInstancesStackInstanceSummary>(guardedValue, (value) => StackInstancesStackInstanceSummary.fromMap((value as Map).cast<String, dynamic>())); });
    stackSetId = registerOutput<String>('stackSetId');
    stackSetName = registerOutput<String>('stackSetName');
  }

  /// Creates a typed reference to an existing [StackInstances] resource.
  StackInstances.reference(String urn)
    : super(
        'aws:cloudformation/stackInstances:StackInstances',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accounts = registerOutput<List<String>>('accounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    callAs = registerOutput<String?>('callAs');
    deploymentTargets = registerOutput<StackInstancesDeploymentTargets?>('deploymentTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackInstancesDeploymentTargets.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operationPreferences = registerOutput<StackInstancesOperationPreferences?>('operationPreferences', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StackInstancesOperationPreferences.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parameterOverrides = registerOutput<Map<String, String>?>('parameterOverrides', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    retainStacks = registerOutput<bool?>('retainStacks');
    stackInstanceSummaries = registerOutput<List<StackInstancesStackInstanceSummary>>('stackInstanceSummaries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StackInstancesStackInstanceSummary>(guardedValue, (value) => StackInstancesStackInstanceSummary.fromMap((value as Map).cast<String, dynamic>())); });
    stackSetId = registerOutput<String>('stackSetId');
    stackSetName = registerOutput<String>('stackSetName');
  }
}
