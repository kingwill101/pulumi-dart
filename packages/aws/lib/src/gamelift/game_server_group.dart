import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_server_group_args.dart';
import 'game_server_group_auto_scaling_policy.dart';
import 'game_server_group_instance_definition.dart';
import 'game_server_group_launch_template.dart';

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
///     gameServerGroupName: "example",
///     instanceDefinitions: [
///         {
///             instanceType: "c5.large",
///         },
///         {
///             instanceType: "c5a.large",
///         },
///     ],
///     launchTemplate: {
///         id: exampleAwsLaunchTemplate.id,
///     },
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
///     game_server_group_name="example",
///     instance_definitions=[
///         {
///             "instance_type": "c5.large",
///         },
///         {
///             "instance_type": "c5a.large",
///         },
///     ],
///     launch_template={
///         "id": example_aws_launch_template["id"],
///     },
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
///         GameServerGroupName = "example",
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
///         LaunchTemplate = new Aws.GameLift.Inputs.GameServerGroupLaunchTemplateArgs
///         {
///             Id = exampleAwsLaunchTemplate.Id,
///         },
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
/// 			GameServerGroupName: pulumi.String("example"),
/// 			InstanceDefinitions: gamelift.GameServerGroupInstanceDefinitionArray{
/// 				&gamelift.GameServerGroupInstanceDefinitionArgs{
/// 					InstanceType: pulumi.String("c5.large"),
/// 				},
/// 				&gamelift.GameServerGroupInstanceDefinitionArgs{
/// 					InstanceType: pulumi.String("c5a.large"),
/// 				},
/// 			},
/// 			LaunchTemplate: &gamelift.GameServerGroupLaunchTemplateArgs{
/// 				Id: pulumi.Any(exampleAwsLaunchTemplate.Id),
/// 			},
/// 			MaxSize: pulumi.Int(1),
/// 			MinSize: pulumi.Int(1),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.gamelift.GameServerGroup;
/// import com.pulumi.aws.gamelift.GameServerGroupArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupInstanceDefinitionArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupLaunchTemplateArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new GameServerGroup("example", GameServerGroupArgs.builder()
///             .gameServerGroupName("example")
///             .instanceDefinitions(
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5.large")
///                     .build(),
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5a.large")
///                     .build())
///             .launchTemplate(GameServerGroupLaunchTemplateArgs.builder()
///                 .id(exampleAwsLaunchTemplate.id())
///                 .build())
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
///       gameServerGroupName: example
///       instanceDefinitions:
///         - instanceType: c5.large
///         - instanceType: c5a.large
///       launchTemplate:
///         id: ${exampleAwsLaunchTemplate.id}
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
///         estimatedInstanceWarmup: 60,
///         targetTrackingConfiguration: {
///             targetValue: 75,
///         },
///     },
///     balancingStrategy: "SPOT_ONLY",
///     gameServerGroupName: "example",
///     gameServerProtectionPolicy: "FULL_PROTECTION",
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
///     launchTemplate: {
///         id: exampleAwsLaunchTemplate.id,
///         version: "1",
///     },
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
///         "estimated_instance_warmup": 60,
///         "target_tracking_configuration": {
///             "target_value": 75,
///         },
///     },
///     balancing_strategy="SPOT_ONLY",
///     game_server_group_name="example",
///     game_server_protection_policy="FULL_PROTECTION",
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
///     launch_template={
///         "id": example_aws_launch_template["id"],
///         "version": "1",
///     },
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
///             EstimatedInstanceWarmup = 60,
///             TargetTrackingConfiguration = new Aws.GameLift.Inputs.GameServerGroupAutoScalingPolicyTargetTrackingConfigurationArgs
///             {
///                 TargetValue = 75,
///             },
///         },
///         BalancingStrategy = "SPOT_ONLY",
///         GameServerGroupName = "example",
///         GameServerProtectionPolicy = "FULL_PROTECTION",
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
///         LaunchTemplate = new Aws.GameLift.Inputs.GameServerGroupLaunchTemplateArgs
///         {
///             Id = exampleAwsLaunchTemplate.Id,
///             Version = "1",
///         },
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
/// 				EstimatedInstanceWarmup: pulumi.Int(60),
/// 				TargetTrackingConfiguration: &gamelift.GameServerGroupAutoScalingPolicyTargetTrackingConfigurationArgs{
/// 					TargetValue: pulumi.Float64(75),
/// 				},
/// 			},
/// 			BalancingStrategy:          pulumi.String("SPOT_ONLY"),
/// 			GameServerGroupName:        pulumi.String("example"),
/// 			GameServerProtectionPolicy: pulumi.String("FULL_PROTECTION"),
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
/// 			LaunchTemplate: &gamelift.GameServerGroupLaunchTemplateArgs{
/// 				Id:      pulumi.Any(exampleAwsLaunchTemplate.Id),
/// 				Version: pulumi.String("1"),
/// 			},
/// 			MaxSize: pulumi.Int(1),
/// 			MinSize: pulumi.Int(1),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupInstanceDefinitionArgs;
/// import com.pulumi.aws.gamelift.inputs.GameServerGroupLaunchTemplateArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new GameServerGroup("example", GameServerGroupArgs.builder()
///             .autoScalingPolicy(GameServerGroupAutoScalingPolicyArgs.builder()
///                 .estimatedInstanceWarmup(60)
///                 .targetTrackingConfiguration(GameServerGroupAutoScalingPolicyTargetTrackingConfigurationArgs.builder()
///                     .targetValue(75.0)
///                     .build())
///                 .build())
///             .balancingStrategy("SPOT_ONLY")
///             .gameServerGroupName("example")
///             .gameServerProtectionPolicy("FULL_PROTECTION")
///             .instanceDefinitions(
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5.large")
///                     .weightedCapacity("1")
///                     .build(),
///                 GameServerGroupInstanceDefinitionArgs.builder()
///                     .instanceType("c5.2xlarge")
///                     .weightedCapacity("2")
///                     .build())
///             .launchTemplate(GameServerGroupLaunchTemplateArgs.builder()
///                 .id(exampleAwsLaunchTemplate.id())
///                 .version("1")
///                 .build())
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
///         estimatedInstanceWarmup: 60
///         targetTrackingConfiguration:
///           targetValue: 75
///       balancingStrategy: SPOT_ONLY
///       gameServerGroupName: example
///       gameServerProtectionPolicy: FULL_PROTECTION
///       instanceDefinitions:
///         - instanceType: c5.large
///           weightedCapacity: '1'
///         - instanceType: c5.2xlarge
///           weightedCapacity: '2'
///       launchTemplate:
///         id: ${exampleAwsLaunchTemplate.id}
///         version: '1'
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: [
///                 "autoscaling.amazonaws.com",
///                 "gamelift.amazonaws.com",
///             ],
///         }],
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
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": [
///             "autoscaling.amazonaws.com",
///             "gamelift.amazonaws.com",
///         ],
///     }],
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
///                 Effect = "Allow",
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
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"autoscaling.amazonaws.com",
/// 								"gamelift.amazonaws.com",
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
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
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers(
///                         "autoscaling.amazonaws.com",
///                         "gamelift.amazonaws.com")
///                     .build())
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
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - autoscaling.amazonaws.com
///                   - gamelift.amazonaws.com
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingGroupArn = registerOutput<String>('autoScalingGroupArn');
    this.autoScalingPolicy = registerOutput<GameServerGroupAutoScalingPolicy?>('autoScalingPolicy');
    this.balancingStrategy = registerOutput<String>('balancingStrategy');
    this.gameServerGroupName = registerOutput<String>('gameServerGroupName');
    this.gameServerProtectionPolicy = registerOutput<String>('gameServerProtectionPolicy');
    this.instanceDefinitions = registerOutput<List<GameServerGroupInstanceDefinition>>('instanceDefinitions');
    this.launchTemplate = registerOutput<GameServerGroupLaunchTemplate>('launchTemplate');
    this.maxSize = registerOutput<int>('maxSize');
    this.minSize = registerOutput<int>('minSize');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSubnets = registerOutput<List<String>?>('vpcSubnets');
  }
}
