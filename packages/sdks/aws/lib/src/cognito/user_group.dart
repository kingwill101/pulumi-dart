import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_args.dart';
import 'user_group_state.dart';

/// Provides a Cognito User Group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.cognito.UserPool("main", {name: "identity pool"});
/// const groupRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Federated",
///             identifiers: ["cognito-identity.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRoleWithWebIdentity"],
///         conditions: [
///             {
///                 test: "StringEquals",
///                 variable: "cognito-identity.amazonaws.com:aud",
///                 values: ["us-east-1:12345678-dead-beef-cafe-123456790ab"],
///             },
///             {
///                 test: "ForAnyValue:StringLike",
///                 variable: "cognito-identity.amazonaws.com:amr",
///                 values: ["authenticated"],
///             },
///         ],
///     }],
/// });
/// const groupRoleRole = new aws.iam.Role("group_role", {
///     name: "user-group-role",
///     assumeRolePolicy: groupRole.then(groupRole => groupRole.json),
/// });
/// const mainUserGroup = new aws.cognito.UserGroup("main", {
///     name: "user-group",
///     userPoolId: main.id,
///     description: "Managed by Pulumi",
///     precedence: 42,
///     roleArn: groupRoleRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.cognito.UserPool("main", name="identity pool")
/// group_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Federated",
///         "identifiers": ["cognito-identity.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRoleWithWebIdentity"],
///     "conditions": [
///         {
///             "test": "StringEquals",
///             "variable": "cognito-identity.amazonaws.com:aud",
///             "values": ["us-east-1:12345678-dead-beef-cafe-123456790ab"],
///         },
///         {
///             "test": "ForAnyValue:StringLike",
///             "variable": "cognito-identity.amazonaws.com:amr",
///             "values": ["authenticated"],
///         },
///     ],
/// }])
/// group_role_role = aws.iam.Role("group_role",
///     name="user-group-role",
///     assume_role_policy=group_role.json)
/// main_user_group = aws.cognito.UserGroup("main",
///     name="user-group",
///     user_pool_id=main.id,
///     description="Managed by Pulumi",
///     precedence=42,
///     role_arn=group_role_role.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Cognito.UserPool("main", new()
///     {
///         Name = "identity pool",
///     });
///
///     var groupRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                         Type = "Federated",
///                         Identifiers = new[]
///                         {
///                             "cognito-identity.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRoleWithWebIdentity",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "cognito-identity.amazonaws.com:aud",
///                         Values = new[]
///                         {
///                             "us-east-1:12345678-dead-beef-cafe-123456790ab",
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ForAnyValue:StringLike",
///                         Variable = "cognito-identity.amazonaws.com:amr",
///                         Values = new[]
///                         {
///                             "authenticated",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var groupRoleRole = new Aws.Iam.Role("group_role", new()
///     {
///         Name = "user-group-role",
///         AssumeRolePolicy = groupRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var mainUserGroup = new Aws.Cognito.UserGroup("main", new()
///     {
///         Name = "user-group",
///         UserPoolId = main.Id,
///         Description = "Managed by Pulumi",
///         Precedence = 42,
///         RoleArn = groupRoleRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := cognito.NewUserPool(ctx, "main", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("identity pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Federated",
/// 							Identifiers: []string{
/// 								"cognito-identity.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRoleWithWebIdentity",
/// 					},
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "StringEquals",
/// 							Variable: "cognito-identity.amazonaws.com:aud",
/// 							Values: []string{
/// 								"us-east-1:12345678-dead-beef-cafe-123456790ab",
/// 							},
/// 						},
/// 						{
/// 							Test:     "ForAnyValue:StringLike",
/// 							Variable: "cognito-identity.amazonaws.com:amr",
/// 							Values: []string{
/// 								"authenticated",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupRoleRole, err := iam.NewRole(ctx, "group_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("user-group-role"),
/// 			AssumeRolePolicy: pulumi.String(groupRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserGroup(ctx, "main", &cognito.UserGroupArgs{
/// 			Name:        pulumi.String("user-group"),
/// 			UserPoolId:  main.ID().ToIDOutput().ToStringOutput(),
/// 			Description: pulumi.String("Managed by Pulumi"),
/// 			Precedence:  pulumi.Int(42),
/// 			RoleArn:     groupRoleRole.Arn,
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
/// data "aws_iam_getpolicydocument" "groupRole" {
///   statements {
///     effect = "Allow"
///     principals {
///       type        = "Federated"
///       identifiers = ["cognito-identity.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRoleWithWebIdentity"]
///     conditions {
///       test     = "StringEquals"
///       variable = "cognito-identity.amazonaws.com:aud"
///       values   = ["us-east-1:12345678-dead-beef-cafe-123456790ab"]
///     }
///     conditions {
///       test     = "ForAnyValue:StringLike"
///       variable = "cognito-identity.amazonaws.com:amr"
///       values   = ["authenticated"]
///     }
///   }
/// }
///
/// resource "aws_cognito_userpool" "main" {
///   name = "identity pool"
/// }
/// resource "aws_iam_role" "group_role" {
///   name               = "user-group-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.groupRole.json
/// }
/// resource "aws_cognito_usergroup" "main" {
///   name         = "user-group"
///   user_pool_id = aws_cognito_userpool.main.id
///   description  = "Managed by Pulumi"
///   precedence   = 42
///   role_arn     = aws_iam_role.group_role.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cognito.UserGroup;
/// import com.pulumi.aws.cognito.UserGroupArgs;
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
///         var main = new UserPool("main", UserPoolArgs.builder()
///             .name("identity pool")
///             .build());
///
///         final var groupRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Federated")
///                     .identifiers("cognito-identity.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRoleWithWebIdentity")
///                 .conditions(
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("cognito-identity.amazonaws.com:aud")
///                         .values("us-east-1:12345678-dead-beef-cafe-123456790ab")
///                         .build(),
///                     GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("ForAnyValue:StringLike")
///                         .variable("cognito-identity.amazonaws.com:amr")
///                         .values("authenticated")
///                         .build())
///                 .build())
///             .build());
///
///         var groupRoleRole = new Role("groupRoleRole", RoleArgs.builder()
///             .name("user-group-role")
///             .assumeRolePolicy(groupRole.json())
///             .build());
///
///         var mainUserGroup = new UserGroup("mainUserGroup", UserGroupArgs.builder()
///             .name("user-group")
///             .userPoolId(main.id())
///             .description("Managed by Pulumi")
///             .precedence(42)
///             .roleArn(groupRoleRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:cognito:UserPool
///     properties:
///       name: identity pool
///   groupRoleRole:
///     type: aws:iam:Role
///     name: group_role
///     properties:
///       name: user-group-role
///       assumeRolePolicy: ${groupRole.json}
///   mainUserGroup:
///     type: aws:cognito:UserGroup
///     name: main
///     properties:
///       name: user-group
///       userPoolId: ${main.id}
///       description: Managed by Pulumi
///       precedence: 42
///       roleArn: ${groupRoleRole.arn}
/// variables:
///   groupRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Federated
///                 identifiers:
///                   - cognito-identity.amazonaws.com
///             actions:
///               - sts:AssumeRoleWithWebIdentity
///             conditions:
///               - test: StringEquals
///                 variable: cognito-identity.amazonaws.com:aud
///                 values:
///                   - us-east-1:12345678-dead-beef-cafe-123456790ab
///               - test: ForAnyValue:StringLike
///                 variable: cognito-identity.amazonaws.com:amr
///                 values:
///                   - authenticated
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Groups using the `userPoolId`/`name` attributes concatenated. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userGroup:UserGroup group us-east-1_vG78M4goG/user-group
/// ```
class UserGroup extends pulumi.CustomResource {
  /// The description of the user group.
  late final pulumi.Output<String?> description;
  /// The name of the user group.
  late final pulumi.Output<String> name;
  /// The precedence of the user group.
  late final pulumi.Output<int?> precedence;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the IAM role to be associated with the user group.
  late final pulumi.Output<String?> roleArn;
  /// The user pool ID.
  late final pulumi.Output<String> userPoolId;

  /// Creates a new [UserGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserGroup]. {@macro pulumi_cognito_user_group_user_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserGroup(
    String name, {
    UserGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userGroup:UserGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int?>('precedence');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    userPoolId = registerOutput<String>('userPoolId');
  }

  /// Gets an existing [UserGroup] resource's state with the given [name] and [id].
  static UserGroup get(
    String name,
    pulumi.Input<String> id, {
    UserGroupState? state,
  }) {
    return UserGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userGroup:UserGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int?>('precedence');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    userPoolId = registerOutput<String>('userPoolId');
  }
}
