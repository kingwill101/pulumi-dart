import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_rule_action.dart';
import 'agentcore_gateway_rule_args.dart';
import 'agentcore_gateway_rule_condition.dart';
import 'agentcore_gateway_rule_state.dart';
import 'agentcore_gateway_rule_system.dart';
import 'agentcore_gateway_rule_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Gateway Rule. Rules define conditions and actions that control how requests are routed and processed through a gateway, including principal-based access control, path-based routing, weighted target routing, and configuration bundle overrides. Rules are evaluated in order of `priority` (lower numbers first).
///
/// ## Example Usage
///
/// ### Route to a Static Target
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreGatewayRule("example", {
///     actions: [{
///         routeToTarget: {
///             staticRoute: {
///                 targetName: exampleAwsBedrockagentcoreGatewayTarget.name,
///             },
///         },
///     }],
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     priority: 100,
///     description: "Route all requests to the primary target",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreGatewayRule("example",
///     actions=[{
///         "route_to_target": {
///             "static_route": {
///                 "target_name": example_aws_bedrockagentcore_gateway_target["name"],
///             },
///         },
///     }],
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     priority=100,
///     description="Route all requests to the primary target")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreGatewayRule("example", new()
///     {
///         Actions = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionArgs
///             {
///                 RouteToTarget = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetArgs
///                 {
///                     StaticRoute = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs
///                     {
///                         TargetName = exampleAwsBedrockagentcoreGatewayTarget.Name,
///                     },
///                 },
///             },
///         },
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         Priority = 100,
///         Description = "Route all requests to the primary target",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreGatewayRule(ctx, "example", &bedrock.AgentcoreGatewayRuleArgs{
/// 			Actions: bedrock.AgentcoreGatewayRuleActionArray{
/// 				&bedrock.AgentcoreGatewayRuleActionArgs{
/// 					RouteToTarget: &bedrock.AgentcoreGatewayRuleActionRouteToTargetArgs{
/// 						StaticRoute: &bedrock.AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs{
/// 							TargetName: pulumi.Any(exampleAwsBedrockagentcoreGatewayTarget.Name),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// 			Priority:          pulumi.Int(100),
/// 			Description:       pulumi.String("Route all requests to the primary target"),
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
/// resource "aws_bedrock_agentcoregatewayrule" "example" {
///   actions {
///     route_to_target = {
///       static_route = {
///         target_name = exampleAwsBedrockagentcoreGatewayTarget.name
///       }
///     }
///   }
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
///   priority           = 100
///   description        = "Route all requests to the primary target"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayRule;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayRuleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionRouteToTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs;
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
///         var example = new AgentcoreGatewayRule("example", AgentcoreGatewayRuleArgs.builder()
///             .actions(AgentcoreGatewayRuleActionArgs.builder()
///                 .routeToTarget(AgentcoreGatewayRuleActionRouteToTargetArgs.builder()
///                     .staticRoute(AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs.builder()
///                         .targetName(exampleAwsBedrockagentcoreGatewayTarget.name())
///                         .build())
///                     .build())
///                 .build())
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .priority(100)
///             .description("Route all requests to the primary target")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreGatewayRule
///     properties:
///       actions:
///         - routeToTarget:
///             staticRoute:
///               targetName: ${exampleAwsBedrockagentcoreGatewayTarget.name}
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
///       priority: 100
///       description: Route all requests to the primary target
/// ```
///
///
/// ### Weighted Route (Canary Traffic Split)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const canary = new aws.bedrock.AgentcoreGatewayRule("canary", {
///     actions: [{
///         routeToTarget: {
///             weightedRoute: {
///                 trafficSplits: [
///                     {
///                         name: "primary",
///                         targetName: primary.name,
///                         weight: 90,
///                     },
///                     {
///                         name: "canary",
///                         targetName: canaryAwsBedrockagentcoreGatewayTarget.name,
///                         weight: 10,
///                     },
///                 ],
///             },
///         },
///     }],
///     gatewayIdentifier: example.gatewayId,
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// canary = aws.bedrock.AgentcoreGatewayRule("canary",
///     actions=[{
///         "route_to_target": {
///             "weighted_route": {
///                 "traffic_splits": [
///                     {
///                         "name": "primary",
///                         "target_name": primary["name"],
///                         "weight": 90,
///                     },
///                     {
///                         "name": "canary",
///                         "target_name": canary_aws_bedrockagentcore_gateway_target["name"],
///                         "weight": 10,
///                     },
///                 ],
///             },
///         },
///     }],
///     gateway_identifier=example["gatewayId"],
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var canary = new Aws.Bedrock.AgentcoreGatewayRule("canary", new()
///     {
///         Actions = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionArgs
///             {
///                 RouteToTarget = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetArgs
///                 {
///                     WeightedRoute = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteArgs
///                     {
///                         TrafficSplits = new[]
///                         {
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArgs
///                             {
///                                 Name = "primary",
///                                 TargetName = primary.Name,
///                                 Weight = 90,
///                             },
///                             new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArgs
///                             {
///                                 Name = "canary",
///                                 TargetName = canaryAwsBedrockagentcoreGatewayTarget.Name,
///                                 Weight = 10,
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         GatewayIdentifier = example.GatewayId,
///         Priority = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreGatewayRule(ctx, "canary", &bedrock.AgentcoreGatewayRuleArgs{
/// 			Actions: bedrock.AgentcoreGatewayRuleActionArray{
/// 				&bedrock.AgentcoreGatewayRuleActionArgs{
/// 					RouteToTarget: &bedrock.AgentcoreGatewayRuleActionRouteToTargetArgs{
/// 						WeightedRoute: &bedrock.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteArgs{
/// 							TrafficSplits: bedrock.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArray{
/// 								&bedrock.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArgs{
/// 									Name:       pulumi.String("primary"),
/// 									TargetName: pulumi.Any(primary.Name),
/// 									Weight:     pulumi.Int(90),
/// 								},
/// 								&bedrock.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArgs{
/// 									Name:       pulumi.String("canary"),
/// 									TargetName: pulumi.Any(canaryAwsBedrockagentcoreGatewayTarget.Name),
/// 									Weight:     pulumi.Int(10),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			GatewayIdentifier: pulumi.Any(example.GatewayId),
/// 			Priority:          pulumi.Int(100),
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
/// resource "aws_bedrock_agentcoregatewayrule" "canary" {
///   actions {
///     route_to_target = {
///       weighted_route = {
///         traffic_splits = [{
///           "name"       = "primary"
///           "targetName" = primary.name
///           "weight"     = 90
///           }, {
///           "name"       = "canary"
///           "targetName" = canaryAwsBedrockagentcoreGatewayTarget.name
///           "weight"     = 10
///         }]
///       }
///     }
///   }
///   gateway_identifier = example.gatewayId
///   priority           = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayRule;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayRuleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionRouteToTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArgs;
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
///         var canary = new AgentcoreGatewayRule("canary", AgentcoreGatewayRuleArgs.builder()
///             .actions(AgentcoreGatewayRuleActionArgs.builder()
///                 .routeToTarget(AgentcoreGatewayRuleActionRouteToTargetArgs.builder()
///                     .weightedRoute(AgentcoreGatewayRuleActionRouteToTargetWeightedRouteArgs.builder()
///                         .trafficSplits(
///                             AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArgs.builder()
///                                 .name("primary")
///                                 .targetName(primary.name())
///                                 .weight(90)
///                                 .build(),
///                             AgentcoreGatewayRuleActionRouteToTargetWeightedRouteTrafficSplitArgs.builder()
///                                 .name("canary")
///                                 .targetName(canaryAwsBedrockagentcoreGatewayTarget.name())
///                                 .weight(10)
///                                 .build())
///                         .build())
///                     .build())
///                 .build())
///             .gatewayIdentifier(example.gatewayId())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   canary:
///     type: aws:bedrock:AgentcoreGatewayRule
///     properties:
///       actions:
///         - routeToTarget:
///             weightedRoute:
///               trafficSplits:
///                 - name: primary
///                   targetName: ${primary.name}
///                   weight: 90
///                 - name: canary
///                   targetName: ${canaryAwsBedrockagentcoreGatewayTarget.name}
///                   weight: 10
///       gatewayIdentifier: ${example.gatewayId}
///       priority: 100
/// ```
///
///
/// ### Match on IAM Principals and Paths
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const restricted = new aws.bedrock.AgentcoreGatewayRule("restricted", {
///     actions: [{
///         routeToTarget: {
///             staticRoute: {
///                 targetName: example.name,
///             },
///         },
///     }],
///     conditions: [
///         {
///             matchPrincipals: {
///                 anyOfs: [{
///                     iamPrincipal: {
///                         arn: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:role/agentcore-caller-*`),
///                         operator: "StringLike",
///                     },
///                 }],
///             },
///         },
///         {
///             matchPaths: {
///                 anyOfs: ["/api/*"],
///             },
///         },
///     ],
///     gatewayIdentifier: exampleAwsBedrockagentcoreGateway.gatewayId,
///     priority: 50,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// restricted = aws.bedrock.AgentcoreGatewayRule("restricted",
///     actions=[{
///         "route_to_target": {
///             "static_route": {
///                 "target_name": example["name"],
///             },
///         },
///     }],
///     conditions=[
///         {
///             "match_principals": {
///                 "any_ofs": [{
///                     "iam_principal": {
///                         "arn": f"arn:{current_get_partition.partition}:iam::{current.account_id}:role/agentcore-caller-*",
///                         "operator": "StringLike",
///                     },
///                 }],
///             },
///         },
///         {
///             "match_paths": {
///                 "any_ofs": ["/api/*"],
///             },
///         },
///     ],
///     gateway_identifier=example_aws_bedrockagentcore_gateway["gatewayId"],
///     priority=50)
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
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var restricted = new Aws.Bedrock.AgentcoreGatewayRule("restricted", new()
///     {
///         Actions = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionArgs
///             {
///                 RouteToTarget = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetArgs
///                 {
///                     StaticRoute = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs
///                     {
///                         TargetName = example.Name,
///                     },
///                 },
///             },
///         },
///         Conditions = new[]
///         {
///             new Aws.Bedrock.Inputs.AgentcoreGatewayRuleConditionArgs
///             {
///                 MatchPrincipals = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleConditionMatchPrincipalsArgs
///                 {
///                     AnyOfs = new[]
///                     {
///                         new Aws.Bedrock.Inputs.AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfArgs
///                         {
///                             IamPrincipal = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipalArgs
///                             {
///                                 Arn = Output.Tuple(currentGetPartition, current).Apply(values =>
///                                 {
///                                     var currentGetPartition = values.Item1;
///                                     var current = values.Item2;
///                                     return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:role/agentcore-caller-*";
///                                 }),
///                                 Operator = "StringLike",
///                             },
///                         },
///                     },
///                 },
///             },
///             new Aws.Bedrock.Inputs.AgentcoreGatewayRuleConditionArgs
///             {
///                 MatchPaths = new Aws.Bedrock.Inputs.AgentcoreGatewayRuleConditionMatchPathsArgs
///                 {
///                     AnyOfs = new[]
///                     {
///                         "/api/*",
///                     },
///                 },
///             },
///         },
///         GatewayIdentifier = exampleAwsBedrockagentcoreGateway.GatewayId,
///         Priority = 50,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreGatewayRule(ctx, "restricted", &bedrock.AgentcoreGatewayRuleArgs{
/// 			Actions: bedrock.AgentcoreGatewayRuleActionArray{
/// 				&bedrock.AgentcoreGatewayRuleActionArgs{
/// 					RouteToTarget: &bedrock.AgentcoreGatewayRuleActionRouteToTargetArgs{
/// 						StaticRoute: &bedrock.AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs{
/// 							TargetName: pulumi.Any(example.Name),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Conditions: bedrock.AgentcoreGatewayRuleConditionArray{
/// 				&bedrock.AgentcoreGatewayRuleConditionArgs{
/// 					MatchPrincipals: &bedrock.AgentcoreGatewayRuleConditionMatchPrincipalsArgs{
/// 						AnyOfs: bedrock.AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfArray{
/// 							&bedrock.AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfArgs{
/// 								IamPrincipal: &bedrock.AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipalArgs{
/// 									Arn:      pulumi.Sprintf("arn:%v:iam::%v:role/agentcore-caller-*", currentGetPartition.Partition, current.AccountId),
/// 									Operator: pulumi.String("StringLike"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&bedrock.AgentcoreGatewayRuleConditionArgs{
/// 					MatchPaths: &bedrock.AgentcoreGatewayRuleConditionMatchPathsArgs{
/// 						AnyOfs: pulumi.StringArray{
/// 							pulumi.String("/api/*"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			GatewayIdentifier: pulumi.Any(exampleAwsBedrockagentcoreGateway.GatewayId),
/// 			Priority:          pulumi.Int(50),
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
/// data "aws_getpartition" "currentGetPartition" {
/// }
///
/// resource "aws_bedrock_agentcoregatewayrule" "restricted" {
///   actions {
///     route_to_target = {
///       static_route = {
///         target_name = example.name
///       }
///     }
///   }
///   conditions {
///     match_principals = {
///       any_ofs = [{
///         "iamPrincipal" = {
///           "arn"      ="arn:${data.aws_getpartition.currentGetPartition.partition}:iam::${data.aws_getcalleridentity.current.account_id}:role/agentcore-caller-*"
///           "operator" = "StringLike"
///         }
///       }]
///     }
///   }
///   conditions {
///     match_paths = {
///       any_ofs = ["/api/*"]
///     }
///   }
///   gateway_identifier = exampleAwsBedrockagentcoreGateway.gatewayId
///   priority           = 50
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
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayRule;
/// import com.pulumi.aws.bedrock.AgentcoreGatewayRuleArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionRouteToTargetArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleConditionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleConditionMatchPrincipalsArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipalArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreGatewayRuleConditionMatchPathsArgs;
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
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var restricted = new AgentcoreGatewayRule("restricted", AgentcoreGatewayRuleArgs.builder()
///             .actions(AgentcoreGatewayRuleActionArgs.builder()
///                 .routeToTarget(AgentcoreGatewayRuleActionRouteToTargetArgs.builder()
///                     .staticRoute(AgentcoreGatewayRuleActionRouteToTargetStaticRouteArgs.builder()
///                         .targetName(example.name())
///                         .build())
///                     .build())
///                 .build())
///             .conditions(
///                 AgentcoreGatewayRuleConditionArgs.builder()
///                     .matchPrincipals(AgentcoreGatewayRuleConditionMatchPrincipalsArgs.builder()
///                         .anyOfs(AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfArgs.builder()
///                             .iamPrincipal(AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipalArgs.builder()
///                                 .arn(String.format("arn:%s:iam::%s:role/agentcore-caller-*", currentGetPartition.partition(),current.accountId()))
///                                 .operator("StringLike")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 AgentcoreGatewayRuleConditionArgs.builder()
///                     .matchPaths(AgentcoreGatewayRuleConditionMatchPathsArgs.builder()
///                         .anyOfs("/api/*")
///                         .build())
///                     .build())
///             .gatewayIdentifier(exampleAwsBedrockagentcoreGateway.gatewayId())
///             .priority(50)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   restricted:
///     type: aws:bedrock:AgentcoreGatewayRule
///     properties:
///       actions:
///         - routeToTarget:
///             staticRoute:
///               targetName: ${example.name}
///       conditions:
///         - matchPrincipals:
///             anyOfs:
///               - iamPrincipal:
///                   arn: arn:${currentGetPartition.partition}:iam::${current.accountId}:role/agentcore-caller-*
///                   operator: StringLike
///         - matchPaths:
///             anyOfs:
///               - /api/*
///       gatewayIdentifier: ${exampleAwsBedrockagentcoreGateway.gatewayId}
///       priority: 50
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `gatewayIdentifier` (String) Identifier of the gateway.
/// * `ruleId` (String) Identifier of the rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import gateway rules using `gatewayIdentifier` and `ruleId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreGatewayRule:AgentcoreGatewayRule example example-gateway-abcdef1234,11111111-2222-3333-4444-555555555555
/// ```
class AgentcoreGatewayRule extends pulumi.CustomResource {
  /// One or two `action` blocks defining what happens when the rule's conditions match. See Action below.
  late final pulumi.Output<List<AgentcoreGatewayRuleAction>?> actions;
  /// Up to two `condition` blocks that must all be satisfied for the rule's actions to apply. See Condition below.
  late final pulumi.Output<List<AgentcoreGatewayRuleCondition>?> conditions;
  /// Description of the rule. Between 1 and 256 characters.
  late final pulumi.Output<String> description;
  /// ARN of the gateway that owns the rule.
  late final pulumi.Output<String> gatewayArn;
  /// Identifier of the gateway to attach the rule to.
  late final pulumi.Output<String> gatewayIdentifier;
  /// Priority of the rule, between 1 and 1000000. Rules are evaluated in ascending order of priority.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of the rule.
  late final pulumi.Output<String> ruleId;
  /// Present when the rule is system-managed. See `system` Block below.
  late final pulumi.Output<List<AgentcoreGatewayRuleSystem>> systems;
  late final pulumi.Output<AgentcoreGatewayRuleTimeouts?> timeouts;

  /// Creates a new [AgentcoreGatewayRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreGatewayRule]. {@macro pulumi_bedrock_agentcore_gateway_rule_agentcore_gateway_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreGatewayRule(
    String name, {
    AgentcoreGatewayRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGatewayRule:AgentcoreGatewayRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    actions = registerOutput<List<AgentcoreGatewayRuleAction>?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleAction>(guardedValue, (value) => AgentcoreGatewayRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    conditions = registerOutput<List<AgentcoreGatewayRuleCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleCondition>(guardedValue, (value) => AgentcoreGatewayRuleCondition.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String>('description');
    gatewayArn = registerOutput<String>('gatewayArn');
    gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    systems = registerOutput<List<AgentcoreGatewayRuleSystem>>('systems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleSystem>(guardedValue, (value) => AgentcoreGatewayRuleSystem.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<AgentcoreGatewayRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreGatewayRule] resource's state with the given [name] and [id].
  static AgentcoreGatewayRule get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreGatewayRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreGatewayRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreGatewayRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreGatewayRule:AgentcoreGatewayRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<AgentcoreGatewayRuleAction>?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleAction>(guardedValue, (value) => AgentcoreGatewayRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    conditions = registerOutput<List<AgentcoreGatewayRuleCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleCondition>(guardedValue, (value) => AgentcoreGatewayRuleCondition.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String>('description');
    gatewayArn = registerOutput<String>('gatewayArn');
    gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    systems = registerOutput<List<AgentcoreGatewayRuleSystem>>('systems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleSystem>(guardedValue, (value) => AgentcoreGatewayRuleSystem.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<AgentcoreGatewayRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcoreGatewayRule] resource.
  AgentcoreGatewayRule.reference(String urn)
    : super(
        'aws:bedrock/agentcoreGatewayRule:AgentcoreGatewayRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<AgentcoreGatewayRuleAction>?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleAction>(guardedValue, (value) => AgentcoreGatewayRuleAction.fromMap((value as Map).cast<String, dynamic>())); });
    conditions = registerOutput<List<AgentcoreGatewayRuleCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleCondition>(guardedValue, (value) => AgentcoreGatewayRuleCondition.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String>('description');
    gatewayArn = registerOutput<String>('gatewayArn');
    gatewayIdentifier = registerOutput<String>('gatewayIdentifier');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    ruleId = registerOutput<String>('ruleId');
    systems = registerOutput<List<AgentcoreGatewayRuleSystem>>('systems', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreGatewayRuleSystem>(guardedValue, (value) => AgentcoreGatewayRuleSystem.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<AgentcoreGatewayRuleTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreGatewayRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
