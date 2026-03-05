import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_set_instance_args.dart';
import 'stack_set_instance_deployment_targets.dart';
import 'stack_set_instance_operation_preferences.dart';
import 'stack_set_instance_state.dart';

/// Manages a CloudFormation StackSet Instance. Instances are managed in the account and region of the StackSet after the target account permissions have been configured. Additional information about StackSets can be found in the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html).
///
/// &gt; **NOTE:** All target accounts must have an IAM Role created that matches the name of the execution role configured in the StackSet (the `execution_role_name` argument in the `aws.cloudformation.StackSet` resource) in a trust relationship with the administrative account or administration IAM Role. The execution role must have appropriate permissions to manage resources defined in the template along with those required for StackSets to operate. See the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) for more details.
///
/// &gt; **NOTE:** To retain the Stack during resource destroy, ensure `retain_stack` has been set to `true` in the state first. This must be completed _before_ a deployment that would destroy the resource.
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
/// const example = new aws.cloudformation.StackSetInstance("example", {
///     accountId: "123456789012",
///     stackSetInstanceRegion: "us-east-1",
///     stackSetName: exampleAwsCloudformationStackSet.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudformation.StackSetInstance("example",
///     account_id="123456789012",
///     stack_set_instance_region="us-east-1",
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
///     var example = new Aws.CloudFormation.StackSetInstance("example", new()
///     {
///         AccountId = "123456789012",
///         StackSetInstanceRegion = "us-east-1",
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
/// 		_, err := cloudformation.NewStackSetInstance(ctx, "example", &cloudformation.StackSetInstanceArgs{
/// 			AccountId:              pulumi.String("123456789012"),
/// 			StackSetInstanceRegion: pulumi.String("us-east-1"),
/// 			StackSetName:           pulumi.Any(exampleAwsCloudformationStackSet.Name),
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
/// import com.pulumi.aws.cloudformation.StackSetInstance;
/// import com.pulumi.aws.cloudformation.StackSetInstanceArgs;
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
///         var example = new StackSetInstance("example", StackSetInstanceArgs.builder()
///             .accountId("123456789012")
///             .stackSetInstanceRegion("us-east-1")
///             .stackSetName(exampleAwsCloudformationStackSet.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudformation:StackSetInstance
///     properties:
///       accountId: '123456789012'
///       stackSetInstanceRegion: us-east-1
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
///         actions: ["sts:AssumeRole"],
///         effect: "Allow",
///         principals: [{
///             identifiers: [aWSCloudFormationStackSetAdministrationRole.arn],
///             type: "AWS",
///         }],
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
///     "actions": ["sts:AssumeRole"],
///     "effect": "Allow",
///     "principals": [{
///         "identifiers": [a_ws_cloud_formation_stack_set_administration_role["arn"]],
///         "type": "AWS",
///     }],
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
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Effect = "Allow",
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Identifiers: interface{}{
/// aWSCloudFormationStackSetAdministrationRole.Arn,
/// },
/// Type: "AWS",
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// aWSCloudFormationStackSetExecutionRole, err := iam.NewRole(ctx, "AWSCloudFormationStackSetExecutionRole", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy.Json),
/// Name: pulumi.String("AWSCloudFormationStackSetExecutionRole"),
/// })
/// if err != nil {
/// return err
/// }
/// // Documentation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html
/// // Additional IAM permissions necessary depend on the resources defined in the StackSet template
/// aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "cloudformation:*",
/// "s3:*",
/// "sns:*",
/// },
/// Effect: pulumi.StringRef("Allow"),
/// Resources: []string{
/// "*",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicy(ctx, "AWSCloudFormationStackSetExecutionRole_MinimumExecutionPolicy", &iam.RolePolicyArgs{
/// Name: pulumi.String("MinimumExecutionPolicy"),
/// Policy: pulumi.String(aWSCloudFormationStackSetExecutionRoleMinimumExecutionPolicy.Json),
/// Role: aWSCloudFormationStackSetExecutionRole.Name,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
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
///         final var aWSCloudFormationStackSetExecutionRoleAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers(aWSCloudFormationStackSetAdministrationRole.arn())
///                     .type("AWS")
///                     .build())
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
///           - actions:
///               - sts:AssumeRole
///             effect: Allow
///             principals:
///               - identifiers:
///                   - ${aWSCloudFormationStackSetAdministrationRole.arn}
///                 type: AWS
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
/// const example = new aws.cloudformation.StackSetInstance("example", {
///     deploymentTargets: {
///         organizationalUnitIds: [exampleAwsOrganizationsOrganization.roots[0].id],
///     },
///     stackSetInstanceRegion: "us-east-1",
///     stackSetName: exampleAwsCloudformationStackSet.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudformation.StackSetInstance("example",
///     deployment_targets={
///         "organizational_unit_ids": [example_aws_organizations_organization["roots"][0]["id"]],
///     },
///     stack_set_instance_region="us-east-1",
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
///     var example = new Aws.CloudFormation.StackSetInstance("example", new()
///     {
///         DeploymentTargets = new Aws.CloudFormation.Inputs.StackSetInstanceDeploymentTargetsArgs
///         {
///             OrganizationalUnitIds = new[]
///             {
///                 exampleAwsOrganizationsOrganization.Roots[0].Id,
///             },
///         },
///         StackSetInstanceRegion = "us-east-1",
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
/// 		_, err := cloudformation.NewStackSetInstance(ctx, "example", &cloudformation.StackSetInstanceArgs{
/// 			DeploymentTargets: &cloudformation.StackSetInstanceDeploymentTargetsArgs{
/// 				OrganizationalUnitIds: pulumi.StringArray{
/// 					exampleAwsOrganizationsOrganization.Roots[0].Id,
/// 				},
/// 			},
/// 			StackSetInstanceRegion: pulumi.String("us-east-1"),
/// 			StackSetName:           pulumi.Any(exampleAwsCloudformationStackSet.Name),
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
/// import com.pulumi.aws.cloudformation.StackSetInstance;
/// import com.pulumi.aws.cloudformation.StackSetInstanceArgs;
/// import com.pulumi.aws.cloudformation.inputs.StackSetInstanceDeploymentTargetsArgs;
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
///         var example = new StackSetInstance("example", StackSetInstanceArgs.builder()
///             .deploymentTargets(StackSetInstanceDeploymentTargetsArgs.builder()
///                 .organizationalUnitIds(exampleAwsOrganizationsOrganization.roots()[0].id())
///                 .build())
///             .stackSetInstanceRegion("us-east-1")
///             .stackSetName(exampleAwsCloudformationStackSet.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudformation:StackSetInstance
///     properties:
///       deploymentTargets:
///         organizationalUnitIds:
///           - ${exampleAwsOrganizationsOrganization.roots[0].id}
///       stackSetInstanceRegion: us-east-1
///       stackSetName: ${exampleAwsCloudformationStackSet.name}
/// ```
///
///
/// ## Import
///
/// Import CloudFormation StackSet Instances that target AWS Organizational Units using the StackSet name, a slash (`/`) separated list of organizational unit IDs, and target AWS Region separated by commas (`,`). For example:
///
///
/// Import CloudFormation StackSet Instances when acting a delegated administrator in a member account using the StackSet name, target AWS account ID or slash (`/`) separated list of organizational unit IDs, target AWS Region and `call_as` value separated by commas (`,`). For example:
///
///
/// Using `pulumi import`, import CloudFormation StackSet Instances that target an AWS Account ID using the StackSet name, target AWS account ID, and target AWS Region separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSetInstance:StackSetInstance example example,123456789012,us-east-1
/// ```
///
/// Using `pulumi import`, import CloudFormation StackSet Instances that target AWS Organizational Units using the StackSet name, a slash (`/`) separated list of organizational unit IDs, and target AWS Region separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSetInstance:StackSetInstance example example,ou-sdas-123123123/ou-sdas-789789789,us-east-1
/// ```
///
/// Using `pulumi import`, import CloudFormation StackSet Instances when acting a delegated administrator in a member account using the StackSet name, target AWS account ID or slash (`/`) separated list of organizational unit IDs, target AWS Region and `call_as` value separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSetInstance:StackSetInstance example example,ou-sdas-123123123/ou-sdas-789789789,us-east-1,DELEGATED_ADMIN
/// ```
class StackSetInstance extends pulumi.CustomResource {
  /// Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  late final pulumi.Output<String> accountId;

  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  late final pulumi.Output<String?> callAs;

  /// AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below.
  late final pulumi.Output<StackSetInstanceDeploymentTargets?>
  deploymentTargets;

  /// Preferences for how AWS CloudFormation performs a stack set operation.
  late final pulumi.Output<StackSetInstanceOperationPreferences?>
  operationPreferences;

  /// Organizational unit ID in which the stack is deployed.
  late final pulumi.Output<String> organizationalUnitId;

  /// Key-value map of input parameters to override from the StackSet for this Instance.
  late final pulumi.Output<Map<String, String>?> parameterOverrides;

  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stack_set_instance_region` instead.
  late final pulumi.Output<String> region;

  /// During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  late final pulumi.Output<bool?> retainStack;

  /// Stack identifier.
  late final pulumi.Output<String> stackId;

  /// List of stack instances created from an organizational unit deployment target. This will only be populated when `deployment_targets` is set. See `stack_instance_summaries`.
  late final pulumi.Output<List<Map<String, dynamic>>> stackInstanceSummaries;

  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  late final pulumi.Output<String> stackSetInstanceRegion;

  /// Name of the StackSet.
  late final pulumi.Output<String> stackSetName;

  /// Creates a new [StackSetInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackSetInstance]. {@macro pulumi_cloudformation_stack_set_instance_stack_set_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackSetInstance(
    String name, {
    StackSetInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudformation/stackSetInstance:StackSetInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    callAs = registerOutput<String?>('callAs');
    deploymentTargets = registerOutput<StackSetInstanceDeploymentTargets?>(
      'deploymentTargets',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StackSetInstanceDeploymentTargets.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    operationPreferences =
        registerOutput<StackSetInstanceOperationPreferences?>(
          'operationPreferences',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return StackSetInstanceOperationPreferences.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    organizationalUnitId = registerOutput<String>('organizationalUnitId');
    parameterOverrides = registerOutput<Map<String, String>?>(
      'parameterOverrides',
    );
    region = registerOutput<String>('region');
    retainStack = registerOutput<bool?>('retainStack');
    stackId = registerOutput<String>('stackId');
    stackInstanceSummaries = registerOutput<List<Map<String, dynamic>>>(
      'stackInstanceSummaries',
    );
    stackSetInstanceRegion = registerOutput<String>('stackSetInstanceRegion');
    stackSetName = registerOutput<String>('stackSetName');
  }

  /// Gets an existing [StackSetInstance] resource's state with the given [name] and [id].
  static StackSetInstance get(
    String name,
    pulumi.Input<String> id, {
    StackSetInstanceState? state,
  }) {
    return StackSetInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StackSetInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudformation/stackSetInstance:StackSetInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    callAs = registerOutput<String?>('callAs');
    deploymentTargets = registerOutput<StackSetInstanceDeploymentTargets?>(
      'deploymentTargets',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StackSetInstanceDeploymentTargets.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    operationPreferences =
        registerOutput<StackSetInstanceOperationPreferences?>(
          'operationPreferences',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return StackSetInstanceOperationPreferences.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    organizationalUnitId = registerOutput<String>('organizationalUnitId');
    parameterOverrides = registerOutput<Map<String, String>?>(
      'parameterOverrides',
    );
    region = registerOutput<String>('region');
    retainStack = registerOutput<bool?>('retainStack');
    stackId = registerOutput<String>('stackId');
    stackInstanceSummaries = registerOutput<List<Map<String, dynamic>>>(
      'stackInstanceSummaries',
    );
    stackSetInstanceRegion = registerOutput<String>('stackSetInstanceRegion');
    stackSetName = registerOutput<String>('stackSetName');
  }
}
