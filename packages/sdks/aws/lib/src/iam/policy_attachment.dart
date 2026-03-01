import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_args.dart';
import 'policy_attachment_state.dart';

/// Attaches a Managed IAM Policy to user(s), role(s), and/or group(s)
///
/// !> **WARNING:** The aws.iam.PolicyAttachment resource creates **exclusive** attachments of IAM policies. Across the entire AWS account, all of the users/roles/groups to which a single policy is attached must be declared by a single aws.iam.PolicyAttachment resource. This means that even any users/roles/groups that have the attached policy via any other mechanism (including other resources managed by this provider) will have that attached policy revoked by this resource. Consider `aws.iam.RolePolicyAttachment`, `aws.iam.UserPolicyAttachment`, or `aws.iam.GroupPolicyAttachment` instead. These resources do not enforce exclusive attachment of an IAM policy.
///
/// > **NOTE:** The usage of this resource conflicts with the `aws.iam.GroupPolicyAttachment`, `aws.iam.RolePolicyAttachment`, and `aws.iam.UserPolicyAttachment` resources and will permanently show a difference if both are defined.
///
/// > **NOTE:** For a given role, this resource is incompatible with using the `aws.iam.Role` resource `managed_policy_arns` argument. When using that argument and this resource, both will attempt to manage the role's managed policy attachments and the provider will show a permanent difference.
///
/// > **NOTE:** To ensure Pulumi correctly manages dependencies during updates, use a reference to the IAM resource when defining the `policy_arn` for `aws.iam.PolicyAttachment`, rather than constructing the ARN directly. For example, use `policy_arn = aws_iam_policy.example.arn` instead of `policy_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:policy/Example"`. Failing to do so may lead to errors like `DeleteConflict: Cannot delete a policy attached to entities` or `NoSuchEntity`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const user = new aws.iam.User("user", {name: "test-user"});
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
/// const group = new aws.iam.Group("group", {name: "test-group"});
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
/// const test_attach = new aws.iam.PolicyAttachment("test-attach", {
///     name: "test-attachment",
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
/// user = aws.iam.User("user", name="test-user")
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
/// group = aws.iam.Group("group", name="test-group")
/// policy = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["ec2:Describe*"],
///     "resources": ["*"],
/// }])
/// policy_policy = aws.iam.Policy("policy",
///     name="test-policy",
///     description="A test policy",
///     policy=policy.json)
/// test_attach = aws.iam.PolicyAttachment("test-attach",
///     name="test-attachment",
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
///         Name = "test-user",
///     });
///
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
///     var @group = new Aws.Iam.Group("group", new()
///     {
///         Name = "test-group",
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
///     var test_attach = new Aws.Iam.PolicyAttachment("test-attach", new()
///     {
///         Name = "test-attachment",
///         Users = new[]
///         {
///             user.Name,
///         },
///         Roles = new[]
///         {
///             role.Name,
///         },
///         Groups = new[]
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
/// 			Name: pulumi.String("test-user"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// 		group, err := iam.NewGroup(ctx, "group", &iam.GroupArgs{
/// 			Name: pulumi.String("test-group"),
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
/// 		_, err = iam.NewPolicyAttachment(ctx, "test-attach", &iam.PolicyAttachmentArgs{
/// 			Name: pulumi.String("test-attachment"),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Group;
/// import com.pulumi.aws.iam.GroupArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.PolicyAttachment;
/// import com.pulumi.aws.iam.PolicyAttachmentArgs;
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
///         var user = new User("user", UserArgs.builder()
///             .name("test-user")
///             .build());
///
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
///         var group = new Group("group", GroupArgs.builder()
///             .name("test-group")
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
///         var test_attach = new PolicyAttachment("test-attach", PolicyAttachmentArgs.builder()
///             .name("test-attachment")
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
///       name: test-user
///   role:
///     type: aws:iam:Role
///     properties:
///       name: test-role
///       assumeRolePolicy: ${assumeRole.json}
///   group:
///     type: aws:iam:Group
///     properties:
///       name: test-group
///   policyPolicy:
///     type: aws:iam:Policy
///     name: policy
///     properties:
///       name: test-policy
///       description: A test policy
///       policy: ${policy.json}
///   test-attach:
///     type: aws:iam:PolicyAttachment
///     properties:
///       name: test-attachment
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groups = registerOutput<List<String>?>('groups');
    this.name = registerOutput<String>('name');
    this.policyArn = registerOutput<String>('policyArn');
    this.roles = registerOutput<List<String>?>('roles');
    this.users = registerOutput<List<String>?>('users');
  }

  /// Gets an existing [PolicyAttachment] resource's state with the given [name] and [id].
  static PolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    PolicyAttachmentState? state,
  }) {
    return PolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.groups = registerOutput<List<String>?>('groups');
    this.name = registerOutput<String>('name');
    this.policyArn = registerOutput<String>('policyArn');
    this.roles = registerOutput<List<String>?>('roles');
    this.users = registerOutput<List<String>?>('users');
  }
}
