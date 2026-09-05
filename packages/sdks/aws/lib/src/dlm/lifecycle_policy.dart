import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_args.dart';
import 'lifecycle_policy_policy_details.dart';
import 'lifecycle_policy_state.dart';

/// Provides a [Data Lifecycle Manager (DLM) lifecycle policy](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html) for managing snapshots.
///
/// ## Example Usage
///
/// ### Basic
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
///             identifiers: ["dlm.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const dlmLifecycleRole = new aws.iam.Role("dlm_lifecycle_role", {
///     name: "dlm-lifecycle-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const dlmLifecycle = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             effect: "Allow",
///             actions: [
///                 "ec2:CreateSnapshot",
///                 "ec2:CreateSnapshots",
///                 "ec2:DeleteSnapshot",
///                 "ec2:DescribeInstances",
///                 "ec2:DescribeVolumes",
///                 "ec2:DescribeSnapshots",
///             ],
///             resources: ["*"],
///         },
///         {
///             effect: "Allow",
///             actions: ["ec2:CreateTags"],
///             resources: ["arn:aws:ec2:*::snapshot/*"],
///         },
///     ],
/// });
/// const dlmLifecycleRolePolicy = new aws.iam.RolePolicy("dlm_lifecycle", {
///     name: "dlm-lifecycle-policy",
///     role: dlmLifecycleRole.id,
///     policy: dlmLifecycle.then(dlmLifecycle => dlmLifecycle.json),
/// });
/// const example = new aws.dlm.LifecyclePolicy("example", {
///     policyDetails: {
///         schedules: [{
///             createRule: {
///                 interval: 24,
///                 intervalUnit: "HOURS",
///                 times: "23:45",
///             },
///             retainRule: {
///                 count: 14,
///             },
///             name: "2 weeks of daily snapshots",
///             tagsToAdd: {
///                 SnapshotCreator: "DLM",
///             },
///             copyTags: false,
///         }],
///         resourceTypes: ["VOLUME"],
///         targetTags: {
///             Snapshot: "true",
///         },
///     },
///     description: "example DLM lifecycle policy",
///     executionRoleArn: dlmLifecycleRole.arn,
///     state: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["dlm.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// dlm_lifecycle_role = aws.iam.Role("dlm_lifecycle_role",
///     name="dlm-lifecycle-role",
///     assume_role_policy=assume_role.json)
/// dlm_lifecycle = aws.iam.get_policy_document(statements=[
///     {
///         "effect": "Allow",
///         "actions": [
///             "ec2:CreateSnapshot",
///             "ec2:CreateSnapshots",
///             "ec2:DeleteSnapshot",
///             "ec2:DescribeInstances",
///             "ec2:DescribeVolumes",
///             "ec2:DescribeSnapshots",
///         ],
///         "resources": ["*"],
///     },
///     {
///         "effect": "Allow",
///         "actions": ["ec2:CreateTags"],
///         "resources": ["arn:aws:ec2:*::snapshot/*"],
///     },
/// ])
/// dlm_lifecycle_role_policy = aws.iam.RolePolicy("dlm_lifecycle",
///     name="dlm-lifecycle-policy",
///     role=dlm_lifecycle_role.id,
///     policy=dlm_lifecycle.json)
/// example = aws.dlm.LifecyclePolicy("example",
///     policy_details={
///         "schedules": [{
///             "create_rule": {
///                 "interval": 24,
///                 "interval_unit": "HOURS",
///                 "times": "23:45",
///             },
///             "retain_rule": {
///                 "count": 14,
///             },
///             "name": "2 weeks of daily snapshots",
///             "tags_to_add": {
///                 "SnapshotCreator": "DLM",
///             },
///             "copy_tags": False,
///         }],
///         "resource_types": ["VOLUME"],
///         "target_tags": {
///             "Snapshot": "true",
///         },
///     },
///     description="example DLM lifecycle policy",
///     execution_role_arn=dlm_lifecycle_role.arn,
///     state="ENABLED")
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
///                             "dlm.amazonaws.com",
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
///     var dlmLifecycleRole = new Aws.Iam.Role("dlm_lifecycle_role", new()
///     {
///         Name = "dlm-lifecycle-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var dlmLifecycle = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:CreateSnapshot",
///                     "ec2:CreateSnapshots",
///                     "ec2:DeleteSnapshot",
///                     "ec2:DescribeInstances",
///                     "ec2:DescribeVolumes",
///                     "ec2:DescribeSnapshots",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:CreateTags",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:ec2:*::snapshot/*",
///                 },
///             },
///         },
///     });
///
///     var dlmLifecycleRolePolicy = new Aws.Iam.RolePolicy("dlm_lifecycle", new()
///     {
///         Name = "dlm-lifecycle-policy",
///         Role = dlmLifecycleRole.Id,
///         Policy = dlmLifecycle.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = new Aws.Dlm.LifecyclePolicy("example", new()
///     {
///         PolicyDetails = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsArgs
///         {
///             Schedules = new[]
///             {
///                 new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleArgs
///                 {
///                     CreateRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs
///                     {
///                         Interval = 24,
///                         IntervalUnit = "HOURS",
///                         Times = "23:45",
///                     },
///                     RetainRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs
///                     {
///                         Count = 14,
///                     },
///                     Name = "2 weeks of daily snapshots",
///                     TagsToAdd =
///                     {
///                         { "SnapshotCreator", "DLM" },
///                     },
///                     CopyTags = false,
///                 },
///             },
///             ResourceTypes = new[]
///             {
///                 "VOLUME",
///             },
///             TargetTags =
///             {
///                 { "Snapshot", "true" },
///             },
///         },
///         Description = "example DLM lifecycle policy",
///         ExecutionRoleArn = dlmLifecycleRole.Arn,
///         State = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dlm"
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
/// 								"dlm.amazonaws.com",
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
/// 		dlmLifecycleRole, err := iam.NewRole(ctx, "dlm_lifecycle_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("dlm-lifecycle-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dlmLifecycle, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"ec2:CreateSnapshot",
/// 						"ec2:CreateSnapshots",
/// 						"ec2:DeleteSnapshot",
/// 						"ec2:DescribeInstances",
/// 						"ec2:DescribeVolumes",
/// 						"ec2:DescribeSnapshots",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"ec2:CreateTags",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:ec2:*::snapshot/*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "dlm_lifecycle", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("dlm-lifecycle-policy"),
/// 			Role:   dlmLifecycleRole.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: pulumi.String(dlmLifecycle.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dlm.NewLifecyclePolicy(ctx, "example", &dlm.LifecyclePolicyArgs{
/// 			PolicyDetails: &dlm.LifecyclePolicyPolicyDetailsArgs{
/// 				Schedules: dlm.LifecyclePolicyPolicyDetailsScheduleArray{
/// 					&dlm.LifecyclePolicyPolicyDetailsScheduleArgs{
/// 						CreateRule: &dlm.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs{
/// 							Interval:     pulumi.Int(24),
/// 							IntervalUnit: pulumi.String("HOURS"),
/// 							Times:        pulumi.String("23:45"),
/// 						},
/// 						RetainRule: &dlm.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs{
/// 							Count: pulumi.Int(14),
/// 						},
/// 						Name: pulumi.String("2 weeks of daily snapshots"),
/// 						TagsToAdd: pulumi.StringMap{
/// 							"SnapshotCreator": pulumi.String("DLM"),
/// 						},
/// 						CopyTags: pulumi.Bool(false),
/// 					},
/// 				},
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("VOLUME"),
/// 				},
/// 				TargetTags: pulumi.StringMap{
/// 					"Snapshot": pulumi.String("true"),
/// 				},
/// 			},
/// 			Description:      pulumi.String("example DLM lifecycle policy"),
/// 			ExecutionRoleArn: dlmLifecycleRole.Arn,
/// 			State:            pulumi.String("ENABLED"),
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
///       identifiers = ["dlm.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "dlmLifecycle" {
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:CreateSnapshot", "ec2:CreateSnapshots", "ec2:DeleteSnapshot", "ec2:DescribeInstances", "ec2:DescribeVolumes", "ec2:DescribeSnapshots"]
///     resources = ["*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:CreateTags"]
///     resources = ["arn:aws:ec2:*::snapshot/*"]
///   }
/// }
///
/// resource "aws_iam_role" "dlm_lifecycle_role" {
///   name               = "dlm-lifecycle-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "dlm_lifecycle" {
///   name   = "dlm-lifecycle-policy"
///   role   = aws_iam_role.dlm_lifecycle_role.id
///   policy = data.aws_iam_getpolicydocument.dlmLifecycle.json
/// }
/// resource "aws_dlm_lifecyclepolicy" "example" {
///   policy_details = {
///     schedules = [{
///       "createRule" = {
///         "interval"     = 24
///         "intervalUnit" = "HOURS"
///         "times"        = "23:45"
///       }
///       "retainRule" = {
///         "count" = 14
///       }
///       "name" = "2 weeks of daily snapshots"
///       "tagsToAdd" = {
///         "SnapshotCreator" = "DLM"
///       }
///       "copyTags" = false
///     }]
///     resource_types = ["VOLUME"]
///     target_tags = {
///       "Snapshot" = "true"
///     }
///   }
///   description        = "example DLM lifecycle policy"
///   execution_role_arn = aws_iam_role.dlm_lifecycle_role.arn
///   state              = "ENABLED"
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
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.dlm.LifecyclePolicy;
/// import com.pulumi.aws.dlm.LifecyclePolicyArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs;
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
///                     .identifiers("dlm.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var dlmLifecycleRole = new Role("dlmLifecycleRole", RoleArgs.builder()
///             .name("dlm-lifecycle-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var dlmLifecycle = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "ec2:CreateSnapshot",
///                         "ec2:CreateSnapshots",
///                         "ec2:DeleteSnapshot",
///                         "ec2:DescribeInstances",
///                         "ec2:DescribeVolumes",
///                         "ec2:DescribeSnapshots")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("ec2:CreateTags")
///                     .resources("arn:aws:ec2:*::snapshot/*")
///                     .build())
///             .build());
///
///         var dlmLifecycleRolePolicy = new RolePolicy("dlmLifecycleRolePolicy", RolePolicyArgs.builder()
///             .name("dlm-lifecycle-policy")
///             .role(dlmLifecycleRole.id())
///             .policy(dlmLifecycle.json())
///             .build());
///
///         var example = new LifecyclePolicy("example", LifecyclePolicyArgs.builder()
///             .policyDetails(LifecyclePolicyPolicyDetailsArgs.builder()
///                 .schedules(LifecyclePolicyPolicyDetailsScheduleArgs.builder()
///                     .createRule(LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs.builder()
///                         .interval(24)
///                         .intervalUnit("HOURS")
///                         .times("23:45")
///                         .build())
///                     .retainRule(LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs.builder()
///                         .count(14)
///                         .build())
///                     .name("2 weeks of daily snapshots")
///                     .tagsToAdd(Map.of("SnapshotCreator", "DLM"))
///                     .copyTags(false)
///                     .build())
///                 .resourceTypes("VOLUME")
///                 .targetTags(Map.of("Snapshot", "true"))
///                 .build())
///             .description("example DLM lifecycle policy")
///             .executionRoleArn(dlmLifecycleRole.arn())
///             .state("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dlmLifecycleRole:
///     type: aws:iam:Role
///     name: dlm_lifecycle_role
///     properties:
///       name: dlm-lifecycle-role
///       assumeRolePolicy: ${assumeRole.json}
///   dlmLifecycleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: dlm_lifecycle
///     properties:
///       name: dlm-lifecycle-policy
///       role: ${dlmLifecycleRole.id}
///       policy: ${dlmLifecycle.json}
///   example:
///     type: aws:dlm:LifecyclePolicy
///     properties:
///       policyDetails:
///         schedules:
///           - createRule:
///               interval: 24
///               intervalUnit: HOURS
///               times: 23:45
///             retainRule:
///               count: 14
///             name: 2 weeks of daily snapshots
///             tagsToAdd:
///               SnapshotCreator: DLM
///             copyTags: false
///         resourceTypes:
///           - VOLUME
///         targetTags:
///           Snapshot: 'true'
///       description: example DLM lifecycle policy
///       executionRoleArn: ${dlmLifecycleRole.arn}
///       state: ENABLED
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - dlm.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   dlmLifecycle:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - ec2:CreateSnapshot
///               - ec2:CreateSnapshots
///               - ec2:DeleteSnapshot
///               - ec2:DescribeInstances
///               - ec2:DescribeVolumes
///               - ec2:DescribeSnapshots
///             resources:
///               - '*'
///           - effect: Allow
///             actions:
///               - ec2:CreateTags
///             resources:
///               - arn:aws:ec2:*::snapshot/*
/// ```
///
///
/// ### Example Default Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dlm.LifecyclePolicy("example", {
///     policyDetails: {
///         exclusions: {
///             excludeBootVolumes: false,
///             excludeTags: {
///                 test: "exclude",
///             },
///             excludeVolumeTypes: ["gp2"],
///         },
///         createInterval: 5,
///         resourceType: "VOLUME",
///         policyLanguage: "SIMPLIFIED",
///     },
///     description: "tf-acc-basic",
///     executionRoleArn: exampleAwsIamRole.arn,
///     defaultPolicy: "VOLUME",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dlm.LifecyclePolicy("example",
///     policy_details={
///         "exclusions": {
///             "exclude_boot_volumes": False,
///             "exclude_tags": {
///                 "test": "exclude",
///             },
///             "exclude_volume_types": ["gp2"],
///         },
///         "create_interval": 5,
///         "resource_type": "VOLUME",
///         "policy_language": "SIMPLIFIED",
///     },
///     description="tf-acc-basic",
///     execution_role_arn=example_aws_iam_role["arn"],
///     default_policy="VOLUME")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Dlm.LifecyclePolicy("example", new()
///     {
///         PolicyDetails = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsArgs
///         {
///             Exclusions = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsExclusionsArgs
///             {
///                 ExcludeBootVolumes = false,
///                 ExcludeTags =
///                 {
///                     { "test", "exclude" },
///                 },
///                 ExcludeVolumeTypes = new[]
///                 {
///                     "gp2",
///                 },
///             },
///             CreateInterval = 5,
///             ResourceType = "VOLUME",
///             PolicyLanguage = "SIMPLIFIED",
///         },
///         Description = "tf-acc-basic",
///         ExecutionRoleArn = exampleAwsIamRole.Arn,
///         DefaultPolicy = "VOLUME",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dlm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dlm.NewLifecyclePolicy(ctx, "example", &dlm.LifecyclePolicyArgs{
/// 			PolicyDetails: &dlm.LifecyclePolicyPolicyDetailsArgs{
/// 				Exclusions: &dlm.LifecyclePolicyPolicyDetailsExclusionsArgs{
/// 					ExcludeBootVolumes: pulumi.Bool(false),
/// 					ExcludeTags: pulumi.StringMap{
/// 						"test": pulumi.String("exclude"),
/// 					},
/// 					ExcludeVolumeTypes: pulumi.StringArray{
/// 						pulumi.String("gp2"),
/// 					},
/// 				},
/// 				CreateInterval: pulumi.Int(5),
/// 				ResourceType:   pulumi.String("VOLUME"),
/// 				PolicyLanguage: pulumi.String("SIMPLIFIED"),
/// 			},
/// 			Description:      pulumi.String("tf-acc-basic"),
/// 			ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			DefaultPolicy:    pulumi.String("VOLUME"),
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
/// resource "aws_dlm_lifecyclepolicy" "example" {
///   policy_details = {
///     exclusions = {
///       exclude_boot_volumes = false
///       exclude_tags = {
///         "test" = "exclude"
///       }
///       exclude_volume_types = ["gp2"]
///     }
///     create_interval = 5
///     resource_type   = "VOLUME"
///     policy_language = "SIMPLIFIED"
///   }
///   description        = "tf-acc-basic"
///   execution_role_arn = exampleAwsIamRole.arn
///   default_policy     = "VOLUME"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dlm.LifecyclePolicy;
/// import com.pulumi.aws.dlm.LifecyclePolicyArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsExclusionsArgs;
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
///         var example = new LifecyclePolicy("example", LifecyclePolicyArgs.builder()
///             .policyDetails(LifecyclePolicyPolicyDetailsArgs.builder()
///                 .exclusions(LifecyclePolicyPolicyDetailsExclusionsArgs.builder()
///                     .excludeBootVolumes(false)
///                     .excludeTags(Map.of("test", "exclude"))
///                     .excludeVolumeTypes("gp2")
///                     .build())
///                 .createInterval(5)
///                 .resourceType("VOLUME")
///                 .policyLanguage("SIMPLIFIED")
///                 .build())
///             .description("tf-acc-basic")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .defaultPolicy("VOLUME")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dlm:LifecyclePolicy
///     properties:
///       policyDetails:
///         exclusions:
///           excludeBootVolumes: false
///           excludeTags:
///             test: exclude
///           excludeVolumeTypes:
///             - gp2
///         createInterval: 5
///         resourceType: VOLUME
///         policyLanguage: SIMPLIFIED
///       description: tf-acc-basic
///       executionRoleArn: ${exampleAwsIamRole.arn}
///       defaultPolicy: VOLUME
/// ```
///
///
/// ### Example Cross-Region Snapshot Copy Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ...other configuration...
/// const current = aws.getCallerIdentity({});
/// const key = current.then(current => aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: [`arn:aws:iam::${current.accountId}:root`],
///         }],
///         sid: "Enable IAM User Permissions",
///         effect: "Allow",
///         actions: ["kms:*"],
///         resources: ["*"],
///     }],
/// }));
/// const dlmCrossRegionCopyCmk = new aws.kms.Key("dlm_cross_region_copy_cmk", {
///     description: "Example Alternate Region KMS Key",
///     policy: key.then(key => key.json),
/// });
/// const example = new aws.dlm.LifecyclePolicy("example", {
///     policyDetails: {
///         schedules: [{
///             createRule: {
///                 interval: 24,
///                 intervalUnit: "HOURS",
///                 times: "23:45",
///             },
///             retainRule: {
///                 count: 14,
///             },
///             crossRegionCopyRules: [{
///                 retainRule: {
///                     interval: 30,
///                     intervalUnit: "DAYS",
///                 },
///                 target: "us-west-2",
///                 encrypted: true,
///                 cmkArn: dlmCrossRegionCopyCmk.arn,
///                 copyTags: true,
///             }],
///             name: "2 weeks of daily snapshots",
///             tagsToAdd: {
///                 SnapshotCreator: "DLM",
///             },
///             copyTags: false,
///         }],
///         resourceTypes: ["VOLUME"],
///         targetTags: {
///             Snapshot: "true",
///         },
///     },
///     description: "example DLM lifecycle policy",
///     executionRoleArn: dlmLifecycleRole.arn,
///     state: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ...other configuration...
/// current = aws.get_caller_identity()
/// key = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [f"arn:aws:iam::{current.account_id}:root"],
///     }],
///     "sid": "Enable IAM User Permissions",
///     "effect": "Allow",
///     "actions": ["kms:*"],
///     "resources": ["*"],
/// }])
/// dlm_cross_region_copy_cmk = aws.kms.Key("dlm_cross_region_copy_cmk",
///     description="Example Alternate Region KMS Key",
///     policy=key.json)
/// example = aws.dlm.LifecyclePolicy("example",
///     policy_details={
///         "schedules": [{
///             "create_rule": {
///                 "interval": 24,
///                 "interval_unit": "HOURS",
///                 "times": "23:45",
///             },
///             "retain_rule": {
///                 "count": 14,
///             },
///             "cross_region_copy_rules": [{
///                 "retain_rule": {
///                     "interval": 30,
///                     "interval_unit": "DAYS",
///                 },
///                 "target": "us-west-2",
///                 "encrypted": True,
///                 "cmk_arn": dlm_cross_region_copy_cmk.arn,
///                 "copy_tags": True,
///             }],
///             "name": "2 weeks of daily snapshots",
///             "tags_to_add": {
///                 "SnapshotCreator": "DLM",
///             },
///             "copy_tags": False,
///         }],
///         "resource_types": ["VOLUME"],
///         "target_tags": {
///             "Snapshot": "true",
///         },
///     },
///     description="example DLM lifecycle policy",
///     execution_role_arn=dlm_lifecycle_role["arn"],
///     state="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // ...other configuration...
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var key = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                         },
///                     },
///                 },
///                 Sid = "Enable IAM User Permissions",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "kms:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var dlmCrossRegionCopyCmk = new Aws.Kms.Key("dlm_cross_region_copy_cmk", new()
///     {
///         Description = "Example Alternate Region KMS Key",
///         Policy = key.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = new Aws.Dlm.LifecyclePolicy("example", new()
///     {
///         PolicyDetails = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsArgs
///         {
///             Schedules = new[]
///             {
///                 new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleArgs
///                 {
///                     CreateRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs
///                     {
///                         Interval = 24,
///                         IntervalUnit = "HOURS",
///                         Times = "23:45",
///                     },
///                     RetainRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs
///                     {
///                         Count = 14,
///                     },
///                     CrossRegionCopyRules = new[]
///                     {
///                         new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleArgs
///                         {
///                             RetainRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRuleArgs
///                             {
///                                 Interval = 30,
///                                 IntervalUnit = "DAYS",
///                             },
///                             Target = "us-west-2",
///                             Encrypted = true,
///                             CmkArn = dlmCrossRegionCopyCmk.Arn,
///                             CopyTags = true,
///                         },
///                     },
///                     Name = "2 weeks of daily snapshots",
///                     TagsToAdd =
///                     {
///                         { "SnapshotCreator", "DLM" },
///                     },
///                     CopyTags = false,
///                 },
///             },
///             ResourceTypes = new[]
///             {
///                 "VOLUME",
///             },
///             TargetTags =
///             {
///                 { "Snapshot", "true" },
///             },
///         },
///         Description = "example DLM lifecycle policy",
///         ExecutionRoleArn = dlmLifecycleRole.Arn,
///         State = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dlm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ...other configuration...
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("Enable IAM User Permissions"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"kms:*",
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
/// 		dlmCrossRegionCopyCmk, err := kms.NewKey(ctx, "dlm_cross_region_copy_cmk", &kms.KeyArgs{
/// 			Description: pulumi.String("Example Alternate Region KMS Key"),
/// 			Policy:      pulumi.String(key.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dlm.NewLifecyclePolicy(ctx, "example", &dlm.LifecyclePolicyArgs{
/// 			PolicyDetails: &dlm.LifecyclePolicyPolicyDetailsArgs{
/// 				Schedules: dlm.LifecyclePolicyPolicyDetailsScheduleArray{
/// 					&dlm.LifecyclePolicyPolicyDetailsScheduleArgs{
/// 						CreateRule: &dlm.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs{
/// 							Interval:     pulumi.Int(24),
/// 							IntervalUnit: pulumi.String("HOURS"),
/// 							Times:        pulumi.String("23:45"),
/// 						},
/// 						RetainRule: &dlm.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs{
/// 							Count: pulumi.Int(14),
/// 						},
/// 						CrossRegionCopyRules: dlm.LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleArray{
/// 							&dlm.LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleArgs{
/// 								RetainRule: &dlm.LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRuleArgs{
/// 									Interval:     pulumi.Int(30),
/// 									IntervalUnit: pulumi.String("DAYS"),
/// 								},
/// 								Target:    pulumi.String("us-west-2"),
/// 								Encrypted: pulumi.Bool(true),
/// 								CmkArn:    dlmCrossRegionCopyCmk.Arn,
/// 								CopyTags:  pulumi.Bool(true),
/// 							},
/// 						},
/// 						Name: pulumi.String("2 weeks of daily snapshots"),
/// 						TagsToAdd: pulumi.StringMap{
/// 							"SnapshotCreator": pulumi.String("DLM"),
/// 						},
/// 						CopyTags: pulumi.Bool(false),
/// 					},
/// 				},
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("VOLUME"),
/// 				},
/// 				TargetTags: pulumi.StringMap{
/// 					"Snapshot": pulumi.String("true"),
/// 				},
/// 			},
/// 			Description:      pulumi.String("example DLM lifecycle policy"),
/// 			ExecutionRoleArn: pulumi.Any(dlmLifecycleRole.Arn),
/// 			State:            pulumi.String("ENABLED"),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getpolicydocument" "key" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = ["arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:root"]
///     }
///     sid       = "Enable IAM User Permissions"
///     effect    = "Allow"
///     actions   = ["kms:*"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_kms_key" "dlm_cross_region_copy_cmk" {
///   description = "Example Alternate Region KMS Key"
///   policy      = data.aws_iam_getpolicydocument.key.json
/// }
/// resource "aws_dlm_lifecyclepolicy" "example" {
///   policy_details = {
///     schedules = [{
///       "createRule" = {
///         "interval"     = 24
///         "intervalUnit" = "HOURS"
///         "times"        = "23:45"
///       }
///       "retainRule" = {
///         "count" = 14
///       }
///       "crossRegionCopyRules" = [{
///         "retainRule" = {
///           "interval"     = 30
///           "intervalUnit" = "DAYS"
///         }
///         "target"    = "us-west-2"
///         "encrypted" = true
///         "cmkArn"    = aws_kms_key.dlm_cross_region_copy_cmk.arn
///         "copyTags"  = true
///       }]
///       "name" = "2 weeks of daily snapshots"
///       "tagsToAdd" = {
///         "SnapshotCreator" = "DLM"
///       }
///       "copyTags" = false
///     }]
///     resource_types = ["VOLUME"]
///     target_tags = {
///       "Snapshot" = "true"
///     }
///   }
///   description        = "example DLM lifecycle policy"
///   execution_role_arn = dlmLifecycleRole.arn
///   state              = "ENABLED"
/// }
/// # ...other configuration...
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.dlm.LifecyclePolicy;
/// import com.pulumi.aws.dlm.LifecyclePolicyArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRuleArgs;
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
///         // ...other configuration...
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var key = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(String.format("arn:aws:iam::%s:root", current.accountId()))
///                     .build())
///                 .sid("Enable IAM User Permissions")
///                 .effect("Allow")
///                 .actions("kms:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var dlmCrossRegionCopyCmk = new Key("dlmCrossRegionCopyCmk", KeyArgs.builder()
///             .description("Example Alternate Region KMS Key")
///             .policy(key.json())
///             .build());
///
///         var example = new LifecyclePolicy("example", LifecyclePolicyArgs.builder()
///             .policyDetails(LifecyclePolicyPolicyDetailsArgs.builder()
///                 .schedules(LifecyclePolicyPolicyDetailsScheduleArgs.builder()
///                     .createRule(LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs.builder()
///                         .interval(24)
///                         .intervalUnit("HOURS")
///                         .times("23:45")
///                         .build())
///                     .retainRule(LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs.builder()
///                         .count(14)
///                         .build())
///                     .crossRegionCopyRules(LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleArgs.builder()
///                         .retainRule(LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRuleArgs.builder()
///                             .interval(30)
///                             .intervalUnit("DAYS")
///                             .build())
///                         .target("us-west-2")
///                         .encrypted(true)
///                         .cmkArn(dlmCrossRegionCopyCmk.arn())
///                         .copyTags(true)
///                         .build())
///                     .name("2 weeks of daily snapshots")
///                     .tagsToAdd(Map.of("SnapshotCreator", "DLM"))
///                     .copyTags(false)
///                     .build())
///                 .resourceTypes("VOLUME")
///                 .targetTags(Map.of("Snapshot", "true"))
///                 .build())
///             .description("example DLM lifecycle policy")
///             .executionRoleArn(dlmLifecycleRole.arn())
///             .state("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dlmCrossRegionCopyCmk:
///     type: aws:kms:Key
///     name: dlm_cross_region_copy_cmk
///     properties:
///       description: Example Alternate Region KMS Key
///       policy: ${key.json}
///   example:
///     type: aws:dlm:LifecyclePolicy
///     properties:
///       policyDetails:
///         schedules:
///           - createRule:
///               interval: 24
///               intervalUnit: HOURS
///               times: 23:45
///             retainRule:
///               count: 14
///             crossRegionCopyRules:
///               - retainRule:
///                   interval: 30
///                   intervalUnit: DAYS
///                 target: us-west-2
///                 encrypted: true
///                 cmkArn: ${dlmCrossRegionCopyCmk.arn}
///                 copyTags: true
///             name: 2 weeks of daily snapshots
///             tagsToAdd:
///               SnapshotCreator: DLM
///             copyTags: false
///         resourceTypes:
///           - VOLUME
///         targetTags:
///           Snapshot: 'true'
///       description: example DLM lifecycle policy
///       executionRoleArn: ${dlmLifecycleRole.arn}
///       state: ENABLED
/// variables:
///   # ...other configuration...
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   key:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - arn:aws:iam::${current.accountId}:root
///             sid: Enable IAM User Permissions
///             effect: Allow
///             actions:
///               - kms:*
///             resources:
///               - '*'
/// ```
///
///
/// ### Example Event Based Policy Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const exampleLifecyclePolicy = new aws.dlm.LifecyclePolicy("example", {
///     policyDetails: {
///         action: {
///             crossRegionCopies: [{
///                 encryptionConfiguration: {},
///                 retainRule: {
///                     interval: 15,
///                     intervalUnit: "MONTHS",
///                 },
///                 target: "us-east-1",
///             }],
///             name: "tf-acc-basic",
///         },
///         eventSource: {
///             parameters: {
///                 descriptionRegex: "^.*Created for policy: policy-1234567890abcdef0.*$",
///                 eventType: "shareSnapshot",
///                 snapshotOwners: [current.then(current => current.accountId)],
///             },
///             type: "MANAGED_CWE",
///         },
///         policyType: "EVENT_BASED_POLICY",
///     },
///     description: "tf-acc-basic",
///     executionRoleArn: exampleAwsIamRole.arn,
/// });
/// const example = aws.iam.getPolicy({
///     name: "AWSDataLifecycleManagerServiceRole",
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     role: exampleAwsIamRole.id,
///     policyArn: example.then(example => example.arn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example_lifecycle_policy = aws.dlm.LifecyclePolicy("example",
///     policy_details={
///         "action": {
///             "cross_region_copies": [{
///                 "encryption_configuration": {},
///                 "retain_rule": {
///                     "interval": 15,
///                     "interval_unit": "MONTHS",
///                 },
///                 "target": "us-east-1",
///             }],
///             "name": "tf-acc-basic",
///         },
///         "event_source": {
///             "parameters": {
///                 "description_regex": "^.*Created for policy: policy-1234567890abcdef0.*$",
///                 "event_type": "shareSnapshot",
///                 "snapshot_owners": [current.account_id],
///             },
///             "type": "MANAGED_CWE",
///         },
///         "policy_type": "EVENT_BASED_POLICY",
///     },
///     description="tf-acc-basic",
///     execution_role_arn=example_aws_iam_role["arn"])
/// example = aws.iam.get_policy(name="AWSDataLifecycleManagerServiceRole")
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     role=example_aws_iam_role["id"],
///     policy_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var exampleLifecyclePolicy = new Aws.Dlm.LifecyclePolicy("example", new()
///     {
///         PolicyDetails = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsArgs
///         {
///             Action = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsActionArgs
///             {
///                 CrossRegionCopies = new[]
///                 {
///                     new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsActionCrossRegionCopyArgs
///                     {
///                         EncryptionConfiguration = null,
///                         RetainRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRuleArgs
///                         {
///                             Interval = 15,
///                             IntervalUnit = "MONTHS",
///                         },
///                         Target = "us-east-1",
///                     },
///                 },
///                 Name = "tf-acc-basic",
///             },
///             EventSource = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsEventSourceArgs
///             {
///                 Parameters = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsEventSourceParametersArgs
///                 {
///                     DescriptionRegex = "^.*Created for policy: policy-1234567890abcdef0.*$",
///                     EventType = "shareSnapshot",
///                     SnapshotOwners = new[]
///                     {
///                         current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                     },
///                 },
///                 Type = "MANAGED_CWE",
///             },
///             PolicyType = "EVENT_BASED_POLICY",
///         },
///         Description = "tf-acc-basic",
///         ExecutionRoleArn = exampleAwsIamRole.Arn,
///     });
///
///     var example = Aws.Iam.GetPolicy.Invoke(new()
///     {
///         Name = "AWSDataLifecycleManagerServiceRole",
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = exampleAwsIamRole.Id,
///         PolicyArn = example.Apply(getPolicyResult => getPolicyResult.Arn),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dlm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dlm.NewLifecyclePolicy(ctx, "example", &dlm.LifecyclePolicyArgs{
/// 			PolicyDetails: &dlm.LifecyclePolicyPolicyDetailsArgs{
/// 				Action: &dlm.LifecyclePolicyPolicyDetailsActionArgs{
/// 					CrossRegionCopies: dlm.LifecyclePolicyPolicyDetailsActionCrossRegionCopyArray{
/// 						&dlm.LifecyclePolicyPolicyDetailsActionCrossRegionCopyArgs{
/// 							EncryptionConfiguration: &dlm.LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfigurationArgs{},
/// 							RetainRule: &dlm.LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRuleArgs{
/// 								Interval:     pulumi.Int(15),
/// 								IntervalUnit: pulumi.String("MONTHS"),
/// 							},
/// 							Target: pulumi.String("us-east-1"),
/// 						},
/// 					},
/// 					Name: pulumi.String("tf-acc-basic"),
/// 				},
/// 				EventSource: &dlm.LifecyclePolicyPolicyDetailsEventSourceArgs{
/// 					Parameters: &dlm.LifecyclePolicyPolicyDetailsEventSourceParametersArgs{
/// 						DescriptionRegex: pulumi.String("^.*Created for policy: policy-1234567890abcdef0.*$"),
/// 						EventType:        pulumi.String("shareSnapshot"),
/// 						SnapshotOwners: pulumi.StringArray{
/// 							pulumi.String(current.AccountId),
/// 						},
/// 					},
/// 					Type: pulumi.String("MANAGED_CWE"),
/// 				},
/// 				PolicyType: pulumi.String("EVENT_BASED_POLICY"),
/// 			},
/// 			Description:      pulumi.String("tf-acc-basic"),
/// 			ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.LookupPolicy(ctx, &iam.LookupPolicyArgs{
/// 			Name: pulumi.StringRef("AWSDataLifecycleManagerServiceRole"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      pulumi.Any(exampleAwsIamRole.Id),
/// 			PolicyArn: pulumi.String(example.Arn),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getpolicy" "example" {
///   name = "AWSDataLifecycleManagerServiceRole"
/// }
///
/// resource "aws_dlm_lifecyclepolicy" "example" {
///   policy_details = {
///     action = {
///       cross_region_copies = [{
///         "encryptionConfiguration" = {}
///         "retainRule" = {
///           "interval"     = 15
///           "intervalUnit" = "MONTHS"
///         }
///         "target" = "us-east-1"
///       }]
///       name = "tf-acc-basic"
///     }
///     event_source = {
///       parameters = {
///         description_regex = "^.*Created for policy: policy-1234567890abcdef0.*$"
///         event_type        = "shareSnapshot"
///         snapshot_owners   = [data.aws_getcalleridentity.current.account_id]
///       }
///       type = "MANAGED_CWE"
///     }
///     policy_type = "EVENT_BASED_POLICY"
///   }
///   description        = "tf-acc-basic"
///   execution_role_arn = exampleAwsIamRole.arn
/// }
/// resource "aws_iam_rolepolicyattachment" "example" {
///   role       = exampleAwsIamRole.id
///   policy_arn = data.aws_iam_getpolicy.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.dlm.LifecyclePolicy;
/// import com.pulumi.aws.dlm.LifecyclePolicyArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsActionArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsActionCrossRegionCopyArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfigurationArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRuleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsEventSourceArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsEventSourceParametersArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .policyDetails(LifecyclePolicyPolicyDetailsArgs.builder()
///                 .action(LifecyclePolicyPolicyDetailsActionArgs.builder()
///                     .crossRegionCopies(LifecyclePolicyPolicyDetailsActionCrossRegionCopyArgs.builder()
///                         .encryptionConfiguration(LifecyclePolicyPolicyDetailsActionCrossRegionCopyEncryptionConfigurationArgs.builder()
///                             .build())
///                         .retainRule(LifecyclePolicyPolicyDetailsActionCrossRegionCopyRetainRuleArgs.builder()
///                             .interval(15)
///                             .intervalUnit("MONTHS")
///                             .build())
///                         .target("us-east-1")
///                         .build())
///                     .name("tf-acc-basic")
///                     .build())
///                 .eventSource(LifecyclePolicyPolicyDetailsEventSourceArgs.builder()
///                     .parameters(LifecyclePolicyPolicyDetailsEventSourceParametersArgs.builder()
///                         .descriptionRegex("^.*Created for policy: policy-1234567890abcdef0.*$")
///                         .eventType("shareSnapshot")
///                         .snapshotOwners(current.accountId())
///                         .build())
///                     .type("MANAGED_CWE")
///                     .build())
///                 .policyType("EVENT_BASED_POLICY")
///                 .build())
///             .description("tf-acc-basic")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///         final var example = IamFunctions.getPolicy(GetPolicyArgs.builder()
///             .name("AWSDataLifecycleManagerServiceRole")
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(exampleAwsIamRole.id())
///             .policyArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLifecyclePolicy:
///     type: aws:dlm:LifecyclePolicy
///     name: example
///     properties:
///       policyDetails:
///         action:
///           crossRegionCopies:
///             - encryptionConfiguration: {}
///               retainRule:
///                 interval: 15
///                 intervalUnit: MONTHS
///               target: us-east-1
///           name: tf-acc-basic
///         eventSource:
///           parameters:
///             descriptionRegex: '^.*Created for policy: policy-1234567890abcdef0.*$'
///             eventType: shareSnapshot
///             snapshotOwners:
///               - ${current.accountId}
///           type: MANAGED_CWE
///         policyType: EVENT_BASED_POLICY
///       description: tf-acc-basic
///       executionRoleArn: ${exampleAwsIamRole.arn}
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       role: ${exampleAwsIamRole.id}
///       policyArn: ${example.arn}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicy
///       arguments:
///         name: AWSDataLifecycleManagerServiceRole
/// ```
///
///
/// ### Example Post/Pre Scripts
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.iam.getPolicy({
///     name: "AWSDataLifecycleManagerSSMFullAccess",
/// });
/// const example = new aws.iam.RolePolicyAttachment("example", {
///     role: testAwsIamRole.id,
///     policyArn: exampleAwsIamPolicy.arn,
/// });
/// const exampleLifecyclePolicy = new aws.dlm.LifecyclePolicy("example", {
///     policyDetails: {
///         schedules: [{
///             createRule: {
///                 scripts: {
///                     executeOperationOnScriptFailure: false,
///                     executionHandler: "AWS_VSS_BACKUP",
///                     maximumRetryCount: 2,
///                 },
///                 interval: 12,
///             },
///             retainRule: {
///                 count: 10,
///             },
///             name: "Windows VSS",
///         }],
///         resourceTypes: ["INSTANCE"],
///         targetTags: {
///             tag1: "Windows",
///         },
///     },
///     description: "tf-acc-basic",
///     executionRoleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.iam.get_policy(name="AWSDataLifecycleManagerSSMFullAccess")
/// example = aws.iam.RolePolicyAttachment("example",
///     role=test_aws_iam_role["id"],
///     policy_arn=example_aws_iam_policy["arn"])
/// example_lifecycle_policy = aws.dlm.LifecyclePolicy("example",
///     policy_details={
///         "schedules": [{
///             "create_rule": {
///                 "scripts": {
///                     "execute_operation_on_script_failure": False,
///                     "execution_handler": "AWS_VSS_BACKUP",
///                     "maximum_retry_count": 2,
///                 },
///                 "interval": 12,
///             },
///             "retain_rule": {
///                 "count": 10,
///             },
///             "name": "Windows VSS",
///         }],
///         "resource_types": ["INSTANCE"],
///         "target_tags": {
///             "tag1": "Windows",
///         },
///     },
///     description="tf-acc-basic",
///     execution_role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Iam.GetPolicy.Invoke(new()
///     {
///         Name = "AWSDataLifecycleManagerSSMFullAccess",
///     });
///
///     var example = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = testAwsIamRole.Id,
///         PolicyArn = exampleAwsIamPolicy.Arn,
///     });
///
///     var exampleLifecyclePolicy = new Aws.Dlm.LifecyclePolicy("example", new()
///     {
///         PolicyDetails = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsArgs
///         {
///             Schedules = new[]
///             {
///                 new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleArgs
///                 {
///                     CreateRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs
///                     {
///                         Scripts = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleScriptsArgs
///                         {
///                             ExecuteOperationOnScriptFailure = false,
///                             ExecutionHandler = "AWS_VSS_BACKUP",
///                             MaximumRetryCount = 2,
///                         },
///                         Interval = 12,
///                     },
///                     RetainRule = new Aws.Dlm.Inputs.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs
///                     {
///                         Count = 10,
///                     },
///                     Name = "Windows VSS",
///                 },
///             },
///             ResourceTypes = new[]
///             {
///                 "INSTANCE",
///             },
///             TargetTags =
///             {
///                 { "tag1", "Windows" },
///             },
///         },
///         Description = "tf-acc-basic",
///         ExecutionRoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dlm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.LookupPolicy(ctx, &iam.LookupPolicyArgs{
/// 			Name: pulumi.StringRef("AWSDataLifecycleManagerSSMFullAccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      pulumi.Any(testAwsIamRole.Id),
/// 			PolicyArn: pulumi.Any(exampleAwsIamPolicy.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dlm.NewLifecyclePolicy(ctx, "example", &dlm.LifecyclePolicyArgs{
/// 			PolicyDetails: &dlm.LifecyclePolicyPolicyDetailsArgs{
/// 				Schedules: dlm.LifecyclePolicyPolicyDetailsScheduleArray{
/// 					&dlm.LifecyclePolicyPolicyDetailsScheduleArgs{
/// 						CreateRule: &dlm.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs{
/// 							Scripts: &dlm.LifecyclePolicyPolicyDetailsScheduleCreateRuleScriptsArgs{
/// 								ExecuteOperationOnScriptFailure: pulumi.Bool(false),
/// 								ExecutionHandler:                pulumi.String("AWS_VSS_BACKUP"),
/// 								MaximumRetryCount:               pulumi.Int(2),
/// 							},
/// 							Interval: pulumi.Int(12),
/// 						},
/// 						RetainRule: &dlm.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs{
/// 							Count: pulumi.Int(10),
/// 						},
/// 						Name: pulumi.String("Windows VSS"),
/// 					},
/// 				},
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("INSTANCE"),
/// 				},
/// 				TargetTags: pulumi.StringMap{
/// 					"tag1": pulumi.String("Windows"),
/// 				},
/// 			},
/// 			Description:      pulumi.String("tf-acc-basic"),
/// 			ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// data "aws_iam_getpolicy" "test" {
///   name = "AWSDataLifecycleManagerSSMFullAccess"
/// }
///
/// resource "aws_iam_rolepolicyattachment" "example" {
///   role       = testAwsIamRole.id
///   policy_arn = exampleAwsIamPolicy.arn
/// }
/// resource "aws_dlm_lifecyclepolicy" "example" {
///   policy_details = {
///     schedules = [{
///       "createRule" = {
///         "scripts" = {
///           "executeOperationOnScriptFailure" = false
///           "executionHandler"                = "AWS_VSS_BACKUP"
///           "maximumRetryCount"               = 2
///         }
///         "interval" = 12
///       }
///       "retainRule" = {
///         "count" = 10
///       }
///       "name" = "Windows VSS"
///     }]
///     resource_types = ["INSTANCE"]
///     target_tags = {
///       "tag1" = "Windows"
///     }
///   }
///   description        = "tf-acc-basic"
///   execution_role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.dlm.LifecyclePolicy;
/// import com.pulumi.aws.dlm.LifecyclePolicyArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleCreateRuleScriptsArgs;
/// import com.pulumi.aws.dlm.inputs.LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs;
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
///         final var test = IamFunctions.getPolicy(GetPolicyArgs.builder()
///             .name("AWSDataLifecycleManagerSSMFullAccess")
///             .build());
///
///         var example = new RolePolicyAttachment("example", RolePolicyAttachmentArgs.builder()
///             .role(testAwsIamRole.id())
///             .policyArn(exampleAwsIamPolicy.arn())
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .policyDetails(LifecyclePolicyPolicyDetailsArgs.builder()
///                 .schedules(LifecyclePolicyPolicyDetailsScheduleArgs.builder()
///                     .createRule(LifecyclePolicyPolicyDetailsScheduleCreateRuleArgs.builder()
///                         .scripts(LifecyclePolicyPolicyDetailsScheduleCreateRuleScriptsArgs.builder()
///                             .executeOperationOnScriptFailure(false)
///                             .executionHandler("AWS_VSS_BACKUP")
///                             .maximumRetryCount(2)
///                             .build())
///                         .interval(12)
///                         .build())
///                     .retainRule(LifecyclePolicyPolicyDetailsScheduleRetainRuleArgs.builder()
///                         .count(10)
///                         .build())
///                     .name("Windows VSS")
///                     .build())
///                 .resourceTypes("INSTANCE")
///                 .targetTags(Map.of("tag1", "Windows"))
///                 .build())
///             .description("tf-acc-basic")
///             .executionRoleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       role: ${testAwsIamRole.id}
///       policyArn: ${exampleAwsIamPolicy.arn}
///   exampleLifecyclePolicy:
///     type: aws:dlm:LifecyclePolicy
///     name: example
///     properties:
///       policyDetails:
///         schedules:
///           - createRule:
///               scripts:
///                 executeOperationOnScriptFailure: false
///                 executionHandler: AWS_VSS_BACKUP
///                 maximumRetryCount: 2
///               interval: 12
///             retainRule:
///               count: 10
///             name: Windows VSS
///         resourceTypes:
///           - INSTANCE
///         targetTags:
///           tag1: Windows
///       description: tf-acc-basic
///       executionRoleArn: ${exampleAwsIamRole.arn}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicy
///       arguments:
///         name: AWSDataLifecycleManagerSSMFullAccess
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DLM lifecycle policies using their policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:dlm/lifecyclePolicy:LifecyclePolicy example policy-abcdef12345678901
/// ```
class LifecyclePolicy extends pulumi.CustomResource {
  /// ARN of the DLM Lifecycle Policy.
  late final pulumi.Output<String> arn;
  /// Specify the type of default policy to create. valid values are `VOLUME` or `INSTANCE`.
  late final pulumi.Output<String?> defaultPolicy;
  /// A description for the DLM lifecycle policy.
  late final pulumi.Output<String> description;
  /// The ARN of an IAM role that is able to be assumed by the DLM service.
  late final pulumi.Output<String> executionRoleArn;
  /// See the `policyDetails` configuration block. Max of 1.
  late final pulumi.Output<LifecyclePolicyPolicyDetails> policyDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether the lifecycle policy should be enabled or disabled. `ENABLED` or `DISABLED` are valid values. Defaults to `ENABLED`.
  late final pulumi.Output<String?> state;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LifecyclePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LifecyclePolicy]. {@macro pulumi_dlm_lifecycle_policy_lifecycle_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LifecyclePolicy(
    String name, {
    LifecyclePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dlm/lifecyclePolicy:LifecyclePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    defaultPolicy = registerOutput<String?>('defaultPolicy');
    description = registerOutput<String>('description');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    policyDetails = registerOutput<LifecyclePolicyPolicyDetails>('policyDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LifecyclePolicyPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [LifecyclePolicy] resource's state with the given [name] and [id].
  static LifecyclePolicy get(
    String name,
    pulumi.Input<String> id, {
    LifecyclePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LifecyclePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LifecyclePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dlm/lifecyclePolicy:LifecyclePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultPolicy = registerOutput<String?>('defaultPolicy');
    description = registerOutput<String>('description');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    policyDetails = registerOutput<LifecyclePolicyPolicyDetails>('policyDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LifecyclePolicyPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    this.state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [LifecyclePolicy] resource.
  LifecyclePolicy.reference(String urn)
    : super(
        'aws:dlm/lifecyclePolicy:LifecyclePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    defaultPolicy = registerOutput<String?>('defaultPolicy');
    description = registerOutput<String>('description');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    policyDetails = registerOutput<LifecyclePolicyPolicyDetails>('policyDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LifecyclePolicyPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
