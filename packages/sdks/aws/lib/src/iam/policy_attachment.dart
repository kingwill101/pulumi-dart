import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_args.dart';
import 'policy_attachment_state.dart';

/// Attaches a Managed IAM Policy to user(s), role(s), and/or group(s)
///
/// &gt; **WARNING:** The aws.iam.PolicyAttachment resource creates **exclusive** attachments of IAM policies. Across the entire AWS account, all of the users/roles/groups to which a single policy is attached must be declared by a single aws.iam.PolicyAttachment resource. This means that even any users/roles/groups that have the attached policy via any other mechanism (including other resources managed by this provider) will have that attached policy revoked by this resource. Consider `aws.iam.RolePolicyAttachment`, `aws.iam.UserPolicyAttachment`, or `aws.iam.GroupPolicyAttachment` instead. These resources do not enforce exclusive attachment of an IAM policy.
///
/// &gt; **NOTE:** The usage of this resource conflicts with the `aws.iam.GroupPolicyAttachment`, `aws.iam.RolePolicyAttachment`, and `aws.iam.UserPolicyAttachment` resources and will permanently show a difference if both are defined.
///
/// &gt; **NOTE:** For a given role, this resource is incompatible with using the `aws.iam.Role` resource `managedPolicyArns` argument. When using that argument and this resource, both will attempt to manage the role's managed policy attachments and the provider will show a permanent difference.
///
/// &gt; **NOTE:** To ensure Pulumi correctly manages dependencies during updates, use a reference to the IAM resource when defining the `policyArn` for `aws.iam.PolicyAttachment`, rather than constructing the ARN directly. For example, use `policyArn = aws_iam_policy.example.arn` instead of `policyArn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/Example"`. Failing to do so may lead to errors like `DeleteConflict: Cannot delete a policy attached to entities` or `NoSuchEntity`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const user = new aws.iam.User("user", {name: "example-user"});
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["ec2.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const role = new aws.iam.Role("role", {
///     name: "example-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const group = new aws.iam.Group("group", {name: "example-group"});
/// const policy = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["ec2:Describe*"],
///         resources: ["*"],
///     }],
/// });
/// const policyPolicy = new aws.iam.Policy("policy", {
///     name: "example-policy",
///     description: "An example policy",
///     policy: policy.then(policy => policy.json),
/// });
/// const example_attach = new aws.iam.PolicyAttachment("example-attach", {
///     name: "example-attachment",
///     users: [user.name],
///     roles: [role.name],
///     groups: [group.name],
///     policyArn: policyPolicy.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user = aws.iam.User("user", name="example-user")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["ec2.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// role = aws.iam.Role("role",
///     name="example-role",
///     assume_role_policy=assume_role.json)
/// group = aws.iam.Group("group", name="example-group")
/// policy = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["ec2:Describe*"],
///     "resources": ["*"],
/// }])
/// policy_policy = aws.iam.Policy("policy",
///     name="example-policy",
///     description="An example policy",
///     policy=policy.json)
/// example_attach = aws.iam.PolicyAttachment("example-attach",
///     name="example-attachment",
///     users=[user.name],
///     roles=[role.name],
///     groups=[group.name],
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
///     var user = new Aws.Iam.User("user", new()
///     {
///         Name = "example-user",
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
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
///                 Effect = "Allow",
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
///         Name = "example-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var @group = new Aws.Iam.Group("group", new()
///     {
///         Name = "example-group",
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
///         Name = "example-policy",
///         Description = "An example policy",
///         PolicyDocument = policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example_attach = new Aws.Iam.PolicyAttachment("example-attach", new()
///     {
///         Name = "example-attachment",
///         Users =
///         {
///             user.Name,
///         },
///         Roles =
///         {
///             role.Name,
///         },
///         Groups =
///         {
///             @group.Name,
///         },
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
/// 		user, err := iam.NewUser(ctx, "user", &iam.UserArgs{
/// 			Name: pulumi.String("example-user"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"ec2.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
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
/// 			Name:             pulumi.String("example-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group, err := iam.NewGroup(ctx, "group", &iam.GroupArgs{
/// 			Name: pulumi.String("example-group"),
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
/// 			Name:        pulumi.String("example-policy"),
/// 			Description: pulumi.String("An example policy"),
/// 			Policy:      pulumi.String(policy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewPolicyAttachment(ctx, "example-attach", &iam.PolicyAttachmentArgs{
/// 			Name: pulumi.String("example-attachment"),
/// 			Users: pulumi.Array{
/// 				user.Name,
/// 			},
/// 			Roles: pulumi.Array{
/// 				role.Name,
/// 			},
/// 			Groups: pulumi.Array{
/// 				group.Name,
/// 			},
/// 			PolicyArn: policyPolicy.Arn,
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["ec2.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "policy" {
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:Describe*"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_iam_user" "user" {
///   name = "example-user"
/// }
/// resource "aws_iam_role" "role" {
///   name               = "example-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_group" "group" {
///   name = "example-group"
/// }
/// resource "aws_iam_policy" "policy" {
///   name        = "example-policy"
///   description = "An example policy"
///   policy      = data.aws_iam_getpolicydocument.policy.json
/// }
/// resource "aws_iam_policyattachment" "example-attach" {
///   name       = "example-attachment"
///   users      = [aws_iam_user.user.name]
///   roles      = [aws_iam_role.role.name]
///   groups     = [aws_iam_group.group.name]
///   policy_arn = aws_iam_policy.policy.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Group;
/// import com.pulumi.aws.iam.GroupArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.PolicyAttachment;
/// import com.pulumi.aws.iam.PolicyAttachmentArgs;
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
///         var user = new User("user", UserArgs.builder()
///             .name("example-user")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("ec2.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("example-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var group = new Group("group", GroupArgs.builder()
///             .name("example-group")
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
///             .name("example-policy")
///             .description("An example policy")
///             .policy(policy.json())
///             .build());
///
///         var example_attach = new PolicyAttachment("example-attach", PolicyAttachmentArgs.builder()
///             .name("example-attachment")
///             .users(user.name())
///             .roles(role.name())
///             .groups(group.name())
///             .policyArn(policyPolicy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   user:
///     type: aws:iam:User
///     properties:
///       name: example-user
///   role:
///     type: aws:iam:Role
///     properties:
///       name: example-role
///       assumeRolePolicy: ${assumeRole.json}
///   group:
///     type: aws:iam:Group
///     properties:
///       name: example-group
///   policyPolicy:
///     type: aws:iam:Policy
///     name: policy
///     properties:
///       name: example-policy
///       description: An example policy
///       policy: ${policy.json}
///   example-attach:
///     type: aws:iam:PolicyAttachment
///     properties:
///       name: example-attachment
///       users:
///         - ${user.name}
///       roles:
///         - ${role.name}
///       groups:
///         - ${group.name}
///       policyArn: ${policyPolicy.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - ec2.amazonaws.com
///             effect: Allow
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
class PolicyAttachment extends pulumi.CustomResource {
  /// Group(s) the policy should be applied to.
  late final pulumi.Output<List<String>?> groups;
  /// Name of the attachment. This cannot be an empty string.
  late final pulumi.Output<String> name;
  /// ARN of the policy you want to apply. Typically this should be a reference to the ARN of another resource to ensure dependency ordering, such as `aws_iam_policy.example.arn`.
  late final pulumi.Output<String> policyArn;
  /// Role(s) the policy should be applied to.
  late final pulumi.Output<List<String>?> roles;
  /// User(s) the policy should be applied to.
  late final pulumi.Output<List<String>?> users;

  /// Creates a new [PolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyAttachment]. {@macro pulumi_iam_policy_attachment_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyAttachment(
    String name, {
    PolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    groups = registerOutput<List<String>?>('groups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    policyArn = registerOutput<String>('policyArn');
    roles = registerOutput<List<String>?>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    users = registerOutput<List<String>?>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [PolicyAttachment] resource's state with the given [name] and [id].
  static PolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    PolicyAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groups = registerOutput<List<String>?>('groups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    policyArn = registerOutput<String>('policyArn');
    roles = registerOutput<List<String>?>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    users = registerOutput<List<String>?>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [PolicyAttachment] resource.
  PolicyAttachment.reference(String urn)
    : super(
        'aws:iam/policyAttachment:PolicyAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    groups = registerOutput<List<String>?>('groups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    policyArn = registerOutput<String>('policyArn');
    roles = registerOutput<List<String>?>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    users = registerOutput<List<String>?>('users', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
