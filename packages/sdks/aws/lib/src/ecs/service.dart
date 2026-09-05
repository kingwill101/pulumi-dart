import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_alarms.dart';
import 'service_args.dart';
import 'service_capacity_provider_strategy.dart';
import 'service_deployment_circuit_breaker.dart';
import 'service_deployment_configuration.dart';
import 'service_deployment_controller.dart';
import 'service_load_balancer.dart';
import 'service_network_configuration.dart';
import 'service_ordered_placement_strategy.dart';
import 'service_placement_constraint.dart';
import 'service_service_connect_configuration.dart';
import 'service_service_registries.dart';
import 'service_state.dart';
import 'service_volume_configuration.dart';
import 'service_vpc_lattice_configuration.dart';

/// &gt; **Note:** To prevent a race condition during service deletion, make sure to set `dependsOn` to the related `aws.iam.RolePolicy`; otherwise, the policy may be destroyed too soon and the ECS service will then get stuck in the `DRAINING` state.
///
/// Provides an ECS service - effectively a task that is expected to run until an error occurs or a user terminates it (typically a webserver or a database).
///
/// See [ECS Services section in AWS developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mongo = new aws.ecs.Service("mongo", {
///     loadBalancers: [{
///         targetGroupArn: fooAwsLbTargetGroup.arn,
///         containerName: "mongo",
///         containerPort: 8080,
///     }],
///     orderedPlacementStrategies: [{
///         type: "binpack",
///         field: "cpu",
///     }],
///     placementConstraints: [{
///         type: "memberOf",
///         expression: "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
///     }],
///     name: "mongodb",
///     cluster: fooAwsEcsCluster.id,
///     taskDefinition: mongoAwsEcsTaskDefinition.arn,
///     desiredCount: 3,
///     iamRole: fooAwsIamRole.arn,
/// }, {
///     dependsOn: [foo],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mongo = aws.ecs.Service("mongo",
///     load_balancers=[{
///         "target_group_arn": foo_aws_lb_target_group["arn"],
///         "container_name": "mongo",
///         "container_port": 8080,
///     }],
///     ordered_placement_strategies=[{
///         "type": "binpack",
///         "field": "cpu",
///     }],
///     placement_constraints=[{
///         "type": "memberOf",
///         "expression": "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
///     }],
///     name="mongodb",
///     cluster=foo_aws_ecs_cluster["id"],
///     task_definition=mongo_aws_ecs_task_definition["arn"],
///     desired_count=3,
///     iam_role=foo_aws_iam_role["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[foo]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongo = new Aws.Ecs.Service("mongo", new()
///     {
///         LoadBalancers = new[]
///         {
///             new Aws.Ecs.Inputs.ServiceLoadBalancerArgs
///             {
///                 TargetGroupArn = fooAwsLbTargetGroup.Arn,
///                 ContainerName = "mongo",
///                 ContainerPort = 8080,
///             },
///         },
///         OrderedPlacementStrategies = new[]
///         {
///             new Aws.Ecs.Inputs.ServiceOrderedPlacementStrategyArgs
///             {
///                 Type = "binpack",
///                 Field = "cpu",
///             },
///         },
///         PlacementConstraints = new[]
///         {
///             new Aws.Ecs.Inputs.ServicePlacementConstraintArgs
///             {
///                 Type = "memberOf",
///                 Expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
///             },
///         },
///         Name = "mongodb",
///         Cluster = fooAwsEcsCluster.Id,
///         TaskDefinition = mongoAwsEcsTaskDefinition.Arn,
///         DesiredCount = 3,
///         IamRole = fooAwsIamRole.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             foo,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "mongo", &ecs.ServiceArgs{
/// 			LoadBalancers: ecs.ServiceLoadBalancerArray{
/// 				&ecs.ServiceLoadBalancerArgs{
/// 					TargetGroupArn: pulumi.Any(fooAwsLbTargetGroup.Arn),
/// 					ContainerName:  pulumi.String("mongo"),
/// 					ContainerPort:  pulumi.Int(8080),
/// 				},
/// 			},
/// 			OrderedPlacementStrategies: ecs.ServiceOrderedPlacementStrategyArray{
/// 				&ecs.ServiceOrderedPlacementStrategyArgs{
/// 					Type:  pulumi.String("binpack"),
/// 					Field: pulumi.String("cpu"),
/// 				},
/// 			},
/// 			PlacementConstraints: ecs.ServicePlacementConstraintArray{
/// 				&ecs.ServicePlacementConstraintArgs{
/// 					Type:       pulumi.String("memberOf"),
/// 					Expression: pulumi.String("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"),
/// 				},
/// 			},
/// 			Name:           pulumi.String("mongodb"),
/// 			Cluster:        pulumi.Any(fooAwsEcsCluster.Id),
/// 			TaskDefinition: pulumi.Any(mongoAwsEcsTaskDefinition.Arn),
/// 			DesiredCount:   pulumi.Int(3),
/// 			IamRole:        pulumi.Any(fooAwsIamRole.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			foo,
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
/// resource "aws_ecs_service" "mongo" {
///   depends_on = [foo]
///   load_balancers {
///     target_group_arn = fooAwsLbTargetGroup.arn
///     container_name   = "mongo"
///     container_port   = 8080
///   }
///   ordered_placement_strategies {
///     type  = "binpack"
///     field = "cpu"
///   }
///   placement_constraints {
///     type       = "memberOf"
///     expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
///   }
///   name            = "mongodb"
///   cluster         = fooAwsEcsCluster.id
///   task_definition = mongoAwsEcsTaskDefinition.arn
///   desired_count   = 3
///   iam_role        = fooAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceLoadBalancerArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceOrderedPlacementStrategyArgs;
/// import com.pulumi.aws.ecs.inputs.ServicePlacementConstraintArgs;
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
///         var mongo = new Service("mongo", ServiceArgs.builder()
///             .loadBalancers(ServiceLoadBalancerArgs.builder()
///                 .targetGroupArn(fooAwsLbTargetGroup.arn())
///                 .containerName("mongo")
///                 .containerPort(8080)
///                 .build())
///             .orderedPlacementStrategies(ServiceOrderedPlacementStrategyArgs.builder()
///                 .type("binpack")
///                 .field("cpu")
///                 .build())
///             .placementConstraints(ServicePlacementConstraintArgs.builder()
///                 .type("memberOf")
///                 .expression("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]")
///                 .build())
///             .name("mongodb")
///             .cluster(fooAwsEcsCluster.id())
///             .taskDefinition(mongoAwsEcsTaskDefinition.arn())
///             .desiredCount(3)
///             .iamRole(fooAwsIamRole.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(foo)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mongo:
///     type: aws:ecs:Service
///     properties:
///       loadBalancers:
///         - targetGroupArn: ${fooAwsLbTargetGroup.arn}
///           containerName: mongo
///           containerPort: 8080
///       orderedPlacementStrategies:
///         - type: binpack
///           field: cpu
///       placementConstraints:
///         - type: memberOf
///           expression: attribute:ecs.availability-zone in [us-west-2a, us-west-2b]
///       name: mongodb
///       cluster: ${fooAwsEcsCluster.id}
///       taskDefinition: ${mongoAwsEcsTaskDefinition.arn}
///       desiredCount: 3
///       iamRole: ${fooAwsIamRole.arn}
///     options:
///       dependsOn:
///         - ${foo}
/// ```
///
///
/// ### Ignoring Changes to Desired Count
///
/// You can use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to create an ECS service with an initial count of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {desiredCount: 2}, {
///     ignoreChanges: ["desiredCount"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example", desired_count=2,
/// opts = pulumi.ResourceOptions(ignore_changes=["desiredCount"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         DesiredCount = 2,
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "desiredCount",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			DesiredCount: pulumi.Int(2),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"desiredCount",
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
/// resource "aws_ecs_service" "example" {
///   lifecycle {
///     ignore_changes = [desiredCount]
///   }
///   desired_count = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .desiredCount(2)
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("desiredCount")
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       desiredCount: 2 # Optional: Allow external changes without this provider plan difference
///     options:
///       ignoreChanges:
///         - desiredCount
/// ```
///
///
/// ### Daemon Scheduling Strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.ecs.Service("bar", {
///     name: "bar",
///     cluster: foo.id,
///     taskDefinition: barAwsEcsTaskDefinition.arn,
///     schedulingStrategy: "DAEMON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.ecs.Service("bar",
///     name="bar",
///     cluster=foo["id"],
///     task_definition=bar_aws_ecs_task_definition["arn"],
///     scheduling_strategy="DAEMON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Aws.Ecs.Service("bar", new()
///     {
///         Name = "bar",
///         Cluster = foo.Id,
///         TaskDefinition = barAwsEcsTaskDefinition.Arn,
///         SchedulingStrategy = "DAEMON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "bar", &ecs.ServiceArgs{
/// 			Name:               pulumi.String("bar"),
/// 			Cluster:            pulumi.Any(foo.Id),
/// 			TaskDefinition:     pulumi.Any(barAwsEcsTaskDefinition.Arn),
/// 			SchedulingStrategy: pulumi.String("DAEMON"),
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
/// resource "aws_ecs_service" "bar" {
///   name                = "bar"
///   cluster             = foo.id
///   task_definition     = barAwsEcsTaskDefinition.arn
///   scheduling_strategy = "DAEMON"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
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
///         var bar = new Service("bar", ServiceArgs.builder()
///             .name("bar")
///             .cluster(foo.id())
///             .taskDefinition(barAwsEcsTaskDefinition.arn())
///             .schedulingStrategy("DAEMON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:ecs:Service
///     properties:
///       name: bar
///       cluster: ${foo.id}
///       taskDefinition: ${barAwsEcsTaskDefinition.arn}
///       schedulingStrategy: DAEMON
/// ```
///
///
/// ### CloudWatch Deployment Alarms
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
///     alarms: {
///         enable: true,
///         rollback: true,
///         alarmNames: [exampleAwsCloudwatchMetricAlarm.alarmName],
///     },
///     name: "example",
///     cluster: exampleAwsEcsCluster.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
///     alarms={
///         "enable": True,
///         "rollback": True,
///         "alarm_names": [example_aws_cloudwatch_metric_alarm["alarmName"]],
///     },
///     name="example",
///     cluster=example_aws_ecs_cluster["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         Alarms = new Aws.Ecs.Inputs.ServiceAlarmsArgs
///         {
///             Enable = true,
///             Rollback = true,
///             AlarmNames = new[]
///             {
///                 exampleAwsCloudwatchMetricAlarm.AlarmName,
///             },
///         },
///         Name = "example",
///         Cluster = exampleAwsEcsCluster.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			Alarms: &ecs.ServiceAlarmsArgs{
/// 				Enable:   pulumi.Bool(true),
/// 				Rollback: pulumi.Bool(true),
/// 				AlarmNames: pulumi.StringArray{
/// 					exampleAwsCloudwatchMetricAlarm.AlarmName,
/// 				},
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
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
/// resource "aws_ecs_service" "example" {
///   alarms = {
///     enable      = true
///     rollback    = true
///     alarm_names = [exampleAwsCloudwatchMetricAlarm.alarmName]
///   }
///   name    = "example"
///   cluster = exampleAwsEcsCluster.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceAlarmsArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .alarms(ServiceAlarmsArgs.builder()
///                 .enable(true)
///                 .rollback(true)
///                 .alarmNames(exampleAwsCloudwatchMetricAlarm.alarmName())
///                 .build())
///             .name("example")
///             .cluster(exampleAwsEcsCluster.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       alarms:
///         enable: true
///         rollback: true
///         alarmNames:
///           - ${exampleAwsCloudwatchMetricAlarm.alarmName}
///       name: example
///       cluster: ${exampleAwsEcsCluster.id}
/// ```
///
///
/// ### External Deployment Controller
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
///     deploymentController: {
///         type: "EXTERNAL",
///     },
///     name: "example",
///     cluster: exampleAwsEcsCluster.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
///     deployment_controller={
///         "type": "EXTERNAL",
///     },
///     name="example",
///     cluster=example_aws_ecs_cluster["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         DeploymentController = new Aws.Ecs.Inputs.ServiceDeploymentControllerArgs
///         {
///             Type = "EXTERNAL",
///         },
///         Name = "example",
///         Cluster = exampleAwsEcsCluster.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			DeploymentController: &ecs.ServiceDeploymentControllerArgs{
/// 				Type: pulumi.String("EXTERNAL"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
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
/// resource "aws_ecs_service" "example" {
///   deployment_controller = {
///     type = "EXTERNAL"
///   }
///   name    = "example"
///   cluster = exampleAwsEcsCluster.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceDeploymentControllerArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .deploymentController(ServiceDeploymentControllerArgs.builder()
///                 .type("EXTERNAL")
///                 .build())
///             .name("example")
///             .cluster(exampleAwsEcsCluster.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       deploymentController:
///         type: EXTERNAL
///       name: example
///       cluster: ${exampleAwsEcsCluster.id}
/// ```
///
///
/// ### Blue/Green Deployment with SIGINT Rollback
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
///     deploymentConfiguration: {
///         strategy: "BLUE_GREEN",
///     },
///     name: "example",
///     cluster: exampleAwsEcsCluster.id,
///     sigintRollback: true,
///     waitForSteadyState: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
///     deployment_configuration={
///         "strategy": "BLUE_GREEN",
///     },
///     name="example",
///     cluster=example_aws_ecs_cluster["id"],
///     sigint_rollback=True,
///     wait_for_steady_state=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         DeploymentConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationArgs
///         {
///             Strategy = "BLUE_GREEN",
///         },
///         Name = "example",
///         Cluster = exampleAwsEcsCluster.Id,
///         SigintRollback = true,
///         WaitForSteadyState = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			DeploymentConfiguration: &ecs.ServiceDeploymentConfigurationArgs{
/// 				Strategy: pulumi.String("BLUE_GREEN"),
/// 			},
/// 			Name:               pulumi.String("example"),
/// 			Cluster:            pulumi.Any(exampleAwsEcsCluster.Id),
/// 			SigintRollback:     pulumi.Bool(true),
/// 			WaitForSteadyState: pulumi.Bool(true),
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
/// resource "aws_ecs_service" "example" {
///   deployment_configuration = {
///     strategy = "BLUE_GREEN"
///   }
///   name                  = "example"
///   cluster               = exampleAwsEcsCluster.id
///   sigint_rollback       = true
///   wait_for_steady_state = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceDeploymentConfigurationArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .deploymentConfiguration(ServiceDeploymentConfigurationArgs.builder()
///                 .strategy("BLUE_GREEN")
///                 .build())
///             .name("example")
///             .cluster(exampleAwsEcsCluster.id())
///             .sigintRollback(true)
///             .waitForSteadyState(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       deploymentConfiguration:
///         strategy: BLUE_GREEN
///       name: example
///       cluster: ${exampleAwsEcsCluster.id}
///       sigintRollback: true
///       waitForSteadyState: true
/// ```
///
///
/// ### Linear Deployment Strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
///     deploymentConfiguration: {
///         linearConfiguration: {
///             stepPercent: 25,
///             stepBakeTimeInMinutes: "5",
///         },
///         strategy: "LINEAR",
///         bakeTimeInMinutes: "10",
///     },
///     name: "example",
///     cluster: exampleAwsEcsCluster.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
///     deployment_configuration={
///         "linear_configuration": {
///             "step_percent": float(25),
///             "step_bake_time_in_minutes": "5",
///         },
///         "strategy": "LINEAR",
///         "bake_time_in_minutes": "10",
///     },
///     name="example",
///     cluster=example_aws_ecs_cluster["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         DeploymentConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationArgs
///         {
///             LinearConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationLinearConfigurationArgs
///             {
///                 StepPercent = 25,
///                 StepBakeTimeInMinutes = "5",
///             },
///             Strategy = "LINEAR",
///             BakeTimeInMinutes = "10",
///         },
///         Name = "example",
///         Cluster = exampleAwsEcsCluster.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			DeploymentConfiguration: &ecs.ServiceDeploymentConfigurationArgs{
/// 				LinearConfiguration: &ecs.ServiceDeploymentConfigurationLinearConfigurationArgs{
/// 					StepPercent:           pulumi.Float64(25),
/// 					StepBakeTimeInMinutes: pulumi.String("5"),
/// 				},
/// 				Strategy:          pulumi.String("LINEAR"),
/// 				BakeTimeInMinutes: pulumi.String("10"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
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
/// resource "aws_ecs_service" "example" {
///   deployment_configuration = {
///     linear_configuration = {
///       step_percent              = 25
///       step_bake_time_in_minutes = 5
///     }
///     strategy             = "LINEAR"
///     bake_time_in_minutes = 10
///   }
///   name    = "example"
///   cluster = exampleAwsEcsCluster.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceDeploymentConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceDeploymentConfigurationLinearConfigurationArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .deploymentConfiguration(ServiceDeploymentConfigurationArgs.builder()
///                 .linearConfiguration(ServiceDeploymentConfigurationLinearConfigurationArgs.builder()
///                     .stepPercent(25.0)
///                     .stepBakeTimeInMinutes("5")
///                     .build())
///                 .strategy("LINEAR")
///                 .bakeTimeInMinutes("10")
///                 .build())
///             .name("example")
///             .cluster(exampleAwsEcsCluster.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       deploymentConfiguration:
///         linearConfiguration:
///           stepPercent: 25
///           stepBakeTimeInMinutes: 5
///         strategy: LINEAR
///         bakeTimeInMinutes: 10
///       name: example
///       cluster: ${exampleAwsEcsCluster.id}
/// ```
///
///
/// ### Canary Deployment Strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
///     deploymentConfiguration: {
///         canaryConfiguration: {
///             canaryPercent: 10,
///             canaryBakeTimeInMinutes: "5",
///         },
///         strategy: "CANARY",
///         bakeTimeInMinutes: "15",
///     },
///     name: "example",
///     cluster: exampleAwsEcsCluster.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
///     deployment_configuration={
///         "canary_configuration": {
///             "canary_percent": float(10),
///             "canary_bake_time_in_minutes": "5",
///         },
///         "strategy": "CANARY",
///         "bake_time_in_minutes": "15",
///     },
///     name="example",
///     cluster=example_aws_ecs_cluster["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         DeploymentConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationArgs
///         {
///             CanaryConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationCanaryConfigurationArgs
///             {
///                 CanaryPercent = 10,
///                 CanaryBakeTimeInMinutes = "5",
///             },
///             Strategy = "CANARY",
///             BakeTimeInMinutes = "15",
///         },
///         Name = "example",
///         Cluster = exampleAwsEcsCluster.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			DeploymentConfiguration: &ecs.ServiceDeploymentConfigurationArgs{
/// 				CanaryConfiguration: &ecs.ServiceDeploymentConfigurationCanaryConfigurationArgs{
/// 					CanaryPercent:           pulumi.Float64(10),
/// 					CanaryBakeTimeInMinutes: pulumi.String("5"),
/// 				},
/// 				Strategy:          pulumi.String("CANARY"),
/// 				BakeTimeInMinutes: pulumi.String("15"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
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
/// resource "aws_ecs_service" "example" {
///   deployment_configuration = {
///     canary_configuration = {
///       canary_percent              = 10
///       canary_bake_time_in_minutes = 5
///     }
///     strategy             = "CANARY"
///     bake_time_in_minutes = 15
///   }
///   name    = "example"
///   cluster = exampleAwsEcsCluster.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceDeploymentConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceDeploymentConfigurationCanaryConfigurationArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .deploymentConfiguration(ServiceDeploymentConfigurationArgs.builder()
///                 .canaryConfiguration(ServiceDeploymentConfigurationCanaryConfigurationArgs.builder()
///                     .canaryPercent(10.0)
///                     .canaryBakeTimeInMinutes("5")
///                     .build())
///                 .strategy("CANARY")
///                 .bakeTimeInMinutes("15")
///                 .build())
///             .name("example")
///             .cluster(exampleAwsEcsCluster.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       deploymentConfiguration:
///         canaryConfiguration:
///           canaryPercent: 10
///           canaryBakeTimeInMinutes: 5
///         strategy: CANARY
///         bakeTimeInMinutes: 15
///       name: example
///       cluster: ${exampleAwsEcsCluster.id}
/// ```
///
///
/// ### Redeploy Service On Every Apply
///
/// The key used with `triggers` is arbitrary.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
///     forceNewDeployment: true,
///     triggers: {
///         redeployment: "plantimestamp()",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
///     force_new_deployment=True,
///     triggers={
///         "redeployment": "plantimestamp()",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         ForceNewDeployment = true,
///         Triggers =
///         {
///             { "redeployment", "plantimestamp()" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			ForceNewDeployment: pulumi.Bool(true),
/// 			Triggers: pulumi.StringMap{
/// 				"redeployment": pulumi.String("plantimestamp()"),
/// 			},
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
/// resource "aws_ecs_service" "example" {
///   force_new_deployment = true
///   triggers = {
///     "redeployment" = "plantimestamp()"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .forceNewDeployment(true)
///             .triggers(Map.of("redeployment", "plantimestamp()"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       forceNewDeployment: true
///       triggers:
///         redeployment: plantimestamp()
/// ```
///
///
/// ### Service Connect with Access Logs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "/ecs/example/service-connect"});
/// const current = aws.getRegion({});
/// const example = new aws.ecs.Service("example", {
///     serviceConnectConfiguration: {
///         logConfiguration: {
///             logDriver: "awslogs",
///             options: {
///                 "awslogs-group": exampleLogGroup.name,
///                 "awslogs-region": current.then(current => current.region),
///                 "awslogs-stream-prefix": "service-connect",
///             },
///         },
///         accessLogConfiguration: {
///             format: "TEXT",
///             includeQueryParameters: "ENABLED",
///         },
///         services: [{
///             clientAlias: {
///                 dnsName: "example",
///                 port: 8080,
///             },
///             portName: "http",
///             discoveryName: "example",
///         }],
///         enabled: true,
///         namespace: exampleAwsServiceDiscoveryHttpNamespace.arn,
///     },
///     name: "example",
///     cluster: exampleAwsEcsCluster.id,
///     taskDefinition: exampleAwsEcsTaskDefinition.arn,
///     desiredCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_log_group = aws.cloudwatch.LogGroup("example", name="/ecs/example/service-connect")
/// current = aws.get_region()
/// example = aws.ecs.Service("example",
///     service_connect_configuration={
///         "log_configuration": {
///             "log_driver": "awslogs",
///             "options": {
///                 "awslogs-group": example_log_group.name,
///                 "awslogs-region": current.region,
///                 "awslogs-stream-prefix": "service-connect",
///             },
///         },
///         "access_log_configuration": {
///             "format": "TEXT",
///             "include_query_parameters": "ENABLED",
///         },
///         "services": [{
///             "client_alias": {
///                 "dnsName": "example",
///                 "port": 8080,
///             },
///             "port_name": "http",
///             "discovery_name": "example",
///         }],
///         "enabled": True,
///         "namespace": example_aws_service_discovery_http_namespace["arn"],
///     },
///     name="example",
///     cluster=example_aws_ecs_cluster["id"],
///     task_definition=example_aws_ecs_task_definition["arn"],
///     desired_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "/ecs/example/service-connect",
///     });
///
///     var current = Aws.GetRegion.Invoke();
///
///     var example = new Aws.Ecs.Service("example", new()
///     {
///         ServiceConnectConfiguration = new Aws.Ecs.Inputs.ServiceServiceConnectConfigurationArgs
///         {
///             LogConfiguration = new Aws.Ecs.Inputs.ServiceServiceConnectConfigurationLogConfigurationArgs
///             {
///                 LogDriver = "awslogs",
///                 Options =
///                 {
///                     { "awslogs-group", exampleLogGroup.Name },
///                     { "awslogs-region", current.Apply(getRegionResult => getRegionResult.Region) },
///                     { "awslogs-stream-prefix", "service-connect" },
///                 },
///             },
///             AccessLogConfiguration = new Aws.Ecs.Inputs.ServiceServiceConnectConfigurationAccessLogConfigurationArgs
///             {
///                 Format = "TEXT",
///                 IncludeQueryParameters = "ENABLED",
///             },
///             Services = new[]
///             {
///                 new Aws.Ecs.Inputs.ServiceServiceConnectConfigurationServiceArgs
///                 {
///                     ClientAlias =
///                     {
///                         { "dnsName", "example" },
///                         { "port", 8080 },
///                     },
///                     PortName = "http",
///                     DiscoveryName = "example",
///                 },
///             },
///             Enabled = true,
///             Namespace = exampleAwsServiceDiscoveryHttpNamespace.Arn,
///         },
///         Name = "example",
///         Cluster = exampleAwsEcsCluster.Id,
///         TaskDefinition = exampleAwsEcsTaskDefinition.Arn,
///         DesiredCount = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("/ecs/example/service-connect"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// 			ServiceConnectConfiguration: &ecs.ServiceServiceConnectConfigurationArgs{
/// 				LogConfiguration: &ecs.ServiceServiceConnectConfigurationLogConfigurationArgs{
/// 					LogDriver: pulumi.String("awslogs"),
/// 					Options: pulumi.StringMap{
/// 						"awslogs-group":         exampleLogGroup.Name,
/// 						"awslogs-region":        pulumi.String(current.Region),
/// 						"awslogs-stream-prefix": pulumi.String("service-connect"),
/// 					},
/// 				},
/// 				AccessLogConfiguration: &ecs.ServiceServiceConnectConfigurationAccessLogConfigurationArgs{
/// 					Format:                 pulumi.String("TEXT"),
/// 					IncludeQueryParameters: pulumi.String("ENABLED"),
/// 				},
/// 				Services: ecs.ServiceServiceConnectConfigurationServiceArray{
/// 					&ecs.ServiceServiceConnectConfigurationServiceArgs{
/// 						ClientAlias: ecs.ServiceServiceConnectConfigurationServiceClientAliasArray{
/// 							DnsName: "example",
/// 							Port:    8080,
/// 						},
/// 						PortName:      pulumi.String("http"),
/// 						DiscoveryName: pulumi.String("example"),
/// 					},
/// 				},
/// 				Enabled:   pulumi.Bool(true),
/// 				Namespace: pulumi.Any(exampleAwsServiceDiscoveryHttpNamespace.Arn),
/// 			},
/// 			Name:           pulumi.String("example"),
/// 			Cluster:        pulumi.Any(exampleAwsEcsCluster.Id),
/// 			TaskDefinition: pulumi.Any(exampleAwsEcsTaskDefinition.Arn),
/// 			DesiredCount:   pulumi.Int(1),
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
/// data "aws_getregion" "current" {
/// }
///
/// resource "aws_ecs_service" "example" {
///   service_connect_configuration = {
///     log_configuration = {
///       log_driver = "awslogs"
///       options = {
///         "awslogs-group"         = aws_cloudwatch_loggroup.example.name
///         "awslogs-region"        = data.aws_getregion.current.region
///         "awslogs-stream-prefix" = "service-connect"
///       }
///     }
///     access_log_configuration = {
///       format                   = "TEXT"
///       include_query_parameters = "ENABLED"
///     }
///     services = [{
///       "clientAlias" = {
///         "dnsName" = "example"
///         "port"    = 8080
///       }
///       "portName"      = "http"
///       "discoveryName" = "example"
///     }]
///     enabled   = true
///     namespace = exampleAwsServiceDiscoveryHttpNamespace.arn
///   }
///   name            = "example"
///   cluster         = exampleAwsEcsCluster.id
///   task_definition = exampleAwsEcsTaskDefinition.arn
///   desired_count   = 1
/// }
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "/ecs/example/service-connect"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ecs.Service;
/// import com.pulumi.aws.ecs.ServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceServiceConnectConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceServiceConnectConfigurationLogConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceServiceConnectConfigurationAccessLogConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceServiceConnectConfigurationServiceArgs;
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
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("/ecs/example/service-connect")
///             .build());
///
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new Service("example", ServiceArgs.builder()
///             .serviceConnectConfiguration(ServiceServiceConnectConfigurationArgs.builder()
///                 .logConfiguration(ServiceServiceConnectConfigurationLogConfigurationArgs.builder()
///                     .logDriver("awslogs")
///                     .options(Map.ofEntries(
///                         Map.entry("awslogs-group", exampleLogGroup.name()),
///                         Map.entry("awslogs-region", current.region()),
///                         Map.entry("awslogs-stream-prefix", "service-connect")
///                     ))
///                     .build())
///                 .accessLogConfiguration(ServiceServiceConnectConfigurationAccessLogConfigurationArgs.builder()
///                     .format("TEXT")
///                     .includeQueryParameters("ENABLED")
///                     .build())
///                 .services(ServiceServiceConnectConfigurationServiceArgs.builder()
///                     .clientAlias(com.pulumi.aws.ecs.inputs.ServiceServiceConnectConfigurationServiceClientAliasArgs.builder()
///                         .dnsName("example")
///                         .port(8080)
///                         .build())
///                     .portName("http")
///                     .discoveryName("example")
///                     .build())
///                 .enabled(true)
///                 .namespace(exampleAwsServiceDiscoveryHttpNamespace.arn())
///                 .build())
///             .name("example")
///             .cluster(exampleAwsEcsCluster.id())
///             .taskDefinition(exampleAwsEcsTaskDefinition.arn())
///             .desiredCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Service
///     properties:
///       serviceConnectConfiguration:
///         logConfiguration:
///           logDriver: awslogs
///           options:
///             awslogs-group: ${exampleLogGroup.name}
///             awslogs-region: ${current.region}
///             awslogs-stream-prefix: service-connect
///         accessLogConfiguration:
///           format: TEXT
///           includeQueryParameters: ENABLED
///         services:
///           - clientAlias:
///               dnsName: example
///               port: 8080
///             portName: http
///             discoveryName: example
///         enabled: true
///         namespace: ${exampleAwsServiceDiscoveryHttpNamespace.arn}
///       name: example
///       cluster: ${exampleAwsEcsCluster.id}
///       taskDefinition: ${exampleAwsEcsTaskDefinition.arn}
///       desiredCount: 1
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: /ecs/example/service-connect
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
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
/// * `cluster` (String) The name of the cluster.
/// * `name` (String) The name of the service.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECS services using the `name` together with ecs cluster `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/service:Service imported cluster-name/service-name
/// ```
class Service extends pulumi.CustomResource {
  /// Information about the CloudWatch alarms. See below.
  late final pulumi.Output<ServiceAlarms?> alarms;
  /// ARN that identifies the service.
  late final pulumi.Output<String> arn;
  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  late final pulumi.Output<String> availabilityZoneRebalancing;
  /// Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires `forceNewDeployment = true`. See below. Conflicts with `launchType`.
  late final pulumi.Output<List<ServiceCapacityProviderStrategy>?> capacityProviderStrategies;
  /// ARN of an ECS cluster.
  late final pulumi.Output<String> cluster;
  /// Configuration block for deployment circuit breaker. See below.
  late final pulumi.Output<ServiceDeploymentCircuitBreaker?> deploymentCircuitBreaker;
  /// Configuration block for deployment settings. See below.
  late final pulumi.Output<ServiceDeploymentConfiguration> deploymentConfiguration;
  /// Configuration block for deployment controller configuration. See below.
  late final pulumi.Output<ServiceDeploymentController?> deploymentController;
  /// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  late final pulumi.Output<int?> deploymentMaximumPercent;
  /// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  late final pulumi.Output<int?> deploymentMinimumHealthyPercent;
  /// Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the `DAEMON` scheduling strategy.
  late final pulumi.Output<int?> desiredCount;
  /// Whether to enable Amazon ECS managed tags for the tasks within the service.
  late final pulumi.Output<bool?> enableEcsManagedTags;
  /// Whether to enable Amazon ECS Exec for the tasks within the service.
  late final pulumi.Output<bool?> enableExecuteCommand;
  /// Enable to delete a service even if it wasn't scaled down to zero tasks. It's only necessary to use this if the service uses the `REPLICA` scheduling strategy.
  late final pulumi.Output<bool?> forceDelete;
  /// Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., `myimage:latest`), roll Fargate tasks onto a newer platform version, or immediately deploy `orderedPlacementStrategy` and `placementConstraints` updates.
  /// When using the forceNewDeployment property you also need to configure the triggers property.
  late final pulumi.Output<bool?> forceNewDeployment;
  /// Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
  late final pulumi.Output<int?> healthCheckGracePeriodSeconds;
  /// ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the `awsvpc` network mode. If using `awsvpc` network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
  late final pulumi.Output<String> iamRole;
  /// Launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`. Conflicts with `capacityProviderStrategy`.
  late final pulumi.Output<String> launchType;
  /// Configuration block for load balancers. See below.
  late final pulumi.Output<List<ServiceLoadBalancer>?> loadBalancers;
  /// Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  late final pulumi.Output<ServiceNetworkConfiguration?> networkConfiguration;
  /// Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless `forceNewDeployment` is enabled. The maximum number of `orderedPlacementStrategy` blocks is `5`. See below.
  late final pulumi.Output<List<ServiceOrderedPlacementStrategy>?> orderedPlacementStrategies;
  /// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless `forceNewDeployment` is enabled. Maximum number of `placementConstraints` is `10`. See below.
  late final pulumi.Output<List<ServicePlacementConstraint>?> placementConstraints;
  /// Platform version on which to run your service. Only applicable for `launchType` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  late final pulumi.Output<String> platformVersion;
  /// Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  late final pulumi.Output<String?> propagateTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  late final pulumi.Output<String?> schedulingStrategy;
  /// ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  late final pulumi.Output<ServiceServiceConnectConfiguration?> serviceConnectConfiguration;
  /// Service discovery registries for the service. The maximum number of `serviceRegistries` blocks is `1`. See below.
  late final pulumi.Output<ServiceServiceRegistries?> serviceRegistries;
  /// Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to `false`. Only applicable when using `ECS` deployment controller and requires `waitForSteadyState = true`.
  late final pulumi.Output<bool?> sigintRollback;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Required unless using the `EXTERNAL` deployment controller. If a revision is not specified, the latest `ACTIVE` revision is used.
  late final pulumi.Output<String?> taskDefinition;
  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  late final pulumi.Output<Map<String, String>> triggers;
  /// Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  late final pulumi.Output<ServiceVolumeConfiguration?> volumeConfiguration;
  /// VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  late final pulumi.Output<List<ServiceVpcLatticeConfiguration>?> vpcLatticeConfigurations;
  /// If `true`, this provider will wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  late final pulumi.Output<bool?> waitForSteadyState;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_ecs_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    alarms = registerOutput<ServiceAlarms?>('alarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAlarms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZoneRebalancing = registerOutput<String>('availabilityZoneRebalancing');
    capacityProviderStrategies = registerOutput<List<ServiceCapacityProviderStrategy>?>('capacityProviderStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceCapacityProviderStrategy>(guardedValue, (value) => ServiceCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>())); });
    cluster = registerOutput<String>('cluster');
    deploymentCircuitBreaker = registerOutput<ServiceDeploymentCircuitBreaker?>('deploymentCircuitBreaker', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentCircuitBreaker.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentConfiguration = registerOutput<ServiceDeploymentConfiguration>('deploymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentController = registerOutput<ServiceDeploymentController?>('deploymentController', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentController.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentMaximumPercent = registerOutput<int?>('deploymentMaximumPercent');
    deploymentMinimumHealthyPercent = registerOutput<int?>('deploymentMinimumHealthyPercent');
    desiredCount = registerOutput<int?>('desiredCount');
    enableEcsManagedTags = registerOutput<bool?>('enableEcsManagedTags');
    enableExecuteCommand = registerOutput<bool?>('enableExecuteCommand');
    forceDelete = registerOutput<bool?>('forceDelete');
    forceNewDeployment = registerOutput<bool?>('forceNewDeployment');
    healthCheckGracePeriodSeconds = registerOutput<int?>('healthCheckGracePeriodSeconds');
    iamRole = registerOutput<String>('iamRole');
    launchType = registerOutput<String>('launchType');
    loadBalancers = registerOutput<List<ServiceLoadBalancer>?>('loadBalancers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceLoadBalancer>(guardedValue, (value) => ServiceLoadBalancer.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<ServiceNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orderedPlacementStrategies = registerOutput<List<ServiceOrderedPlacementStrategy>?>('orderedPlacementStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceOrderedPlacementStrategy>(guardedValue, (value) => ServiceOrderedPlacementStrategy.fromMap((value as Map).cast<String, dynamic>())); });
    placementConstraints = registerOutput<List<ServicePlacementConstraint>?>('placementConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServicePlacementConstraint>(guardedValue, (value) => ServicePlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    platformVersion = registerOutput<String>('platformVersion');
    propagateTags = registerOutput<String?>('propagateTags');
    region = registerOutput<String>('region');
    schedulingStrategy = registerOutput<String?>('schedulingStrategy');
    serviceConnectConfiguration = registerOutput<ServiceServiceConnectConfiguration?>('serviceConnectConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceServiceConnectConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceRegistries = registerOutput<ServiceServiceRegistries?>('serviceRegistries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceServiceRegistries.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sigintRollback = registerOutput<bool?>('sigintRollback');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskDefinition = registerOutput<String?>('taskDefinition');
    triggers = registerOutput<Map<String, String>>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    volumeConfiguration = registerOutput<ServiceVolumeConfiguration?>('volumeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceVolumeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcLatticeConfigurations = registerOutput<List<ServiceVpcLatticeConfiguration>?>('vpcLatticeConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceVpcLatticeConfiguration>(guardedValue, (value) => ServiceVpcLatticeConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    waitForSteadyState = registerOutput<bool?>('waitForSteadyState');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alarms = registerOutput<ServiceAlarms?>('alarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAlarms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZoneRebalancing = registerOutput<String>('availabilityZoneRebalancing');
    capacityProviderStrategies = registerOutput<List<ServiceCapacityProviderStrategy>?>('capacityProviderStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceCapacityProviderStrategy>(guardedValue, (value) => ServiceCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>())); });
    cluster = registerOutput<String>('cluster');
    deploymentCircuitBreaker = registerOutput<ServiceDeploymentCircuitBreaker?>('deploymentCircuitBreaker', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentCircuitBreaker.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentConfiguration = registerOutput<ServiceDeploymentConfiguration>('deploymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentController = registerOutput<ServiceDeploymentController?>('deploymentController', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentController.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentMaximumPercent = registerOutput<int?>('deploymentMaximumPercent');
    deploymentMinimumHealthyPercent = registerOutput<int?>('deploymentMinimumHealthyPercent');
    desiredCount = registerOutput<int?>('desiredCount');
    enableEcsManagedTags = registerOutput<bool?>('enableEcsManagedTags');
    enableExecuteCommand = registerOutput<bool?>('enableExecuteCommand');
    forceDelete = registerOutput<bool?>('forceDelete');
    forceNewDeployment = registerOutput<bool?>('forceNewDeployment');
    healthCheckGracePeriodSeconds = registerOutput<int?>('healthCheckGracePeriodSeconds');
    iamRole = registerOutput<String>('iamRole');
    launchType = registerOutput<String>('launchType');
    loadBalancers = registerOutput<List<ServiceLoadBalancer>?>('loadBalancers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceLoadBalancer>(guardedValue, (value) => ServiceLoadBalancer.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<ServiceNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orderedPlacementStrategies = registerOutput<List<ServiceOrderedPlacementStrategy>?>('orderedPlacementStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceOrderedPlacementStrategy>(guardedValue, (value) => ServiceOrderedPlacementStrategy.fromMap((value as Map).cast<String, dynamic>())); });
    placementConstraints = registerOutput<List<ServicePlacementConstraint>?>('placementConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServicePlacementConstraint>(guardedValue, (value) => ServicePlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    platformVersion = registerOutput<String>('platformVersion');
    propagateTags = registerOutput<String?>('propagateTags');
    region = registerOutput<String>('region');
    schedulingStrategy = registerOutput<String?>('schedulingStrategy');
    serviceConnectConfiguration = registerOutput<ServiceServiceConnectConfiguration?>('serviceConnectConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceServiceConnectConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceRegistries = registerOutput<ServiceServiceRegistries?>('serviceRegistries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceServiceRegistries.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sigintRollback = registerOutput<bool?>('sigintRollback');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskDefinition = registerOutput<String?>('taskDefinition');
    triggers = registerOutput<Map<String, String>>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    volumeConfiguration = registerOutput<ServiceVolumeConfiguration?>('volumeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceVolumeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcLatticeConfigurations = registerOutput<List<ServiceVpcLatticeConfiguration>?>('vpcLatticeConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceVpcLatticeConfiguration>(guardedValue, (value) => ServiceVpcLatticeConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    waitForSteadyState = registerOutput<bool?>('waitForSteadyState');
  }

  /// Creates a typed reference to an existing [Service] resource.
  Service.reference(String urn)
    : super(
        'aws:ecs/service:Service',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alarms = registerOutput<ServiceAlarms?>('alarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceAlarms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    availabilityZoneRebalancing = registerOutput<String>('availabilityZoneRebalancing');
    capacityProviderStrategies = registerOutput<List<ServiceCapacityProviderStrategy>?>('capacityProviderStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceCapacityProviderStrategy>(guardedValue, (value) => ServiceCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>())); });
    cluster = registerOutput<String>('cluster');
    deploymentCircuitBreaker = registerOutput<ServiceDeploymentCircuitBreaker?>('deploymentCircuitBreaker', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentCircuitBreaker.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentConfiguration = registerOutput<ServiceDeploymentConfiguration>('deploymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentController = registerOutput<ServiceDeploymentController?>('deploymentController', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDeploymentController.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentMaximumPercent = registerOutput<int?>('deploymentMaximumPercent');
    deploymentMinimumHealthyPercent = registerOutput<int?>('deploymentMinimumHealthyPercent');
    desiredCount = registerOutput<int?>('desiredCount');
    enableEcsManagedTags = registerOutput<bool?>('enableEcsManagedTags');
    enableExecuteCommand = registerOutput<bool?>('enableExecuteCommand');
    forceDelete = registerOutput<bool?>('forceDelete');
    forceNewDeployment = registerOutput<bool?>('forceNewDeployment');
    healthCheckGracePeriodSeconds = registerOutput<int?>('healthCheckGracePeriodSeconds');
    iamRole = registerOutput<String>('iamRole');
    launchType = registerOutput<String>('launchType');
    loadBalancers = registerOutput<List<ServiceLoadBalancer>?>('loadBalancers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceLoadBalancer>(guardedValue, (value) => ServiceLoadBalancer.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<ServiceNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orderedPlacementStrategies = registerOutput<List<ServiceOrderedPlacementStrategy>?>('orderedPlacementStrategies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceOrderedPlacementStrategy>(guardedValue, (value) => ServiceOrderedPlacementStrategy.fromMap((value as Map).cast<String, dynamic>())); });
    placementConstraints = registerOutput<List<ServicePlacementConstraint>?>('placementConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServicePlacementConstraint>(guardedValue, (value) => ServicePlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    platformVersion = registerOutput<String>('platformVersion');
    propagateTags = registerOutput<String?>('propagateTags');
    region = registerOutput<String>('region');
    schedulingStrategy = registerOutput<String?>('schedulingStrategy');
    serviceConnectConfiguration = registerOutput<ServiceServiceConnectConfiguration?>('serviceConnectConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceServiceConnectConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceRegistries = registerOutput<ServiceServiceRegistries?>('serviceRegistries', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceServiceRegistries.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sigintRollback = registerOutput<bool?>('sigintRollback');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskDefinition = registerOutput<String?>('taskDefinition');
    triggers = registerOutput<Map<String, String>>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    volumeConfiguration = registerOutput<ServiceVolumeConfiguration?>('volumeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceVolumeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcLatticeConfigurations = registerOutput<List<ServiceVpcLatticeConfiguration>?>('vpcLatticeConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceVpcLatticeConfiguration>(guardedValue, (value) => ServiceVpcLatticeConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    waitForSteadyState = registerOutput<bool?>('waitForSteadyState');
  }
}
