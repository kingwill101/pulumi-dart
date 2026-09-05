import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_profile_args.dart';
import 'instance_profile_state.dart';

/// Provides an IAM instance profile.
///
/// &gt; **NOTE:** When managing instance profiles, remember that the `name` attribute must always be unique. This means that even if you have different `role` or `path` values, duplicating an existing instance profile `name` will lead to an `EntityAlreadyExists` error.
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
///         principals: [{
///             type: "Service",
///             identifiers: ["ec2.amazonaws.com"],
///         }],
///         effect: "Allow",
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
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["ec2.amazonaws.com"],
///     }],
///     "effect": "Allow",
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
///
/// resource "aws_iam_instanceprofile" "test_profile" {
///   name = "test_profile"
///   role = aws_iam_role.role.name
/// }
/// resource "aws_iam_role" "role" {
///   name               = "test_role"
///   path               = "/"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.InstanceProfile;
/// import com.pulumi.aws.iam.InstanceProfileArgs;
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
///           - principals:
///               - type: Service
///                 identifiers:
///                   - ec2.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the instance profile.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import Instance Profiles using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/instanceProfile:InstanceProfile example app-instance-profile-1
/// ```
class InstanceProfile extends pulumi.CustomResource {
  /// ARN assigned by AWS to the instance profile.
  late final pulumi.Output<String> arn;
  /// Creation timestamp of the instance profile.
  late final pulumi.Output<String> createDate;
  /// Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `namePrefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  late final pulumi.Output<String?> path;
  /// Name of the role to add to the profile.
  late final pulumi.Output<String?> role;
  /// Map of resource tags for the IAM Instance Profile. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// [Unique ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#GUIDs) assigned by AWS.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createDate = registerOutput<String>('createDate');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    path = registerOutput<String?>('path');
    role = registerOutput<String?>('role');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Gets an existing [InstanceProfile] resource's state with the given [name] and [id].
  static InstanceProfile get(
    String name,
    pulumi.Input<String> id, {
    InstanceProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/instanceProfile:InstanceProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createDate = registerOutput<String>('createDate');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    path = registerOutput<String?>('path');
    role = registerOutput<String?>('role');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Creates a typed reference to an existing [InstanceProfile] resource.
  InstanceProfile.reference(String urn)
    : super(
        'aws:iam/instanceProfile:InstanceProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createDate = registerOutput<String>('createDate');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    path = registerOutput<String?>('path');
    role = registerOutput<String?>('role');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueId = registerOutput<String>('uniqueId');
  }
}
