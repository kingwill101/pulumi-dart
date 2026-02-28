import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_policy_attachment_args.dart';

/// Attaches a Managed IAM Policy to an IAM role
///
/// > **NOTE:** The usage of this resource conflicts with the `aws.iam.PolicyAttachment` resource and will permanently show a difference if both are defined.
///
/// > **NOTE:** For a given role, this resource is incompatible with using the `aws.iam.Role` resource `managed_policy_arns` argument. When using that argument and this resource, both will attempt to manage the role's managed policy attachments and Pulumi will show a permanent difference.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["ec2.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const role = new aws.iam.Role("role", {
///     name: "test-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const policy = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["ec2:Describe*"],
///         resources: ["*"],
///     }],
/// });
/// const policyPolicy = new aws.iam.Policy("policy", {
///     name: "test-policy",
///     description: "A test policy",
///     policy: policy.then(policy => policy.json),
/// });
/// const test_attach = new aws.iam.RolePolicyAttachment("test-attach", {
///     role: role.name,
///     policyArn: policyPolicy.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["ec2.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// role = aws.iam.Role("role",
///     name="test-role",
///     assume_role_policy=assume_role.json)
/// policy = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["ec2:Describe*"],
///     "resources": ["*"],
/// }])
/// policy_policy = aws.iam.Policy("policy",
///     name="test-policy",
///     description="A test policy",
///     policy=policy.json)
/// test_attach = aws.iam.RolePolicyAttachment("test-attach",
///     role=role.name,
///     policy_arn=policy_policy.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "ec2.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var role = new Aws.Iam.Role("role", new()
///     {
///         Name = "test-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:Describe*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var policyPolicy = new Aws.Iam.Policy("policy", new()
///     {
///         Name = "test-policy",
///         Description = "A test policy",
///         PolicyDocument = policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var test_attach = new Aws.Iam.RolePolicyAttachment("test-attach", new()
///     {
///         Role = role.Name,
///         PolicyArn = policyPolicy.Arn,
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
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"ec2.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		role, err := iam.NewRole(ctx, "role", &iam.RoleArgs{
/// 			Name:             pulumi.String("test-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"ec2:Describe*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policyPolicy, err := iam.NewPolicy(ctx, "policy", &iam.PolicyArgs{
/// 			Name:        pulumi.String("test-policy"),
/// 			Description: pulumi.String("A test policy"),
/// 			Policy:      pulumi.String(policy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "test-attach", &iam.RolePolicyAttachmentArgs{
/// 			Role:      role.Name,
/// 			PolicyArn: policyPolicy.Arn,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("ec2.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("test-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("ec2:Describe*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var policyPolicy = new Policy("policyPolicy", PolicyArgs.builder()
///             .name("test-policy")
///             .description("A test policy")
///             .policy(policy.json())
///             .build());
///
///         var test_attach = new RolePolicyAttachment("test-attach", RolePolicyAttachmentArgs.builder()
///             .role(role.name())
///             .policyArn(policyPolicy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   role:
///     type: aws:iam:Role
///     properties:
///       name: test-role
///       assumeRolePolicy: ${assumeRole.json}
///   policyPolicy:
///     type: aws:iam:Policy
///     name: policy
///     properties:
///       name: test-policy
///       description: A test policy
///       policy: ${policy.json}
///   test-attach:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       role: ${role.name}
///       policyArn: ${policyPolicy.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - ec2.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - ec2:Describe*
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `role` (String) Name of the IAM role.
/// * `policy_arn` (String) ARN of the IAM policy.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM role policy attachments using the role name and policy arn separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePolicyAttachment:RolePolicyAttachment example test-role/arn:aws:iam::xxxxxxxxxxxx:policy/test-policy
/// ```
class RolePolicyAttachment extends pulumi.CustomResource {
  /// The ARN of the policy you want to apply
  late final pulumi.Output<String> policyArn;

  /// The name of the IAM role to which the policy should be applied
  late final pulumi.Output<String> role;

  /// Creates a new [RolePolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolePolicyAttachment]. {@macro pulumi_iam_role_policy_attachment_role_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolePolicyAttachment(
    String name, {
    RolePolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/rolePolicyAttachment:RolePolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyArn = registerOutput<String>('policyArn');
    this.role = registerOutput<String>('role');
  }
}
