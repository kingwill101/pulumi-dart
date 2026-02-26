import 'package:pulumi/pulumi.dart';
import '../service_alarms/service_alarms.dart';
import '../service_capacity_provider_strategy/service_capacity_provider_strategy.dart';
import '../service_deployment_circuit_breaker/service_deployment_circuit_breaker.dart';
import '../service_deployment_configuration/service_deployment_configuration.dart';
import '../service_deployment_controller/service_deployment_controller.dart';
import '../service_load_balancer/service_load_balancer.dart';
import '../service_network_configuration/service_network_configuration2.dart';
import '../service_ordered_placement_strategy/service_ordered_placement_strategy.dart';
import '../service_placement_constraint/service_placement_constraint.dart';
import '../service_service_connect_configuration/service_service_connect_configuration.dart';
import '../service_service_registries/service_service_registries.dart';
import '../service_volume_configuration/service_volume_configuration.dart';
import '../service_vpc_lattice_configuration/service_vpc_lattice_configuration.dart';
import 'service_args2.dart';

/// > **Note:** To prevent a race condition during service deletion, make sure to set <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> to the related <span pulumi-lang-nodejs="`aws.iam.RolePolicy`" pulumi-lang-dotnet="`aws.iam.RolePolicy`" pulumi-lang-go="`iam.RolePolicy`" pulumi-lang-python="`iam.RolePolicy`" pulumi-lang-yaml="`aws.iam.RolePolicy`" pulumi-lang-java="`aws.iam.RolePolicy`">`aws.iam.RolePolicy`</span>; otherwise, the policy may be destroyed too soon and the ECS service will then get stuck in the `DRAINING` state.
///
/// Provides an ECS service - effectively a task that is expected to run until an error occurs or a user terminates it (typically a webserver or a database).
///
/// See [ECS Services section in AWS developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mongo = new aws.ecs.Service("mongo", {
/// name: "mongodb",
/// cluster: fooAwsEcsCluster.id,
/// taskDefinition: mongoAwsEcsTaskDefinition.arn,
/// desiredCount: 3,
/// iamRole: fooAwsIamRole.arn,
/// orderedPlacementStrategies: [{
/// type: "binpack",
/// field: "cpu",
/// }],
/// loadBalancers: [{
/// targetGroupArn: fooAwsLbTargetGroup.arn,
/// containerName: "mongo",
/// containerPort: 8080,
/// }],
/// placementConstraints: [{
/// type: "memberOf",
/// expression: "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
/// }],
/// }, {
/// dependsOn: [foo],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mongo = aws.ecs.Service("mongo",
/// name="mongodb",
/// cluster=foo_aws_ecs_cluster["id"],
/// task_definition=mongo_aws_ecs_task_definition["arn"],
/// desired_count=3,
/// iam_role=foo_aws_iam_role["arn"],
/// ordered_placement_strategies=[{
/// "type": "binpack",
/// "field": "cpu",
/// }],
/// load_balancers=[{
/// "target_group_arn": foo_aws_lb_target_group["arn"],
/// "container_name": "mongo",
/// "container_port": 8080,
/// }],
/// placement_constraints=[{
/// "type": "memberOf",
/// "expression": "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
/// }],
/// opts = pulumi.ResourceOptions(depends_on=[foo]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mongo = new Aws.Ecs.Service("mongo", new()
/// {
/// Name = "mongodb",
/// Cluster = fooAwsEcsCluster.Id,
/// TaskDefinition = mongoAwsEcsTaskDefinition.Arn,
/// DesiredCount = 3,
/// IamRole = fooAwsIamRole.Arn,
/// OrderedPlacementStrategies = new[]
/// {
/// new Aws.Ecs.Inputs.ServiceOrderedPlacementStrategyArgs
/// {
/// Type = "binpack",
/// Field = "cpu",
/// },
/// },
/// LoadBalancers = new[]
/// {
/// new Aws.Ecs.Inputs.ServiceLoadBalancerArgs
/// {
/// TargetGroupArn = fooAwsLbTargetGroup.Arn,
/// ContainerName = "mongo",
/// ContainerPort = 8080,
/// },
/// },
/// PlacementConstraints = new[]
/// {
/// new Aws.Ecs.Inputs.ServicePlacementConstraintArgs
/// {
/// Type = "memberOf",
/// Expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]",
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// foo,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "mongo", &ecs.ServiceArgs{
/// Name:           pulumi.String("mongodb"),
/// Cluster:        pulumi.Any(fooAwsEcsCluster.Id),
/// TaskDefinition: pulumi.Any(mongoAwsEcsTaskDefinition.Arn),
/// DesiredCount:   pulumi.Int(3),
/// IamRole:        pulumi.Any(fooAwsIamRole.Arn),
/// OrderedPlacementStrategies: ecs.ServiceOrderedPlacementStrategyArray{
/// &ecs.ServiceOrderedPlacementStrategyArgs{
/// Type:  pulumi.String("binpack"),
/// Field: pulumi.String("cpu"),
/// },
/// },
/// LoadBalancers: ecs.ServiceLoadBalancerArray{
/// &ecs.ServiceLoadBalancerArgs{
/// TargetGroupArn: pulumi.Any(fooAwsLbTargetGroup.Arn),
/// ContainerName:  pulumi.String("mongo"),
/// ContainerPort:  pulumi.Int(8080),
/// },
/// },
/// PlacementConstraints: ecs.ServicePlacementConstraintArray{
/// &ecs.ServicePlacementConstraintArgs{
/// Type:       pulumi.String("memberOf"),
/// Expression: pulumi.String("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// foo,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.ecs.inputs.ServiceOrderedPlacementStrategyArgs;
/// import com.pulumi.aws.ecs.inputs.ServiceLoadBalancerArgs;
/// import com.pulumi.aws.ecs.inputs.ServicePlacementConstraintArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var mongo = new Service("mongo", ServiceArgs.builder()
/// .name("mongodb")
/// .cluster(fooAwsEcsCluster.id())
/// .taskDefinition(mongoAwsEcsTaskDefinition.arn())
/// .desiredCount(3)
/// .iamRole(fooAwsIamRole.arn())
/// .orderedPlacementStrategies(ServiceOrderedPlacementStrategyArgs.builder()
/// .type("binpack")
/// .field("cpu")
/// .build())
/// .loadBalancers(ServiceLoadBalancerArgs.builder()
/// .targetGroupArn(fooAwsLbTargetGroup.arn())
/// .containerName("mongo")
/// .containerPort(8080)
/// .build())
/// .placementConstraints(ServicePlacementConstraintArgs.builder()
/// .type("memberOf")
/// .expression("attribute:ecs.availability-zone in [us-west-2a, us-west-2b]")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(foo)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mongo:
/// type: aws:ecs:Service
/// properties:
/// name: mongodb
/// cluster: ${fooAwsEcsCluster.id}
/// taskDefinition: ${mongoAwsEcsTaskDefinition.arn}
/// desiredCount: 3
/// iamRole: ${fooAwsIamRole.arn}
/// orderedPlacementStrategies:
/// - type: binpack
/// field: cpu
/// loadBalancers:
/// - targetGroupArn: ${fooAwsLbTargetGroup.arn}
/// containerName: mongo
/// containerPort: 8080
/// placementConstraints:
/// - type: memberOf
/// expression: attribute:ecs.availability-zone in [us-west-2a, us-west-2b]
/// options:
/// dependsOn:
/// - ${foo}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Ignoring Changes to Desired Count
///
/// You can use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to create an ECS service with an initial count of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {desiredCount: 2});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example", desired_count=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.Service("example", new()
/// {
/// DesiredCount = 2,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// DesiredCount: pulumi.Int(2),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Service("example", ServiceArgs.builder()
/// .desiredCount(2)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:Service
/// properties:
/// desiredCount: 2 # Optional: Allow external changes without this provider plan difference
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Daemon Scheduling Strategy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.ecs.Service("bar", {
/// name: "bar",
/// cluster: foo.id,
/// taskDefinition: barAwsEcsTaskDefinition.arn,
/// schedulingStrategy: "DAEMON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.ecs.Service("bar",
/// name="bar",
/// cluster=foo["id"],
/// task_definition=bar_aws_ecs_task_definition["arn"],
/// scheduling_strategy="DAEMON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bar = new Aws.Ecs.Service("bar", new()
/// {
/// Name = "bar",
/// Cluster = foo.Id,
/// TaskDefinition = barAwsEcsTaskDefinition.Arn,
/// SchedulingStrategy = "DAEMON",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "bar", &ecs.ServiceArgs{
/// Name:               pulumi.String("bar"),
/// Cluster:            pulumi.Any(foo.Id),
/// TaskDefinition:     pulumi.Any(barAwsEcsTaskDefinition.Arn),
/// SchedulingStrategy: pulumi.String("DAEMON"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var bar = new Service("bar", ServiceArgs.builder()
/// .name("bar")
/// .cluster(foo.id())
/// .taskDefinition(barAwsEcsTaskDefinition.arn())
/// .schedulingStrategy("DAEMON")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: aws:ecs:Service
/// properties:
/// name: bar
/// cluster: ${foo.id}
/// taskDefinition: ${barAwsEcsTaskDefinition.arn}
/// schedulingStrategy: DAEMON
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### CloudWatch Deployment Alarms
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
/// name: "example",
/// cluster: exampleAwsEcsCluster.id,
/// alarms: {
/// enable: true,
/// rollback: true,
/// alarmNames: [exampleAwsCloudwatchMetricAlarm.alarmName],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
/// name="example",
/// cluster=example_aws_ecs_cluster["id"],
/// alarms={
/// "enable": True,
/// "rollback": True,
/// "alarm_names": [example_aws_cloudwatch_metric_alarm["alarmName"]],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.Service("example", new()
/// {
/// Name = "example",
/// Cluster = exampleAwsEcsCluster.Id,
/// Alarms = new Aws.Ecs.Inputs.ServiceAlarmsArgs
/// {
/// Enable = true,
/// Rollback = true,
/// AlarmNames = new[]
/// {
/// exampleAwsCloudwatchMetricAlarm.AlarmName,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// Name:    pulumi.String("example"),
/// Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
/// Alarms: &ecs.ServiceAlarmsArgs{
/// Enable:   pulumi.Bool(true),
/// Rollback: pulumi.Bool(true),
/// AlarmNames: pulumi.StringArray{
/// exampleAwsCloudwatchMetricAlarm.AlarmName,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .cluster(exampleAwsEcsCluster.id())
/// .alarms(ServiceAlarmsArgs.builder()
/// .enable(true)
/// .rollback(true)
/// .alarmNames(exampleAwsCloudwatchMetricAlarm.alarmName())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:Service
/// properties:
/// name: example
/// cluster: ${exampleAwsEcsCluster.id}
/// alarms:
/// enable: true
/// rollback: true
/// alarmNames:
/// - ${exampleAwsCloudwatchMetricAlarm.alarmName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### External Deployment Controller
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
/// name: "example",
/// cluster: exampleAwsEcsCluster.id,
/// deploymentController: {
/// type: "EXTERNAL",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
/// name="example",
/// cluster=example_aws_ecs_cluster["id"],
/// deployment_controller={
/// "type": "EXTERNAL",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.Service("example", new()
/// {
/// Name = "example",
/// Cluster = exampleAwsEcsCluster.Id,
/// DeploymentController = new Aws.Ecs.Inputs.ServiceDeploymentControllerArgs
/// {
/// Type = "EXTERNAL",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// Name:    pulumi.String("example"),
/// Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
/// DeploymentController: &ecs.ServiceDeploymentControllerArgs{
/// Type: pulumi.String("EXTERNAL"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .cluster(exampleAwsEcsCluster.id())
/// .deploymentController(ServiceDeploymentControllerArgs.builder()
/// .type("EXTERNAL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:Service
/// properties:
/// name: example
/// cluster: ${exampleAwsEcsCluster.id}
/// deploymentController:
/// type: EXTERNAL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Blue/Green Deployment with SIGINT Rollback
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
/// name: "example",
/// cluster: exampleAwsEcsCluster.id,
/// deploymentConfiguration: {
/// strategy: "BLUE_GREEN",
/// },
/// sigintRollback: true,
/// waitForSteadyState: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
/// name="example",
/// cluster=example_aws_ecs_cluster["id"],
/// deployment_configuration={
/// "strategy": "BLUE_GREEN",
/// },
/// sigint_rollback=True,
/// wait_for_steady_state=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.Service("example", new()
/// {
/// Name = "example",
/// Cluster = exampleAwsEcsCluster.Id,
/// DeploymentConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationArgs
/// {
/// Strategy = "BLUE_GREEN",
/// },
/// SigintRollback = true,
/// WaitForSteadyState = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// Name:    pulumi.String("example"),
/// Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
/// DeploymentConfiguration: &ecs.ServiceDeploymentConfigurationArgs{
/// Strategy: pulumi.String("BLUE_GREEN"),
/// },
/// SigintRollback:     pulumi.Bool(true),
/// WaitForSteadyState: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .cluster(exampleAwsEcsCluster.id())
/// .deploymentConfiguration(ServiceDeploymentConfigurationArgs.builder()
/// .strategy("BLUE_GREEN")
/// .build())
/// .sigintRollback(true)
/// .waitForSteadyState(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:Service
/// properties:
/// name: example
/// cluster: ${exampleAwsEcsCluster.id}
/// deploymentConfiguration:
/// strategy: BLUE_GREEN
/// sigintRollback: true
/// waitForSteadyState: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Linear Deployment Strategy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
/// name: "example",
/// cluster: exampleAwsEcsCluster.id,
/// deploymentConfiguration: {
/// strategy: "LINEAR",
/// bakeTimeInMinutes: "10",
/// linearConfiguration: {
/// stepPercent: 25,
/// stepBakeTimeInMinutes: "5",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
/// name="example",
/// cluster=example_aws_ecs_cluster["id"],
/// deployment_configuration={
/// "strategy": "LINEAR",
/// "bake_time_in_minutes": "10",
/// "linear_configuration": {
/// "step_percent": 25,
/// "step_bake_time_in_minutes": "5",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.Service("example", new()
/// {
/// Name = "example",
/// Cluster = exampleAwsEcsCluster.Id,
/// DeploymentConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationArgs
/// {
/// Strategy = "LINEAR",
/// BakeTimeInMinutes = "10",
/// LinearConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationLinearConfigurationArgs
/// {
/// StepPercent = 25,
/// StepBakeTimeInMinutes = "5",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// Name:    pulumi.String("example"),
/// Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
/// DeploymentConfiguration: &ecs.ServiceDeploymentConfigurationArgs{
/// Strategy:          pulumi.String("LINEAR"),
/// BakeTimeInMinutes: pulumi.String("10"),
/// LinearConfiguration: &ecs.ServiceDeploymentConfigurationLinearConfigurationArgs{
/// StepPercent:           pulumi.Float64(25),
/// StepBakeTimeInMinutes: pulumi.String("5"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .cluster(exampleAwsEcsCluster.id())
/// .deploymentConfiguration(ServiceDeploymentConfigurationArgs.builder()
/// .strategy("LINEAR")
/// .bakeTimeInMinutes("10")
/// .linearConfiguration(ServiceDeploymentConfigurationLinearConfigurationArgs.builder()
/// .stepPercent(25.0)
/// .stepBakeTimeInMinutes("5")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:Service
/// properties:
/// name: example
/// cluster: ${exampleAwsEcsCluster.id}
/// deploymentConfiguration:
/// strategy: LINEAR
/// bakeTimeInMinutes: 10
/// linearConfiguration:
/// stepPercent: 25
/// stepBakeTimeInMinutes: 5
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Canary Deployment Strategy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
/// name: "example",
/// cluster: exampleAwsEcsCluster.id,
/// deploymentConfiguration: {
/// strategy: "CANARY",
/// bakeTimeInMinutes: "15",
/// canaryConfiguration: {
/// canaryPercent: 10,
/// canaryBakeTimeInMinutes: "5",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
/// name="example",
/// cluster=example_aws_ecs_cluster["id"],
/// deployment_configuration={
/// "strategy": "CANARY",
/// "bake_time_in_minutes": "15",
/// "canary_configuration": {
/// "canary_percent": 10,
/// "canary_bake_time_in_minutes": "5",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.Service("example", new()
/// {
/// Name = "example",
/// Cluster = exampleAwsEcsCluster.Id,
/// DeploymentConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationArgs
/// {
/// Strategy = "CANARY",
/// BakeTimeInMinutes = "15",
/// CanaryConfiguration = new Aws.Ecs.Inputs.ServiceDeploymentConfigurationCanaryConfigurationArgs
/// {
/// CanaryPercent = 10,
/// CanaryBakeTimeInMinutes = "5",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// Name:    pulumi.String("example"),
/// Cluster: pulumi.Any(exampleAwsEcsCluster.Id),
/// DeploymentConfiguration: &ecs.ServiceDeploymentConfigurationArgs{
/// Strategy:          pulumi.String("CANARY"),
/// BakeTimeInMinutes: pulumi.String("15"),
/// CanaryConfiguration: &ecs.ServiceDeploymentConfigurationCanaryConfigurationArgs{
/// CanaryPercent:           pulumi.Float64(10),
/// CanaryBakeTimeInMinutes: pulumi.String("5"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .cluster(exampleAwsEcsCluster.id())
/// .deploymentConfiguration(ServiceDeploymentConfigurationArgs.builder()
/// .strategy("CANARY")
/// .bakeTimeInMinutes("15")
/// .canaryConfiguration(ServiceDeploymentConfigurationCanaryConfigurationArgs.builder()
/// .canaryPercent(10.0)
/// .canaryBakeTimeInMinutes("5")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:Service
/// properties:
/// name: example
/// cluster: ${exampleAwsEcsCluster.id}
/// deploymentConfiguration:
/// strategy: CANARY
/// bakeTimeInMinutes: 15
/// canaryConfiguration:
/// canaryPercent: 10
/// canaryBakeTimeInMinutes: 5
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Redeploy Service On Every Apply
///
/// The key used with <span pulumi-lang-nodejs="`triggers`" pulumi-lang-dotnet="`Triggers`" pulumi-lang-go="`triggers`" pulumi-lang-python="`triggers`" pulumi-lang-yaml="`triggers`" pulumi-lang-java="`triggers`">`triggers`</span> is arbitrary.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Service("example", {
/// forceNewDeployment: true,
/// triggers: {
/// redeployment: "plantimestamp()",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Service("example",
/// force_new_deployment=True,
/// triggers={
/// "redeployment": "plantimestamp()",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.Service("example", new()
/// {
/// ForceNewDeployment = true,
/// Triggers =
/// {
/// { "redeployment", "plantimestamp()" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewService(ctx, "example", &ecs.ServiceArgs{
/// ForceNewDeployment: pulumi.Bool(true),
/// Triggers: pulumi.StringMap{
/// "redeployment": pulumi.String("plantimestamp()"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Service("example", ServiceArgs.builder()
/// .forceNewDeployment(true)
/// .triggers(Map.of("redeployment", "plantimestamp()"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:Service
/// properties:
/// forceNewDeployment: true
/// triggers:
/// redeployment: plantimestamp()
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECS services using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> together with ecs cluster <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/service:Service imported cluster-name/service-name
/// ```
class Service2 extends CustomResource {
  /// Information about the CloudWatch alarms. See below.
  late final Output<ServiceAlarms?> alarms;

  /// ARN that identifies the service.
  late final Output<String> arn;

  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  late final Output<String> availabilityZoneRebalancing;

  /// Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires <span pulumi-lang-nodejs="`forceNewDeployment " pulumi-lang-dotnet="`ForceNewDeployment " pulumi-lang-go="`forceNewDeployment " pulumi-lang-python="`force_new_deployment " pulumi-lang-yaml="`forceNewDeployment " pulumi-lang-java="`forceNewDeployment ">`force_new_deployment </span>= true`. See below. Conflicts with <span pulumi-lang-nodejs="`launchType`" pulumi-lang-dotnet="`LaunchType`" pulumi-lang-go="`launchType`" pulumi-lang-python="`launch_type`" pulumi-lang-yaml="`launchType`" pulumi-lang-java="`launchType`">`launch_type`</span>.
  late final Output<List<ServiceCapacityProviderStrategy>?>
      capacityProviderStrategies;

  /// ARN of an ECS cluster.
  late final Output<String> cluster;

  /// Configuration block for deployment circuit breaker. See below.
  late final Output<ServiceDeploymentCircuitBreaker?> deploymentCircuitBreaker;

  /// Configuration block for deployment settings. See below.
  late final Output<ServiceDeploymentConfiguration> deploymentConfiguration;

  /// Configuration block for deployment controller configuration. See below.
  late final Output<ServiceDeploymentController?> deploymentController;

  /// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  late final Output<int?> deploymentMaximumPercent;

  /// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  late final Output<int?> deploymentMinimumHealthyPercent;

  /// Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the `DAEMON` scheduling strategy.
  late final Output<int?> desiredCount;

  /// Whether to enable Amazon ECS managed tags for the tasks within the service.
  late final Output<bool?> enableEcsManagedTags;

  /// Whether to enable Amazon ECS Exec for the tasks within the service.
  late final Output<bool?> enableExecuteCommand;

  /// Enable to delete a service even if it wasn't scaled down to zero tasks. It's only necessary to use this if the service uses the `REPLICA` scheduling strategy.
  late final Output<bool?> forceDelete;

  /// Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., `myimage:latest`), roll Fargate tasks onto a newer platform version, or immediately deploy <span pulumi-lang-nodejs="`orderedPlacementStrategy`" pulumi-lang-dotnet="`OrderedPlacementStrategy`" pulumi-lang-go="`orderedPlacementStrategy`" pulumi-lang-python="`ordered_placement_strategy`" pulumi-lang-yaml="`orderedPlacementStrategy`" pulumi-lang-java="`orderedPlacementStrategy`">`ordered_placement_strategy`</span> and <span pulumi-lang-nodejs="`placementConstraints`" pulumi-lang-dotnet="`PlacementConstraints`" pulumi-lang-go="`placementConstraints`" pulumi-lang-python="`placement_constraints`" pulumi-lang-yaml="`placementConstraints`" pulumi-lang-java="`placementConstraints`">`placement_constraints`</span> updates.
  /// When using the forceNewDeployment property you also need to configure the triggers property.
  late final Output<bool?> forceNewDeployment;

  /// Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
  late final Output<int?> healthCheckGracePeriodSeconds;

  /// ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> network mode. If using <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
  late final Output<String> iamRole;

  /// Launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`. Conflicts with <span pulumi-lang-nodejs="`capacityProviderStrategy`" pulumi-lang-dotnet="`CapacityProviderStrategy`" pulumi-lang-go="`capacityProviderStrategy`" pulumi-lang-python="`capacity_provider_strategy`" pulumi-lang-yaml="`capacityProviderStrategy`" pulumi-lang-java="`capacityProviderStrategy`">`capacity_provider_strategy`</span>.
  late final Output<String> launchType;

  /// Configuration block for load balancers. See below.
  late final Output<List<ServiceLoadBalancer>?> loadBalancers;

  /// Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Network configuration for the service. This parameter is required for task definitions that use the <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  late final Output<ServiceNetworkConfiguration2?> networkConfiguration;

  /// Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless <span pulumi-lang-nodejs="`forceNewDeployment`" pulumi-lang-dotnet="`ForceNewDeployment`" pulumi-lang-go="`forceNewDeployment`" pulumi-lang-python="`force_new_deployment`" pulumi-lang-yaml="`forceNewDeployment`" pulumi-lang-java="`forceNewDeployment`">`force_new_deployment`</span> is enabled. The maximum number of <span pulumi-lang-nodejs="`orderedPlacementStrategy`" pulumi-lang-dotnet="`OrderedPlacementStrategy`" pulumi-lang-go="`orderedPlacementStrategy`" pulumi-lang-python="`ordered_placement_strategy`" pulumi-lang-yaml="`orderedPlacementStrategy`" pulumi-lang-java="`orderedPlacementStrategy`">`ordered_placement_strategy`</span> blocks is <span pulumi-lang-nodejs="`5`" pulumi-lang-dotnet="`5`" pulumi-lang-go="`5`" pulumi-lang-python="`5`" pulumi-lang-yaml="`5`" pulumi-lang-java="`5`">`5`</span>. See below.
  late final Output<List<ServiceOrderedPlacementStrategy>?>
      orderedPlacementStrategies;

  /// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless <span pulumi-lang-nodejs="`forceNewDeployment`" pulumi-lang-dotnet="`ForceNewDeployment`" pulumi-lang-go="`forceNewDeployment`" pulumi-lang-python="`force_new_deployment`" pulumi-lang-yaml="`forceNewDeployment`" pulumi-lang-java="`forceNewDeployment`">`force_new_deployment`</span> is enabled. Maximum number of <span pulumi-lang-nodejs="`placementConstraints`" pulumi-lang-dotnet="`PlacementConstraints`" pulumi-lang-go="`placementConstraints`" pulumi-lang-python="`placement_constraints`" pulumi-lang-yaml="`placementConstraints`" pulumi-lang-java="`placementConstraints`">`placement_constraints`</span> is <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>. See below.
  late final Output<List<ServicePlacementConstraint>?> placementConstraints;

  /// Platform version on which to run your service. Only applicable for <span pulumi-lang-nodejs="`launchType`" pulumi-lang-dotnet="`LaunchType`" pulumi-lang-go="`launchType`" pulumi-lang-python="`launch_type`" pulumi-lang-yaml="`launchType`" pulumi-lang-java="`launchType`">`launch_type`</span> set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  late final Output<String> platformVersion;

  /// Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  late final Output<String?> propagateTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  late final Output<String?> schedulingStrategy;

  /// ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  late final Output<ServiceServiceConnectConfiguration?>
      serviceConnectConfiguration;

  /// Service discovery registries for the service. The maximum number of <span pulumi-lang-nodejs="`serviceRegistries`" pulumi-lang-dotnet="`ServiceRegistries`" pulumi-lang-go="`serviceRegistries`" pulumi-lang-python="`service_registries`" pulumi-lang-yaml="`serviceRegistries`" pulumi-lang-java="`serviceRegistries`">`service_registries`</span> blocks is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. See below.
  late final Output<ServiceServiceRegistries?> serviceRegistries;

  /// Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Only applicable when using `ECS` deployment controller and requires <span pulumi-lang-nodejs="`waitForSteadyState " pulumi-lang-dotnet="`WaitForSteadyState " pulumi-lang-go="`waitForSteadyState " pulumi-lang-python="`wait_for_steady_state " pulumi-lang-yaml="`waitForSteadyState " pulumi-lang-java="`waitForSteadyState ">`wait_for_steady_state </span>= true`.
  late final Output<bool?> sigintRollback;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Required unless using the `EXTERNAL` deployment controller. If a revision is not specified, the latest `ACTIVE` revision is used.
  late final Output<String?> taskDefinition;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  late final Output<Map<String, String>> triggers;

  /// Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  late final Output<ServiceVolumeConfiguration?> volumeConfiguration;

  /// The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  late final Output<List<ServiceVpcLatticeConfiguration>?>
      vpcLatticeConfigurations;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, this provider will wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> waitForSteadyState;

  Service2(
    String name, {
    ServiceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alarms = Output.createUnknown<ServiceAlarms?>();
    this.arn = Output.createUnknown<String>();
    this.availabilityZoneRebalancing = Output.createUnknown<String>();
    this.capacityProviderStrategies =
        Output.createUnknown<List<ServiceCapacityProviderStrategy>?>();
    this.cluster = Output.createUnknown<String>();
    this.deploymentCircuitBreaker =
        Output.createUnknown<ServiceDeploymentCircuitBreaker?>();
    this.deploymentConfiguration =
        Output.createUnknown<ServiceDeploymentConfiguration>();
    this.deploymentController =
        Output.createUnknown<ServiceDeploymentController?>();
    this.deploymentMaximumPercent = Output.createUnknown<int?>();
    this.deploymentMinimumHealthyPercent = Output.createUnknown<int?>();
    this.desiredCount = Output.createUnknown<int?>();
    this.enableEcsManagedTags = Output.createUnknown<bool?>();
    this.enableExecuteCommand = Output.createUnknown<bool?>();
    this.forceDelete = Output.createUnknown<bool?>();
    this.forceNewDeployment = Output.createUnknown<bool?>();
    this.healthCheckGracePeriodSeconds = Output.createUnknown<int?>();
    this.iamRole = Output.createUnknown<String>();
    this.launchType = Output.createUnknown<String>();
    this.loadBalancers = Output.createUnknown<List<ServiceLoadBalancer>?>();
    this.name = Output.createUnknown<String>();
    this.networkConfiguration =
        Output.createUnknown<ServiceNetworkConfiguration2?>();
    this.orderedPlacementStrategies =
        Output.createUnknown<List<ServiceOrderedPlacementStrategy>?>();
    this.placementConstraints =
        Output.createUnknown<List<ServicePlacementConstraint>?>();
    this.platformVersion = Output.createUnknown<String>();
    this.propagateTags = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.schedulingStrategy = Output.createUnknown<String?>();
    this.serviceConnectConfiguration =
        Output.createUnknown<ServiceServiceConnectConfiguration?>();
    this.serviceRegistries = Output.createUnknown<ServiceServiceRegistries?>();
    this.sigintRollback = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.taskDefinition = Output.createUnknown<String?>();
    this.triggers = Output.createUnknown<Map<String, String>>();
    this.volumeConfiguration =
        Output.createUnknown<ServiceVolumeConfiguration?>();
    this.vpcLatticeConfigurations =
        Output.createUnknown<List<ServiceVpcLatticeConfiguration>?>();
    this.waitForSteadyState = Output.createUnknown<bool?>();
  }
}
