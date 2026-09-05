import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_server_group_args.dart';
import 'game_server_group_auto_scaling_policy.dart';
import 'game_server_group_instance_definition.dart';
import 'game_server_group_launch_template.dart';
import 'game_server_group_state.dart';

/// Provides an GameLift Game Server Group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.gamelift.GameServerGroup("example", {
///     launchTemplate: {
///         id: exampleAwsLaunchTemplate.id,
///     },
///     instanceDefinitions: [
///         {
///             instanceType: "c5.large",
///         },
///         {
///             instanceType: "c5a.large",
///         },
///     ],
///     gameServerGroupName: "example",
///     maxSize: 1,
///     minSize: 1,
///     roleArn: exampleAwsIamRole.arn,
/// }, {
///     dependsOn: [exampleAwsIamRolePolicyAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.gamelift.GameServerGroup("example",
///     launch_template={
///         "id": example_aws_launch_template["id"],
///     },
///     instance_definitions=[
///         {
///             "instance_type": "c5.large",
///         },
///         {
///             "instance_type": "c5a.large",
///         },
///     ],
///     game_server_group_name="example",
///     max_size=1,
///     min_size=1,
///     role_arn=example_aws_iam_role["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_iam_role_policy_attachment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GameLift.GameServerGroup("example", new()
///     {
///         LaunchTemplate = new Aws.GameLift.Inputs.GameServerGroupLaunchTemplateArgs
///         {
///             Id = exampleAwsLaunchTemplate.Id,
///         },
///         InstanceDefinitions = new[]
///         {
///             new Aws.GameLift.Inputs.GameServerGroupInstanceDefinitionArgs
///             {
///                 InstanceType = "c5.large",
///             },
///             new Aws.GameLift.Inputs.GameServerGroupInstanceDefinitionArgs
///             {
///                 InstanceType = "c5a.large",
///             },
///         },
///         GameServerGroupName = "example",
///         MaxSize = 1,
///         MinSize = 1,
///         RoleArn = exampleAwsIamRole.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsIamRolePolicyAttachment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gamelift.NewGameServerGroup(ctx, "example", &gamelift.GameServerGroupArgs{
/// 			LaunchTemplate: &gamelift.GameServerGroupLaunchTemplateArgs{
/// 				Id: pulumi.Any(exampleAwsLaunchTemplate.Id),
/// 			},
/// 			InstanceDefinitions: gamelift.GameServerGroupInstanceDefinitionArray{
/// 				&gamelift.GameServerGroupInstanceDefinitionArgs{
/// 					InstanceType: pulumi.String("c5.large"),
/// 				},
/// 				&gamelift.GameServerGroupInstanceDefinitionArgs{
/// 					InstanceType: pulumi.String("c5a.large"),
/// 				},
/// 			},
/// 			GameServerGroupName: pulumi.String("example"),
/// 			MaxSize:             pulumi.Int(1),
/// 			MinSize:             pulumi.Int(1),
/// 			RoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsIamRolePolicyAttachment,
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
/// resource "aws_gamelift_gameservergroup" "example" {
///   depends_on = [exampleAwsIamRolePolicyAttachment]
///   launch_template = {
///     id = exampleAwsLaunchTemplate.id
///   }
///   instance_definitions {
///     instance_type = "c5.large"
///   }
///   instance_definitions {
///     instance_type = "c5a.large"
///   }
///   game_server_group_name = "example"
///   max_size               = 1
///   min_size               = 1
///   role_arn               = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.gamelift.GameServerGroup;
/// import com.pulumi.aws.gamelift.GameServerGroupArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupLaunchTemplateArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupInstanceDefinitionArgs;
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
///         var example = new GameServerGroup("example", GameServerGroupArgs.builder()
///             .launchTemplate(GameServerGroupLaunchTemplateArgs.builder()
///                 .id(exampleAwsLaunchTemplate.id())
///                 .build())
///             .instanceDefinitions(
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5.large")
///                     .build(),
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5a.large")
///                     .build())
///             .gameServerGroupName("example")
///             .maxSize(1)
///             .minSize(1)
///             .roleArn(exampleAwsIamRole.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsIamRolePolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:gamelift:GameServerGroup
///     properties:
///       launchTemplate:
///         id: ${exampleAwsLaunchTemplate.id}
///       instanceDefinitions:
///         - instanceType: c5.large
///         - instanceType: c5a.large
///       gameServerGroupName: example
///       maxSize: 1
///       minSize: 1
///       roleArn: ${exampleAwsIamRole.arn}
///     options:
///       dependsOn:
///         - ${exampleAwsIamRolePolicyAttachment}
/// ```
///
///
/// Full usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.gamelift.GameServerGroup("example", {
///     autoScalingPolicy: {
///         targetTrackingConfiguration: {
///             targetValue: 75,
///         },
///         estimatedInstanceWarmup: 60,
///     },
///     launchTemplate: {
///         id: exampleAwsLaunchTemplate.id,
///         version: "1",
///     },
///     instanceDefinitions: [
///         {
///             instanceType: "c5.large",
///             weightedCapacity: "1",
///         },
///         {
///             instanceType: "c5.2xlarge",
///             weightedCapacity: "2",
///         },
///     ],
///     balancingStrategy: "SPOT_ONLY",
///     gameServerGroupName: "example",
///     gameServerProtectionPolicy: "FULL_PROTECTION",
///     maxSize: 1,
///     minSize: 1,
///     roleArn: exampleAwsIamRole.arn,
///     tags: {
///         Name: "example",
///     },
///     vpcSubnets: [
///         "subnet-12345678",
///         "subnet-23456789",
///     ],
/// }, {
///     dependsOn: [exampleAwsIamRolePolicyAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.gamelift.GameServerGroup("example",
///     auto_scaling_policy={
///         "target_tracking_configuration": {
///             "target_value": float(75),
///         },
///         "estimated_instance_warmup": 60,
///     },
///     launch_template={
///         "id": example_aws_launch_template["id"],
///         "version": "1",
///     },
///     instance_definitions=[
///         {
///             "instance_type": "c5.large",
///             "weighted_capacity": "1",
///         },
///         {
///             "instance_type": "c5.2xlarge",
///             "weighted_capacity": "2",
///         },
///     ],
///     balancing_strategy="SPOT_ONLY",
///     game_server_group_name="example",
///     game_server_protection_policy="FULL_PROTECTION",
///     max_size=1,
///     min_size=1,
///     role_arn=example_aws_iam_role["arn"],
///     tags={
///         "Name": "example",
///     },
///     vpc_subnets=[
///         "subnet-12345678",
///         "subnet-23456789",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_iam_role_policy_attachment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GameLift.GameServerGroup("example", new()
///     {
///         AutoScalingPolicy = new Aws.GameLift.Inputs.GameServerGroupAutoScalingPolicyArgs
///         {
///             TargetTrackingConfiguration = new Aws.GameLift.Inputs.GameServerGroupAutoScalingPolicyTargetTrackingConfigurationArgs
///             {
///                 TargetValue = 75,
///             },
///             EstimatedInstanceWarmup = 60,
///         },
///         LaunchTemplate = new Aws.GameLift.Inputs.GameServerGroupLaunchTemplateArgs
///         {
///             Id = exampleAwsLaunchTemplate.Id,
///             Version = "1",
///         },
///         InstanceDefinitions = new[]
///         {
///             new Aws.GameLift.Inputs.GameServerGroupInstanceDefinitionArgs
///             {
///                 InstanceType = "c5.large",
///                 WeightedCapacity = "1",
///             },
///             new Aws.GameLift.Inputs.GameServerGroupInstanceDefinitionArgs
///             {
///                 InstanceType = "c5.2xlarge",
///                 WeightedCapacity = "2",
///             },
///         },
///         BalancingStrategy = "SPOT_ONLY",
///         GameServerGroupName = "example",
///         GameServerProtectionPolicy = "FULL_PROTECTION",
///         MaxSize = 1,
///         MinSize = 1,
///         RoleArn = exampleAwsIamRole.Arn,
///         Tags =
///         {
///             { "Name", "example" },
///         },
///         VpcSubnets = new[]
///         {
///             "subnet-12345678",
///             "subnet-23456789",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsIamRolePolicyAttachment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gamelift.NewGameServerGroup(ctx, "example", &gamelift.GameServerGroupArgs{
/// 			AutoScalingPolicy: &gamelift.GameServerGroupAutoScalingPolicyArgs{
/// 				TargetTrackingConfiguration: &gamelift.GameServerGroupAutoScalingPolicyTargetTrackingConfigurationArgs{
/// 					TargetValue: pulumi.Float64(75),
/// 				},
/// 				EstimatedInstanceWarmup: pulumi.Int(60),
/// 			},
/// 			LaunchTemplate: &gamelift.GameServerGroupLaunchTemplateArgs{
/// 				Id:      pulumi.Any(exampleAwsLaunchTemplate.Id),
/// 				Version: pulumi.String("1"),
/// 			},
/// 			InstanceDefinitions: gamelift.GameServerGroupInstanceDefinitionArray{
/// 				&gamelift.GameServerGroupInstanceDefinitionArgs{
/// 					InstanceType:     pulumi.String("c5.large"),
/// 					WeightedCapacity: pulumi.String("1"),
/// 				},
/// 				&gamelift.GameServerGroupInstanceDefinitionArgs{
/// 					InstanceType:     pulumi.String("c5.2xlarge"),
/// 					WeightedCapacity: pulumi.String("2"),
/// 				},
/// 			},
/// 			BalancingStrategy:          pulumi.String("SPOT_ONLY"),
/// 			GameServerGroupName:        pulumi.String("example"),
/// 			GameServerProtectionPolicy: pulumi.String("FULL_PROTECTION"),
/// 			MaxSize:                    pulumi.Int(1),
/// 			MinSize:                    pulumi.Int(1),
/// 			RoleArn:                    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 			VpcSubnets: pulumi.StringArray{
/// 				pulumi.String("subnet-12345678"),
/// 				pulumi.String("subnet-23456789"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsIamRolePolicyAttachment,
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
/// resource "aws_gamelift_gameservergroup" "example" {
///   depends_on = [exampleAwsIamRolePolicyAttachment]
///   auto_scaling_policy = {
///     target_tracking_configuration = {
///       target_value = 75
///     }
///     estimated_instance_warmup = 60
///   }
///   launch_template = {
///     id      = exampleAwsLaunchTemplate.id
///     version = "1"
///   }
///   instance_definitions {
///     instance_type     = "c5.large"
///     weighted_capacity = "1"
///   }
///   instance_definitions {
///     instance_type     = "c5.2xlarge"
///     weighted_capacity = "2"
///   }
///   balancing_strategy            = "SPOT_ONLY"
///   game_server_group_name        = "example"
///   game_server_protection_policy = "FULL_PROTECTION"
///   max_size                      = 1
///   min_size                      = 1
///   role_arn                      = exampleAwsIamRole.arn
///   tags = {
///     "Name" = "example"
///   }
///   vpc_subnets = ["subnet-12345678", "subnet-23456789"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.gamelift.GameServerGroup;
/// import com.pulumi.aws.gamelift.GameServerGroupArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupAutoScalingPolicyArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupAutoScalingPolicyTargetTrackingConfigurationArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupLaunchTemplateArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupInstanceDefinitionArgs;
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
///         var example = new GameServerGroup("example", GameServerGroupArgs.builder()
///             .autoScalingPolicy(GameServerGroupAutoScalingPolicyArgs.builder()
///                 .targetTrackingConfiguration(GameServerGroupAutoScalingPolicyTargetTrackingConfigurationArgs.builder()
///                     .targetValue(75.0)
///                     .build())
///                 .estimatedInstanceWarmup(60)
///                 .build())
///             .launchTemplate(GameServerGroupLaunchTemplateArgs.builder()
///                 .id(exampleAwsLaunchTemplate.id())
///                 .version("1")
///                 .build())
///             .instanceDefinitions(
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5.large")
///                     .weightedCapacity("1")
///                     .build(),
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5.2xlarge")
///                     .weightedCapacity("2")
///                     .build())
///             .balancingStrategy("SPOT_ONLY")
///             .gameServerGroupName("example")
///             .gameServerProtectionPolicy("FULL_PROTECTION")
///             .maxSize(1)
///             .minSize(1)
///             .roleArn(exampleAwsIamRole.arn())
///             .tags(Map.of("Name", "example"))
///             .vpcSubnets(
///                 "subnet-12345678",
///                 "subnet-23456789")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsIamRolePolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:gamelift:GameServerGroup
///     properties:
///       autoScalingPolicy:
///         targetTrackingConfiguration:
///           targetValue: 75
///         estimatedInstanceWarmup: 60
///       launchTemplate:
///         id: ${exampleAwsLaunchTemplate.id}
///         version: '1'
///       instanceDefinitions:
///         - instanceType: c5.large
///           weightedCapacity: '1'
///         - instanceType: c5.2xlarge
///           weightedCapacity: '2'
///       balancingStrategy: SPOT_ONLY
///       gameServerGroupName: example
///       gameServerProtectionPolicy: FULL_PROTECTION
///       maxSize: 1
///       minSize: 1
///       roleArn: ${exampleAwsIamRole.arn}
///       tags:
///         Name: example
///       vpcSubnets:
///         - subnet-12345678
///         - subnet-23456789
///     options:
///       dependsOn:
///         - ${exampleAwsIamRolePolicyAttachment}
/// ```
///
///
/// ### Example IAM Role for GameLift Game Server Group
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getPartition({});
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: [
///                 "autoscaling.amazonaws.com",
///                 "gamelift.amazonaws.com",
///             ],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
///     name: "gamelift-game-server-group-example",
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     policyArn: current.then(current => `arn:${current.partition}:iam::aws:policy/GameLiftGameServerGroupPolicy`),
///     role: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": [
///             "autoscaling.amazonaws.com",
///             "gamelift.amazonaws.com",
///         ],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// example = aws.iam.Role("example",
///     assume_role_policy=assume_role.json,
///     name="gamelift-game-server-group-example")
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     policy_arn=f"arn:{current.partition}:iam::aws:policy/GameLiftGameServerGroupPolicy",
///     role=example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetPartition.Invoke();
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
///                             "autoscaling.amazonaws.com",
///                             "gamelift.amazonaws.com",
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
///     var example = new Aws.Iam.Role("example", new()
///     {
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Name = "gamelift-game-server-group-example",
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         PolicyArn = $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::aws:policy/GameLiftGameServerGroupPolicy",
///         Role = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
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
/// 								"autoscaling.amazonaws.com",
/// 								"gamelift.amazonaws.com",
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
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 			Name:             pulumi.String("gamelift-game-server-group-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.Sprintf("arn:%v:iam::aws:policy/GameLiftGameServerGroupPolicy", current.Partition),
/// 			Role:      example.Name,
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
/// data "aws_getpartition" "current" {
/// }
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["autoscaling.amazonaws.com", "gamelift.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
///   name               = "gamelift-game-server-group-example"
/// }
/// resource "aws_iam_rolepolicyattachment" "example" {
///   policy_arn ="arn:${data.aws_getpartition.current.partition}:iam::aws:policy/GameLiftGameServerGroupPolicy"
///   role       = aws_iam_role.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
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
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers(
///                         "autoscaling.amazonaws.com",
///                         "gamelift.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .assumeRolePolicy(assumeRole.json())
///             .name("gamelift-game-server-group-example")
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .policyArn(String.format("arn:%s:iam::aws:policy/GameLiftGameServerGroupPolicy", current.partition()))
///             .role(example.name())
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
///       assumeRolePolicy: ${assumeRole.json}
///       name: gamelift-game-server-group-example
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       policyArn: arn:${current.partition}:iam::aws:policy/GameLiftGameServerGroupPolicy
///       role: ${example.name}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - autoscaling.amazonaws.com
///                   - gamelift.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Game Server Group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/gameServerGroup:GameServerGroup example example
/// ```
class GameServerGroup extends pulumi.CustomResource {
  /// The ARN of the GameLift Game Server Group.
  late final pulumi.Output<String> arn;
  /// The ARN of the created EC2 Auto Scaling group.
  late final pulumi.Output<String> autoScalingGroupArn;
  late final pulumi.Output<GameServerGroupAutoScalingPolicy?> autoScalingPolicy;
  /// Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.
  /// Valid values: `SPOT_ONLY`, `SPOT_PREFERRED`, `ON_DEMAND_ONLY`. Defaults to `SPOT_PREFERRED`.
  late final pulumi.Output<String> balancingStrategy;
  /// Name of the game server group.
  /// This value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group.
  late final pulumi.Output<String> gameServerGroupName;
  /// Indicates whether instances in the game server group are protected from early termination.
  /// Unprotected instances that have active game servers running might be terminated during a scale-down event,
  /// causing players to be dropped from the game.
  /// Protected instances cannot be terminated while there are active game servers running except in the event
  /// of a forced game server group deletion.
  /// Valid values: `NO_PROTECTION`, `FULL_PROTECTION`. Defaults to `NO_PROTECTION`.
  late final pulumi.Output<String> gameServerProtectionPolicy;
  late final pulumi.Output<List<GameServerGroupInstanceDefinition>> instanceDefinitions;
  late final pulumi.Output<GameServerGroupLaunchTemplate> launchTemplate;
  /// The maximum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
  late final pulumi.Output<int> maxSize;
  /// The minimum number of instances allowed in the EC2 Auto Scaling group.
  /// During automatic scaling events, GameLift FleetIQ and EC2 do not scale down the group below this minimum.
  late final pulumi.Output<int> minSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
  late final pulumi.Output<String> roleArn;
  /// Key-value map of resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A list of VPC subnets to use with instances in the game server group.
  /// By default, all GameLift FleetIQ-supported Availability Zones are used.
  late final pulumi.Output<List<String>?> vpcSubnets;

  /// Creates a new [GameServerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GameServerGroup]. {@macro pulumi_gamelift_game_server_group_game_server_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GameServerGroup(
    String name, {
    GameServerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/gameServerGroup:GameServerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    autoScalingGroupArn = registerOutput<String>('autoScalingGroupArn');
    autoScalingPolicy = registerOutput<GameServerGroupAutoScalingPolicy?>('autoScalingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GameServerGroupAutoScalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    balancingStrategy = registerOutput<String>('balancingStrategy');
    gameServerGroupName = registerOutput<String>('gameServerGroupName');
    gameServerProtectionPolicy = registerOutput<String>('gameServerProtectionPolicy');
    instanceDefinitions = registerOutput<List<GameServerGroupInstanceDefinition>>('instanceDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GameServerGroupInstanceDefinition>(guardedValue, (value) => GameServerGroupInstanceDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    launchTemplate = registerOutput<GameServerGroupLaunchTemplate>('launchTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GameServerGroupLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxSize = registerOutput<int>('maxSize');
    minSize = registerOutput<int>('minSize');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcSubnets = registerOutput<List<String>?>('vpcSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [GameServerGroup] resource's state with the given [name] and [id].
  static GameServerGroup get(
    String name,
    pulumi.Input<String> id, {
    GameServerGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GameServerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GameServerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/gameServerGroup:GameServerGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoScalingGroupArn = registerOutput<String>('autoScalingGroupArn');
    autoScalingPolicy = registerOutput<GameServerGroupAutoScalingPolicy?>('autoScalingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GameServerGroupAutoScalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    balancingStrategy = registerOutput<String>('balancingStrategy');
    gameServerGroupName = registerOutput<String>('gameServerGroupName');
    gameServerProtectionPolicy = registerOutput<String>('gameServerProtectionPolicy');
    instanceDefinitions = registerOutput<List<GameServerGroupInstanceDefinition>>('instanceDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GameServerGroupInstanceDefinition>(guardedValue, (value) => GameServerGroupInstanceDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    launchTemplate = registerOutput<GameServerGroupLaunchTemplate>('launchTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GameServerGroupLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxSize = registerOutput<int>('maxSize');
    minSize = registerOutput<int>('minSize');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcSubnets = registerOutput<List<String>?>('vpcSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [GameServerGroup] resource.
  GameServerGroup.reference(String urn)
    : super(
        'aws:gamelift/gameServerGroup:GameServerGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    autoScalingGroupArn = registerOutput<String>('autoScalingGroupArn');
    autoScalingPolicy = registerOutput<GameServerGroupAutoScalingPolicy?>('autoScalingPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GameServerGroupAutoScalingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    balancingStrategy = registerOutput<String>('balancingStrategy');
    gameServerGroupName = registerOutput<String>('gameServerGroupName');
    gameServerProtectionPolicy = registerOutput<String>('gameServerProtectionPolicy');
    instanceDefinitions = registerOutput<List<GameServerGroupInstanceDefinition>>('instanceDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GameServerGroupInstanceDefinition>(guardedValue, (value) => GameServerGroupInstanceDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    launchTemplate = registerOutput<GameServerGroupLaunchTemplate>('launchTemplate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GameServerGroupLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxSize = registerOutput<int>('maxSize');
    minSize = registerOutput<int>('minSize');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcSubnets = registerOutput<List<String>?>('vpcSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
