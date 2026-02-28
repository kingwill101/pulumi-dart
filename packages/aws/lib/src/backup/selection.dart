import 'package:pulumi/pulumi.dart' as pulumi;
import 'selection_args.dart';
import 'selection_condition.dart';
import 'selection_selection_tag.dart';

/// Manages selection conditions for AWS Backup plan resources.
///
/// ## Example Usage
///
/// ### IAM Role
///
/// > For more information about creating and managing IAM Roles for backups and restores, see the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/iam-service-roles.html).
///
/// The below example creates an IAM role with the default managed IAM Policy for allowing AWS Backup to create backups.
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
///             identifiers: ["backup.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup",
///     role: example.name,
/// });
/// const exampleSelection = new aws.backup.Selection("example", {iamRoleArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["backup.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=assume_role.json)
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup",
///     role=example.name)
/// example_selection = aws.backup.Selection("example", iam_role_arn=example.arn)
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
///                             "backup.amazonaws.com",
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
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup",
///         Role = example.Name,
///     });
///
///     var exampleSelection = new Aws.Backup.Selection("example", new()
///     {
///         IamRoleArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
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
/// 								"backup.amazonaws.com",
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
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"),
/// 			Role:      example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backup.NewSelection(ctx, "example", &backup.SelectionArgs{
/// 			IamRoleArn: example.Arn,
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
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.backup.Selection;
/// import com.pulumi.aws.backup.SelectionArgs;
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
///                     .identifiers("backup.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup")
///             .role(example.name())
///             .build());
///
///         var exampleSelection = new Selection("exampleSelection", SelectionArgs.builder()
///             .iamRoleArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup
///       role: ${example.name}
///   exampleSelection:
///     type: aws:backup:Selection
///     name: example
///     properties:
///       iamRoleArn: ${example.arn}
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
///                   - backup.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Selecting Backups By Tag
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.Selection("example", {
///     iamRoleArn: exampleAwsIamRole.arn,
///     name: "my_example_backup_selection",
///     planId: exampleAwsBackupPlan.id,
///     selectionTags: [{
///         type: "STRINGEQUALS",
///         key: "foo",
///         value: "bar",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.Selection("example",
///     iam_role_arn=example_aws_iam_role["arn"],
///     name="my_example_backup_selection",
///     plan_id=example_aws_backup_plan["id"],
///     selection_tags=[{
///         "type": "STRINGEQUALS",
///         "key": "foo",
///         "value": "bar",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Backup.Selection("example", new()
///     {
///         IamRoleArn = exampleAwsIamRole.Arn,
///         Name = "my_example_backup_selection",
///         PlanId = exampleAwsBackupPlan.Id,
///         SelectionTags = new[]
///         {
///             new Aws.Backup.Inputs.SelectionSelectionTagArgs
///             {
///                 Type = "STRINGEQUALS",
///                 Key = "foo",
///                 Value = "bar",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewSelection(ctx, "example", &backup.SelectionArgs{
/// 			IamRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Name:       pulumi.String("my_example_backup_selection"),
/// 			PlanId:     pulumi.Any(exampleAwsBackupPlan.Id),
/// 			SelectionTags: backup.SelectionSelectionTagArray{
/// 				&backup.SelectionSelectionTagArgs{
/// 					Type:  pulumi.String("STRINGEQUALS"),
/// 					Key:   pulumi.String("foo"),
/// 					Value: pulumi.String("bar"),
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
/// import com.pulumi.aws.backup.Selection;
/// import com.pulumi.aws.backup.SelectionArgs;
/// import com.pulumi.aws.backup.inputs.SelectionSelectionTagArgs;
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
///         var example = new Selection("example", SelectionArgs.builder()
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .name("my_example_backup_selection")
///             .planId(exampleAwsBackupPlan.id())
///             .selectionTags(SelectionSelectionTagArgs.builder()
///                 .type("STRINGEQUALS")
///                 .key("foo")
///                 .value("bar")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:Selection
///     properties:
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       name: my_example_backup_selection
///       planId: ${exampleAwsBackupPlan.id}
///       selectionTags:
///         - type: STRINGEQUALS
///           key: foo
///           value: bar
/// ```
///
///
/// ### Selecting Backups By Conditions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.Selection("example", {
///     iamRoleArn: exampleAwsIamRole.arn,
///     name: "my_example_backup_selection",
///     planId: exampleAwsBackupPlan.id,
///     resources: ["*"],
///     conditions: [{
///         stringEquals: [{
///             key: "aws:ResourceTag/Component",
///             value: "rds",
///         }],
///         stringLikes: [{
///             key: "aws:ResourceTag/Application",
///             value: "app*",
///         }],
///         stringNotEquals: [{
///             key: "aws:ResourceTag/Backup",
///             value: "false",
///         }],
///         stringNotLikes: [{
///             key: "aws:ResourceTag/Environment",
///             value: "test*",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.Selection("example",
///     iam_role_arn=example_aws_iam_role["arn"],
///     name="my_example_backup_selection",
///     plan_id=example_aws_backup_plan["id"],
///     resources=["*"],
///     conditions=[{
///         "string_equals": [{
///             "key": "aws:ResourceTag/Component",
///             "value": "rds",
///         }],
///         "string_likes": [{
///             "key": "aws:ResourceTag/Application",
///             "value": "app*",
///         }],
///         "string_not_equals": [{
///             "key": "aws:ResourceTag/Backup",
///             "value": "false",
///         }],
///         "string_not_likes": [{
///             "key": "aws:ResourceTag/Environment",
///             "value": "test*",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Backup.Selection("example", new()
///     {
///         IamRoleArn = exampleAwsIamRole.Arn,
///         Name = "my_example_backup_selection",
///         PlanId = exampleAwsBackupPlan.Id,
///         Resources = new[]
///         {
///             "*",
///         },
///         Conditions = new[]
///         {
///             new Aws.Backup.Inputs.SelectionConditionArgs
///             {
///                 StringEquals = new[]
///                 {
///                     new Aws.Backup.Inputs.SelectionConditionStringEqualArgs
///                     {
///                         Key = "aws:ResourceTag/Component",
///                         Value = "rds",
///                     },
///                 },
///                 StringLikes = new[]
///                 {
///                     new Aws.Backup.Inputs.SelectionConditionStringLikeArgs
///                     {
///                         Key = "aws:ResourceTag/Application",
///                         Value = "app*",
///                     },
///                 },
///                 StringNotEquals = new[]
///                 {
///                     new Aws.Backup.Inputs.SelectionConditionStringNotEqualArgs
///                     {
///                         Key = "aws:ResourceTag/Backup",
///                         Value = "false",
///                     },
///                 },
///                 StringNotLikes = new[]
///                 {
///                     new Aws.Backup.Inputs.SelectionConditionStringNotLikeArgs
///                     {
///                         Key = "aws:ResourceTag/Environment",
///                         Value = "test*",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewSelection(ctx, "example", &backup.SelectionArgs{
/// 			IamRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Name:       pulumi.String("my_example_backup_selection"),
/// 			PlanId:     pulumi.Any(exampleAwsBackupPlan.Id),
/// 			Resources: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 			Conditions: backup.SelectionConditionArray{
/// 				&backup.SelectionConditionArgs{
/// 					StringEquals: backup.SelectionConditionStringEqualArray{
/// 						&backup.SelectionConditionStringEqualArgs{
/// 							Key:   pulumi.String("aws:ResourceTag/Component"),
/// 							Value: pulumi.String("rds"),
/// 						},
/// 					},
/// 					StringLikes: backup.SelectionConditionStringLikeArray{
/// 						&backup.SelectionConditionStringLikeArgs{
/// 							Key:   pulumi.String("aws:ResourceTag/Application"),
/// 							Value: pulumi.String("app*"),
/// 						},
/// 					},
/// 					StringNotEquals: backup.SelectionConditionStringNotEqualArray{
/// 						&backup.SelectionConditionStringNotEqualArgs{
/// 							Key:   pulumi.String("aws:ResourceTag/Backup"),
/// 							Value: pulumi.String("false"),
/// 						},
/// 					},
/// 					StringNotLikes: backup.SelectionConditionStringNotLikeArray{
/// 						&backup.SelectionConditionStringNotLikeArgs{
/// 							Key:   pulumi.String("aws:ResourceTag/Environment"),
/// 							Value: pulumi.String("test*"),
/// 						},
/// 					},
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
/// import com.pulumi.aws.backup.Selection;
/// import com.pulumi.aws.backup.SelectionArgs;
/// import com.pulumi.aws.backup.inputs.SelectionConditionArgs;
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
///         var example = new Selection("example", SelectionArgs.builder()
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .name("my_example_backup_selection")
///             .planId(exampleAwsBackupPlan.id())
///             .resources("*")
///             .conditions(SelectionConditionArgs.builder()
///                 .stringEquals(SelectionConditionStringEqualArgs.builder()
///                     .key("aws:ResourceTag/Component")
///                     .value("rds")
///                     .build())
///                 .stringLikes(SelectionConditionStringLikeArgs.builder()
///                     .key("aws:ResourceTag/Application")
///                     .value("app*")
///                     .build())
///                 .stringNotEquals(SelectionConditionStringNotEqualArgs.builder()
///                     .key("aws:ResourceTag/Backup")
///                     .value("false")
///                     .build())
///                 .stringNotLikes(SelectionConditionStringNotLikeArgs.builder()
///                     .key("aws:ResourceTag/Environment")
///                     .value("test*")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:Selection
///     properties:
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       name: my_example_backup_selection
///       planId: ${exampleAwsBackupPlan.id}
///       resources:
///         - '*'
///       conditions:
///         - stringEquals:
///             - key: aws:ResourceTag/Component
///               value: rds
///           stringLikes:
///             - key: aws:ResourceTag/Application
///               value: app*
///           stringNotEquals:
///             - key: aws:ResourceTag/Backup
///               value: 'false'
///           stringNotLikes:
///             - key: aws:ResourceTag/Environment
///               value: test*
/// ```
///
///
/// ### Selecting Backups By Resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.Selection("example", {
///     iamRoleArn: exampleAwsIamRole.arn,
///     name: "my_example_backup_selection",
///     planId: exampleAwsBackupPlan.id,
///     resources: [
///         exampleAwsDbInstance.arn,
///         exampleAwsEbsVolume.arn,
///         exampleAwsEfsFileSystem.arn,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.Selection("example",
///     iam_role_arn=example_aws_iam_role["arn"],
///     name="my_example_backup_selection",
///     plan_id=example_aws_backup_plan["id"],
///     resources=[
///         example_aws_db_instance["arn"],
///         example_aws_ebs_volume["arn"],
///         example_aws_efs_file_system["arn"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Backup.Selection("example", new()
///     {
///         IamRoleArn = exampleAwsIamRole.Arn,
///         Name = "my_example_backup_selection",
///         PlanId = exampleAwsBackupPlan.Id,
///         Resources = new[]
///         {
///             exampleAwsDbInstance.Arn,
///             exampleAwsEbsVolume.Arn,
///             exampleAwsEfsFileSystem.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewSelection(ctx, "example", &backup.SelectionArgs{
/// 			IamRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Name:       pulumi.String("my_example_backup_selection"),
/// 			PlanId:     pulumi.Any(exampleAwsBackupPlan.Id),
/// 			Resources: pulumi.StringArray{
/// 				exampleAwsDbInstance.Arn,
/// 				exampleAwsEbsVolume.Arn,
/// 				exampleAwsEfsFileSystem.Arn,
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
/// import com.pulumi.aws.backup.Selection;
/// import com.pulumi.aws.backup.SelectionArgs;
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
///         var example = new Selection("example", SelectionArgs.builder()
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .name("my_example_backup_selection")
///             .planId(exampleAwsBackupPlan.id())
///             .resources(
///                 exampleAwsDbInstance.arn(),
///                 exampleAwsEbsVolume.arn(),
///                 exampleAwsEfsFileSystem.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:Selection
///     properties:
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       name: my_example_backup_selection
///       planId: ${exampleAwsBackupPlan.id}
///       resources:
///         - ${exampleAwsDbInstance.arn}
///         - ${exampleAwsEbsVolume.arn}
///         - ${exampleAwsEfsFileSystem.arn}
/// ```
///
///
/// ### Selecting Backups By Not Resource
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.Selection("example", {
///     iamRoleArn: exampleAwsIamRole.arn,
///     name: "my_example_backup_selection",
///     planId: exampleAwsBackupPlan.id,
///     notResources: [
///         exampleAwsDbInstance.arn,
///         exampleAwsEbsVolume.arn,
///         exampleAwsEfsFileSystem.arn,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.Selection("example",
///     iam_role_arn=example_aws_iam_role["arn"],
///     name="my_example_backup_selection",
///     plan_id=example_aws_backup_plan["id"],
///     not_resources=[
///         example_aws_db_instance["arn"],
///         example_aws_ebs_volume["arn"],
///         example_aws_efs_file_system["arn"],
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Backup.Selection("example", new()
///     {
///         IamRoleArn = exampleAwsIamRole.Arn,
///         Name = "my_example_backup_selection",
///         PlanId = exampleAwsBackupPlan.Id,
///         NotResources = new[]
///         {
///             exampleAwsDbInstance.Arn,
///             exampleAwsEbsVolume.Arn,
///             exampleAwsEfsFileSystem.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewSelection(ctx, "example", &backup.SelectionArgs{
/// 			IamRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Name:       pulumi.String("my_example_backup_selection"),
/// 			PlanId:     pulumi.Any(exampleAwsBackupPlan.Id),
/// 			NotResources: pulumi.StringArray{
/// 				exampleAwsDbInstance.Arn,
/// 				exampleAwsEbsVolume.Arn,
/// 				exampleAwsEfsFileSystem.Arn,
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
/// import com.pulumi.aws.backup.Selection;
/// import com.pulumi.aws.backup.SelectionArgs;
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
///         var example = new Selection("example", SelectionArgs.builder()
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .name("my_example_backup_selection")
///             .planId(exampleAwsBackupPlan.id())
///             .notResources(
///                 exampleAwsDbInstance.arn(),
///                 exampleAwsEbsVolume.arn(),
///                 exampleAwsEfsFileSystem.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:Selection
///     properties:
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       name: my_example_backup_selection
///       planId: ${exampleAwsBackupPlan.id}
///       notResources:
///         - ${exampleAwsDbInstance.arn}
///         - ${exampleAwsEbsVolume.arn}
///         - ${exampleAwsEfsFileSystem.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup selection using the role plan_id and id separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/selection:Selection example plan-id|selection-id
/// ```
class Selection extends pulumi.CustomResource {
  /// Condition-based filters used to specify sets of resources for a backup plan. See below for details.
  late final pulumi.Output<List<SelectionCondition>> conditions;

  /// The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  late final pulumi.Output<String> iamRoleArn;

  /// The display name of a resource selection document.
  late final pulumi.Output<String> name;

  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
  late final pulumi.Output<List<String>> notResources;

  /// The backup plan ID to be associated with the selection of resources.
  late final pulumi.Output<String> planId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
  late final pulumi.Output<List<String>?> resources;

  /// Tag-based conditions used to specify a set of resources to assign to a backup plan. See below for details.
  late final pulumi.Output<List<SelectionSelectionTag>?> selectionTags;

  /// Creates a new [Selection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Selection]. {@macro pulumi_backup_selection_selection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Selection(
    String name, {
    SelectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/selection:Selection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conditions = registerOutput<List<SelectionCondition>>('conditions');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.name = registerOutput<String>('name');
    this.notResources = registerOutput<List<String>>('notResources');
    this.planId = registerOutput<String>('planId');
    this.region = registerOutput<String>('region');
    this.resources = registerOutput<List<String>?>('resources');
    this.selectionTags =
        registerOutput<List<SelectionSelectionTag>?>('selectionTags');
  }
}
