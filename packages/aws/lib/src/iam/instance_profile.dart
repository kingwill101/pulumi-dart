import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_profile_args.dart';

/// Provides an IAM instance profile.
///
/// > **NOTE:** When managing instance profiles, remember that the `name` attribute must always be unique. This means that even if you have different `role` or `path` values, duplicating an existing instance profile `name` will lead to an `EntityAlreadyExists` error.
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
///     name: "test_role",
///     path: "/",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const testProfile = new aws.iam.InstanceProfile("test_profile", {
///     name: "test_profile",
///     role: role.name,
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
///     name="test_role",
///     path="/",
///     assume_role_policy=assume_role.json)
/// test_profile = aws.iam.InstanceProfile("test_profile",
///     name="test_profile",
///     role=role.name)
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
///         Name = "test_role",
///         Path = "/",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var testProfile = new Aws.Iam.InstanceProfile("test_profile", new()
///     {
///         Name = "test_profile",
///         Role = role.Name,
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
/// 			Name:             pulumi.String("test_role"),
/// 			Path:             pulumi.String("/"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewInstanceProfile(ctx, "test_profile", &iam.InstanceProfileArgs{
/// 			Name: pulumi.String("test_profile"),
/// 			Role: role.Name,
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
/// import com.pulumi.aws.iam.InstanceProfile;
/// import com.pulumi.aws.iam.InstanceProfileArgs;
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
///             .name("test_role")
///             .path("/")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var testProfile = new InstanceProfile("testProfile", InstanceProfileArgs.builder()
///             .name("test_profile")
///             .role(role.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testProfile:
///     type: aws:iam:InstanceProfile
///     name: test_profile
///     properties:
///       name: test_profile
///       role: ${role.name}
///   role:
///     type: aws:iam:Role
///     properties:
///       name: test_role
///       path: /
///       assumeRolePolicy: ${assumeRole.json}
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Instance Profiles using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/instanceProfile:InstanceProfile test_profile app-instance-profile-1
/// ```
class InstanceProfile extends pulumi.CustomResource {
  /// ARN assigned by AWS to the instance profile.
  late final pulumi.Output<String> arn;

  /// Creation timestamp of the instance profile.
  late final pulumi.Output<String> createDate;

  /// Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `name_prefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  late final pulumi.Output<String?> path;

  /// Name of the role to add to the profile.
  late final pulumi.Output<String?> role;

  /// Map of resource tags for the IAM Instance Profile. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// [Unique ID][1] assigned by AWS.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [InstanceProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceProfile]. {@macro pulumi_iam_instance_profile_instance_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceProfile(
    String name, {
    InstanceProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iam/instanceProfile:InstanceProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.createDate = registerOutput<String>('createDate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.path = registerOutput<String?>('path');
    this.role = registerOutput<String?>('role');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
