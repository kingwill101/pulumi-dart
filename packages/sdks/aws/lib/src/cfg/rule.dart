import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_evaluation_mode.dart';
import 'rule_scope.dart';
import 'rule_source.dart';
import 'rule_state.dart';

/// Provides an AWS Config Rule.
///
/// &gt; **Note:** Config Rule requires an existing Configuration Recorder to be present. Use of `dependsOn` is recommended (as shown below) to avoid race conditions.
///
/// ## Example Usage
///
/// ### AWS Managed Rules
///
/// AWS managed rules can be used by setting the source owner to `AWS` and the source identifier to the name of the managed rule. More information about AWS managed rules can be found in the [AWS Config Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).
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
///             identifiers: ["config.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const rRole = new aws.iam.Role("r", {
///     name: "my-awsconfig-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const foo = new aws.cfg.Recorder("foo", {
///     name: "example",
///     roleArn: rRole.arn,
/// });
/// const r = new aws.cfg.Rule("r", {
///     source: {
///         owner: "AWS",
///         sourceIdentifier: "S3_BUCKET_VERSIONING_ENABLED",
///     },
///     name: "example",
/// }, {
///     dependsOn: [foo],
/// });
/// const p = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["config:Put*"],
///         resources: ["*"],
///     }],
/// });
/// const pRolePolicy = new aws.iam.RolePolicy("p", {
///     name: "my-awsconfig-policy",
///     role: rRole.id,
///     policy: p.then(p => p.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["config.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// r_role = aws.iam.Role("r",
///     name="my-awsconfig-role",
///     assume_role_policy=assume_role.json)
/// foo = aws.cfg.Recorder("foo",
///     name="example",
///     role_arn=r_role.arn)
/// r = aws.cfg.Rule("r",
///     source={
///         "owner": "AWS",
///         "source_identifier": "S3_BUCKET_VERSIONING_ENABLED",
///     },
///     name="example",
///     opts = pulumi.ResourceOptions(depends_on=[foo]))
/// p = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["config:Put*"],
///     "resources": ["*"],
/// }])
/// p_role_policy = aws.iam.RolePolicy("p",
///     name="my-awsconfig-policy",
///     role=r_role.id,
///     policy=p.json)
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
///                             "config.amazonaws.com",
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
///     var rRole = new Aws.Iam.Role("r", new()
///     {
///         Name = "my-awsconfig-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var foo = new Aws.Cfg.Recorder("foo", new()
///     {
///         Name = "example",
///         RoleArn = rRole.Arn,
///     });
///
///     var r = new Aws.Cfg.Rule("r", new()
///     {
///         Source = new Aws.Cfg.Inputs.RuleSourceArgs
///         {
///             Owner = "AWS",
///             SourceIdentifier = "S3_BUCKET_VERSIONING_ENABLED",
///         },
///         Name = "example",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             foo,
///         },
///     });
///
///     var p = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "config:Put*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var pRolePolicy = new Aws.Iam.RolePolicy("p", new()
///     {
///         Name = "my-awsconfig-policy",
///         Role = rRole.Id,
///         Policy = p.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
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
/// 								"config.amazonaws.com",
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
/// 		rRole, err := iam.NewRole(ctx, "r", &iam.RoleArgs{
/// 			Name:             pulumi.String("my-awsconfig-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: rRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewRule(ctx, "r", &cfg.RuleArgs{
/// 			Source: &cfg.RuleSourceArgs{
/// 				Owner:            pulumi.String("AWS"),
/// 				SourceIdentifier: pulumi.String("S3_BUCKET_VERSIONING_ENABLED"),
/// 			},
/// 			Name: pulumi.String("example"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			foo,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		p, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"config:Put*",
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
/// 		_, err = iam.NewRolePolicy(ctx, "p", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("my-awsconfig-policy"),
/// 			Role:   rRole.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: pulumi.String(p.Json),
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
///       identifiers = ["config.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "p" {
///   statements {
///     effect    = "Allow"
///     actions   = ["config:Put*"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_cfg_rule" "r" {
///   depends_on = [aws_cfg_recorder.foo]
///   source = {
///     owner             = "AWS"
///     source_identifier = "S3_BUCKET_VERSIONING_ENABLED"
///   }
///   name = "example"
/// }
/// resource "aws_cfg_recorder" "foo" {
///   name     = "example"
///   role_arn = aws_iam_role.r.arn
/// }
/// resource "aws_iam_role" "r" {
///   name               = "my-awsconfig-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "p" {
///   name   = "my-awsconfig-policy"
///   role   = aws_iam_role.r.id
///   policy = data.aws_iam_getpolicydocument.p.json
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
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.cfg.RecorderArgs;
/// import com.pulumi.aws.cfg.Rule;
/// import com.pulumi.aws.cfg.RuleArgs;
/// import com.pulumi.aws.cfg.inputs.RuleSourceArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///                     .identifiers("config.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var rRole = new Role("rRole", RoleArgs.builder()
///             .name("my-awsconfig-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var foo = new Recorder("foo", RecorderArgs.builder()
///             .name("example")
///             .roleArn(rRole.arn())
///             .build());
///
///         var r = new Rule("r", RuleArgs.builder()
///             .source(RuleSourceArgs.builder()
///                 .owner("AWS")
///                 .sourceIdentifier("S3_BUCKET_VERSIONING_ENABLED")
///                 .build())
///             .name("example")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(foo)
///                 .build());
///
///         final var p = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("config:Put*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var pRolePolicy = new RolePolicy("pRolePolicy", RolePolicyArgs.builder()
///             .name("my-awsconfig-policy")
///             .role(rRole.id())
///             .policy(p.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   r:
///     type: aws:cfg:Rule
///     properties:
///       source:
///         owner: AWS
///         sourceIdentifier: S3_BUCKET_VERSIONING_ENABLED
///       name: example
///     options:
///       dependsOn:
///         - ${foo}
///   foo:
///     type: aws:cfg:Recorder
///     properties:
///       name: example
///       roleArn: ${rRole.arn}
///   rRole:
///     type: aws:iam:Role
///     name: r
///     properties:
///       name: my-awsconfig-role
///       assumeRolePolicy: ${assumeRole.json}
///   pRolePolicy:
///     type: aws:iam:RolePolicy
///     name: p
///     properties:
///       name: my-awsconfig-policy
///       role: ${rRole.id}
///       policy: ${p.json}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - config.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   p:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - config:Put*
///             resources:
///               - '*'
/// ```
///
///
/// ### Custom Rules
///
/// Custom rules can be used by setting the source owner to `CUSTOM_LAMBDA` and the source identifier to the ARN of the Lambda Function. The AWS Config service must have permissions to invoke the Lambda Function, e.g., via the `aws.lambda.Permission` resource. More information about custom rules can be found in the [AWS Config Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cfg.Recorder("example", {});
/// const exampleFunction = new aws.lambda.Function("example", {});
/// const examplePermission = new aws.lambda.Permission("example", {
///     action: "lambda:InvokeFunction",
///     "function": exampleFunction.arn,
///     principal: "config.amazonaws.com",
///     statementId: "AllowExecutionFromConfig",
/// });
/// const exampleRule = new aws.cfg.Rule("example", {source: {
///     owner: "CUSTOM_LAMBDA",
///     sourceIdentifier: exampleFunction.arn,
/// }}, {
///     dependsOn: [
///         example,
///         examplePermission,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cfg.Recorder("example")
/// example_function = aws.lambda_.Function("example")
/// example_permission = aws.lambda_.Permission("example",
///     action="lambda:InvokeFunction",
///     function=example_function.arn,
///     principal="config.amazonaws.com",
///     statement_id="AllowExecutionFromConfig")
/// example_rule = aws.cfg.Rule("example", source={
///     "owner": "CUSTOM_LAMBDA",
///     "source_identifier": example_function.arn,
/// },
/// opts = pulumi.ResourceOptions(depends_on=[
///         example,
///         example_permission,
///     ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cfg.Recorder("example");
///
///     var exampleFunction = new Aws.Lambda.Function("example");
///
///     var examplePermission = new Aws.Lambda.Permission("example", new()
///     {
///         Action = "lambda:InvokeFunction",
///         Function = exampleFunction.Arn,
///         Principal = "config.amazonaws.com",
///         StatementId = "AllowExecutionFromConfig",
///     });
///
///     var exampleRule = new Aws.Cfg.Rule("example", new()
///     {
///         Source = new Aws.Cfg.Inputs.RuleSourceArgs
///         {
///             Owner = "CUSTOM_LAMBDA",
///             SourceIdentifier = exampleFunction.Arn,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///             examplePermission,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cfg.NewRecorder(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFunction, err := lambda.NewFunction(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePermission, err := lambda.NewPermission(ctx, "example", &lambda.PermissionArgs{
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    exampleFunction.Arn,
/// 			Principal:   pulumi.String("config.amazonaws.com"),
/// 			StatementId: pulumi.String("AllowExecutionFromConfig"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewRule(ctx, "example", &cfg.RuleArgs{
/// 			Source: &cfg.RuleSourceArgs{
/// 				Owner:            pulumi.String("CUSTOM_LAMBDA"),
/// 				SourceIdentifier: exampleFunction.Arn,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 			examplePermission,
/// 		}))
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
/// resource "aws_cfg_recorder" "example" {
/// }
/// resource "aws_lambda_function" "example" {
/// }
/// resource "aws_lambda_permission" "example" {
///   action       = "lambda:InvokeFunction"
///   function     = aws_lambda_function.example.arn
///   principal    = "config.amazonaws.com"
///   statement_id = "AllowExecutionFromConfig"
/// }
/// resource "aws_cfg_rule" "example" {
///   depends_on = [aws_cfg_recorder.example, aws_lambda_permission.example]
///   source = {
///     owner             = "CUSTOM_LAMBDA"
///     source_identifier = aws_lambda_function.example.arn
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.aws.cfg.Rule;
/// import com.pulumi.aws.cfg.RuleArgs;
/// import com.pulumi.aws.cfg.inputs.RuleSourceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Recorder("example");
///
///         var exampleFunction = new Function("exampleFunction");
///
///         var examplePermission = new Permission("examplePermission", PermissionArgs.builder()
///             .action("lambda:InvokeFunction")
///             .function(exampleFunction.arn())
///             .principal("config.amazonaws.com")
///             .statementId("AllowExecutionFromConfig")
///             .build());
///
///         var exampleRule = new Rule("exampleRule", RuleArgs.builder()
///             .source(RuleSourceArgs.builder()
///                 .owner("CUSTOM_LAMBDA")
///                 .sourceIdentifier(exampleFunction.arn())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     example,
///                     examplePermission)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cfg:Recorder
///   exampleFunction:
///     type: aws:lambda:Function
///     name: example
///   examplePermission:
///     type: aws:lambda:Permission
///     name: example
///     properties:
///       action: lambda:InvokeFunction
///       function: ${exampleFunction.arn}
///       principal: config.amazonaws.com
///       statementId: AllowExecutionFromConfig
///   exampleRule:
///     type: aws:cfg:Rule
///     name: example
///     properties:
///       source:
///         owner: CUSTOM_LAMBDA
///         sourceIdentifier: ${exampleFunction.arn}
///     options:
///       dependsOn:
///         - ${example}
///         - ${examplePermission}
/// ```
///
///
/// ### Custom Policies
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cfg.Rule("example", {
///     source: {
///         customPolicyDetails: {
///             policyRuntime: "guard-2.x.x",
///             policyText: `\\t  rule tableisactive when
/// \\t\\t  resourceType == \\"AWS::DynamoDB::Table\\" {
/// \\t\\t  configuration.tableStatus == ['ACTIVE']
/// \\t  }
/// \\t
/// \\t  rule checkcompliance when
/// \\t\\t  resourceType == \\"AWS::DynamoDB::Table\\"
/// \\t\\t  tableisactive {
/// \\t\\t\\t  supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus == \\"ENABLED\\"
/// \\t  }
/// `,
///         },
///         sourceDetails: [{
///             messageType: "ConfigurationItemChangeNotification",
///         }],
///         owner: "CUSTOM_POLICY",
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cfg.Rule("example",
///     source={
///         "custom_policy_details": {
///             "policy_runtime": "guard-2.x.x",
///             "policy_text": """\t  rule tableisactive when
/// \t\t  resourceType == \"AWS::DynamoDB::Table\" {
/// \t\t  configuration.tableStatus == ['ACTIVE']
/// \t  }
/// \t
/// \t  rule checkcompliance when
/// \t\t  resourceType == \"AWS::DynamoDB::Table\"
/// \t\t  tableisactive {
/// \t\t\t  supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus == \"ENABLED\"
/// \t  }
/// """,
///         },
///         "source_details": [{
///             "message_type": "ConfigurationItemChangeNotification",
///         }],
///         "owner": "CUSTOM_POLICY",
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cfg.Rule("example", new()
///     {
///         Source = new Aws.Cfg.Inputs.RuleSourceArgs
///         {
///             CustomPolicyDetails = new Aws.Cfg.Inputs.RuleSourceCustomPolicyDetailsArgs
///             {
///                 PolicyRuntime = "guard-2.x.x",
///                 PolicyText = @"\t  rule tableisactive when
/// \t\t  resourceType == \""AWS::DynamoDB::Table\"" {
/// \t\t  configuration.tableStatus == ['ACTIVE']
/// \t  }
/// \t
/// \t  rule checkcompliance when
/// \t\t  resourceType == \""AWS::DynamoDB::Table\""
/// \t\t  tableisactive {
/// \t\t\t  supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus == \""ENABLED\""
/// \t  }
/// ",
///             },
///             SourceDetails = new[]
///             {
///                 new Aws.Cfg.Inputs.RuleSourceSourceDetailArgs
///                 {
///                     MessageType = "ConfigurationItemChangeNotification",
///                 },
///             },
///             Owner = "CUSTOM_POLICY",
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewRule(ctx, "example", &cfg.RuleArgs{
/// 			Source: &cfg.RuleSourceArgs{
/// 				CustomPolicyDetails: &cfg.RuleSourceCustomPolicyDetailsArgs{
/// 					PolicyRuntime: pulumi.String("guard-2.x.x"),
/// 					PolicyText: pulumi.String(`\t  rule tableisactive when
/// \t\t  resourceType == \"AWS::DynamoDB::Table\" {
/// \t\t  configuration.tableStatus == ['ACTIVE']
/// \t  }
/// \t
/// \t  rule checkcompliance when
/// \t\t  resourceType == \"AWS::DynamoDB::Table\"
/// \t\t  tableisactive {
/// \t\t\t  supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus == \"ENABLED\"
/// \t  }
/// `),
/// 				},
/// 				SourceDetails: cfg.RuleSourceSourceDetailArray{
/// 					&cfg.RuleSourceSourceDetailArgs{
/// 						MessageType: pulumi.String("ConfigurationItemChangeNotification"),
/// 					},
/// 				},
/// 				Owner: pulumi.String("CUSTOM_POLICY"),
/// 			},
/// 			Name: pulumi.String("example"),
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
/// resource "aws_cfg_rule" "example" {
///   source = {
///     custom_policy_details = {
///       policy_runtime = "guard-2.x.x"
///       policy_text    = "\\t  rule tableisactive when\n\\t\\t  resourceType == \\\"AWS::DynamoDB::Table\\\" {\n\\t\\t  configuration.tableStatus == ['ACTIVE']\n\\t  }\n\\t  \n\\t  rule checkcompliance when\n\\t\\t  resourceType == \\\"AWS::DynamoDB::Table\\\"\n\\t\\t  tableisactive {\n\\t\\t\\t  supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus == \\\"ENABLED\\\"\n\\t  }\n"
///     }
///     source_details = [{
///       "messageType" = "ConfigurationItemChangeNotification"
///     }]
///     owner = "CUSTOM_POLICY"
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cfg.Rule;
/// import com.pulumi.aws.cfg.RuleArgs;
/// import com.pulumi.aws.cfg.inputs.RuleSourceArgs;
/// import com.pulumi.aws.cfg.inputs.RuleSourceCustomPolicyDetailsArgs;
/// import com.pulumi.aws.cfg.inputs.RuleSourceSourceDetailArgs;
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
///         var example = new Rule("example", RuleArgs.builder()
///             .source(RuleSourceArgs.builder()
///                 .customPolicyDetails(RuleSourceCustomPolicyDetailsArgs.builder()
///                     .policyRuntime("guard-2.x.x")
///                     .policyText("""
/// \t  rule tableisactive when
/// \t\t  resourceType == \"AWS::DynamoDB::Table\" {
/// \t\t  configuration.tableStatus == ['ACTIVE']
/// \t  }
/// \t
/// \t  rule checkcompliance when
/// \t\t  resourceType == \"AWS::DynamoDB::Table\"
/// \t\t  tableisactive {
/// \t\t\t  supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus == \"ENABLED\"
/// \t  }
///                     """)
///                     .build())
///                 .sourceDetails(RuleSourceSourceDetailArgs.builder()
///                     .messageType("ConfigurationItemChangeNotification")
///                     .build())
///                 .owner("CUSTOM_POLICY")
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cfg:Rule
///     properties:
///       source:
///         customPolicyDetails:
///           policyRuntime: guard-2.x.x
///           policyText: "\\t  rule tableisactive when\n\\t\\t  resourceType == \\\"AWS::DynamoDB::Table\\\" {\n\\t\\t  configuration.tableStatus == ['ACTIVE']\n\\t  }\n\\t  \n\\t  rule checkcompliance when\n\\t\\t  resourceType == \\\"AWS::DynamoDB::Table\\\"\n\\t\\t  tableisactive {\n\\t\\t\\t  supplementaryConfiguration.ContinuousBackupsDescription.pointInTimeRecoveryDescription.pointInTimeRecoveryStatus == \\\"ENABLED\\\"\n\\t  }\n"
///         sourceDetails:
///           - messageType: ConfigurationItemChangeNotification
///         owner: CUSTOM_POLICY
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Config Rules using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/rule:Rule example example
/// ```
class Rule extends pulumi.CustomResource {
  /// The ARN of the config rule
  late final pulumi.Output<String> arn;
  /// Description of the rule
  late final pulumi.Output<String?> description;
  /// The modes the Config rule can be evaluated in. See Evaluation Mode for more details.
  late final pulumi.Output<List<RuleEvaluationMode>> evaluationModes;
  /// A string in JSON format that is passed to the AWS Config rule Lambda function.
  late final pulumi.Output<String?> inputParameters;
  /// The maximum frequency with which AWS Config runs evaluations for a rule.
  late final pulumi.Output<String?> maximumExecutionFrequency;
  /// The name of the rule
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the config rule
  late final pulumi.Output<String> ruleId;
  /// Scope defines which resources can trigger an evaluation for the rule. See Scope Below.
  late final pulumi.Output<RuleScope?> scope;
  /// Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Source Below.
  late final pulumi.Output<RuleSource> source;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_cfg_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    evaluationModes = registerOutput<List<RuleEvaluationMode>>('evaluationModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleEvaluationMode>(guardedValue, (value) => RuleEvaluationMode.fromMap((value as Map).cast<String, dynamic>())); });
    inputParameters = registerOutput<String?>('inputParameters');
    maximumExecutionFrequency = registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    scope = registerOutput<RuleScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<RuleSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    evaluationModes = registerOutput<List<RuleEvaluationMode>>('evaluationModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleEvaluationMode>(guardedValue, (value) => RuleEvaluationMode.fromMap((value as Map).cast<String, dynamic>())); });
    inputParameters = registerOutput<String?>('inputParameters');
    maximumExecutionFrequency = registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    scope = registerOutput<RuleScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<RuleSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Rule] resource.
  Rule.reference(String urn)
    : super(
        'aws:cfg/rule:Rule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    evaluationModes = registerOutput<List<RuleEvaluationMode>>('evaluationModes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleEvaluationMode>(guardedValue, (value) => RuleEvaluationMode.fromMap((value as Map).cast<String, dynamic>())); });
    inputParameters = registerOutput<String?>('inputParameters');
    maximumExecutionFrequency = registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    scope = registerOutput<RuleScope?>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<RuleSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
