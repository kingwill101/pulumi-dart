import 'package:pulumi/pulumi.dart';
import '../task_set_capacity_provider_strategy/task_set_capacity_provider_strategy.dart';
import '../task_set_load_balancer/task_set_load_balancer.dart';
import '../task_set_network_configuration/task_set_network_configuration.dart';
import '../task_set_scale/task_set_scale.dart';
import '../task_set_service_registries/task_set_service_registries.dart';
import 'task_set_args.dart';

/// Provides an ECS task set - effectively a task that is expected to run until an error occurs or a user terminates it (typically a webserver or a database).
///
/// See [ECS Task Set section in AWS developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-external.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.TaskSet("example", {
/// service: exampleAwsEcsService.id,
/// cluster: exampleAwsEcsCluster.id,
/// taskDefinition: exampleAwsEcsTaskDefinition.arn,
/// loadBalancers: [{
/// targetGroupArn: exampleAwsLbTargetGroup.arn,
/// containerName: "mongo",
/// containerPort: 8080,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.TaskSet("example",
/// service=example_aws_ecs_service["id"],
/// cluster=example_aws_ecs_cluster["id"],
/// task_definition=example_aws_ecs_task_definition["arn"],
/// load_balancers=[{
/// "target_group_arn": example_aws_lb_target_group["arn"],
/// "container_name": "mongo",
/// "container_port": 8080,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.TaskSet("example", new()
/// {
/// Service = exampleAwsEcsService.Id,
/// Cluster = exampleAwsEcsCluster.Id,
/// TaskDefinition = exampleAwsEcsTaskDefinition.Arn,
/// LoadBalancers = new[]
/// {
/// new Aws.Ecs.Inputs.TaskSetLoadBalancerArgs
/// {
/// TargetGroupArn = exampleAwsLbTargetGroup.Arn,
/// ContainerName = "mongo",
/// ContainerPort = 8080,
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
/// _, err := ecs.NewTaskSet(ctx, "example", &ecs.TaskSetArgs{
/// Service:        pulumi.Any(exampleAwsEcsService.Id),
/// Cluster:        pulumi.Any(exampleAwsEcsCluster.Id),
/// TaskDefinition: pulumi.Any(exampleAwsEcsTaskDefinition.Arn),
/// LoadBalancers: ecs.TaskSetLoadBalancerArray{
/// &ecs.TaskSetLoadBalancerArgs{
/// TargetGroupArn: pulumi.Any(exampleAwsLbTargetGroup.Arn),
/// ContainerName:  pulumi.String("mongo"),
/// ContainerPort:  pulumi.Int(8080),
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
/// import com.pulumi.aws.ecs.TaskSet;
/// import com.pulumi.aws.ecs.TaskSetArgs;
/// import com.pulumi.aws.ecs.inputs.TaskSetLoadBalancerArgs;
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
/// var example = new TaskSet("example", TaskSetArgs.builder()
/// .service(exampleAwsEcsService.id())
/// .cluster(exampleAwsEcsCluster.id())
/// .taskDefinition(exampleAwsEcsTaskDefinition.arn())
/// .loadBalancers(TaskSetLoadBalancerArgs.builder()
/// .targetGroupArn(exampleAwsLbTargetGroup.arn())
/// .containerName("mongo")
/// .containerPort(8080)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:TaskSet
/// properties:
/// service: ${exampleAwsEcsService.id}
/// cluster: ${exampleAwsEcsCluster.id}
/// taskDefinition: ${exampleAwsEcsTaskDefinition.arn}
/// loadBalancers:
/// - targetGroupArn: ${exampleAwsLbTargetGroup.arn}
/// containerName: mongo
/// containerPort: 8080
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Ignoring Changes to Scale
///
/// You can utilize the generic resource lifecycle configuration block with <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to create an ECS service with an initial count of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.TaskSet("example", {scale: {
/// value: 50,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.TaskSet("example", scale={
/// "value": 50,
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
/// var example = new Aws.Ecs.TaskSet("example", new()
/// {
/// Scale = new Aws.Ecs.Inputs.TaskSetScaleArgs
/// {
/// Value = 50,
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
/// _, err := ecs.NewTaskSet(ctx, "example", &ecs.TaskSetArgs{
/// Scale: &ecs.TaskSetScaleArgs{
/// Value: pulumi.Float64(50),
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
/// import com.pulumi.aws.ecs.TaskSet;
/// import com.pulumi.aws.ecs.TaskSetArgs;
/// import com.pulumi.aws.ecs.inputs.TaskSetScaleArgs;
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
/// var example = new TaskSet("example", TaskSetArgs.builder()
/// .scale(TaskSetScaleArgs.builder()
/// .value(50.0)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:TaskSet
/// properties:
/// scale:
/// value: 50
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECS Task Sets using the <span pulumi-lang-nodejs="`taskSetId`" pulumi-lang-dotnet="`TaskSetId`" pulumi-lang-go="`taskSetId`" pulumi-lang-python="`task_set_id`" pulumi-lang-yaml="`taskSetId`" pulumi-lang-java="`taskSetId`">`task_set_id`</span>, <span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span>, and <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span> separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ecs/taskSet:TaskSet example ecs-svc/7177320696926227436,arn:aws:ecs:us-west-2:123456789101:service/example/example-1234567890,arn:aws:ecs:us-west-2:123456789101:cluster/example
/// ```
class TaskSet extends CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the task set.
  late final Output<String> arn;

  /// The capacity provider strategy to use for the service. Can be one or more.  Defined below.
  late final Output<List<TaskSetCapacityProviderStrategy>?>
      capacityProviderStrategies;

  /// The short name or ARN of the cluster that hosts the service to create the task set in.
  late final Output<String> cluster;

  /// The external ID associated with the task set.
  late final Output<String> externalId;

  /// Whether to allow deleting the task set without waiting for scaling down to 0. You can force a task set to delete even if it's in the process of scaling a resource. Normally, the provider drains all the tasks before deleting the task set. This bypasses that behavior and potentially leaves resources dangling.
  late final Output<bool?> forceDelete;

  /// The launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`.
  late final Output<String> launchType;

  /// Details on load balancers that are used with a task set. Detailed below.
  late final Output<List<TaskSetLoadBalancer>?> loadBalancers;

  /// The network configuration for the service. This parameter is required for task definitions that use the <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. Detailed below.
  late final Output<TaskSetNetworkConfiguration?> networkConfiguration;

  /// The platform version on which to run your service. Only applicable for <span pulumi-lang-nodejs="`launchType`" pulumi-lang-dotnet="`LaunchType`" pulumi-lang-go="`launchType`" pulumi-lang-python="`launch_type`" pulumi-lang-yaml="`launchType`" pulumi-lang-java="`launchType`">`launch_type`</span> set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  late final Output<String> platformVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A floating-point percentage of the desired number of tasks to place and keep running in the task set. Detailed below.
  late final Output<TaskSetScale> scale;

  /// The short name or ARN of the ECS service.
  late final Output<String> service;

  /// The service discovery registries for the service. The maximum number of <span pulumi-lang-nodejs="`serviceRegistries`" pulumi-lang-dotnet="`ServiceRegistries`" pulumi-lang-go="`serviceRegistries`" pulumi-lang-python="`service_registries`" pulumi-lang-yaml="`serviceRegistries`" pulumi-lang-java="`serviceRegistries`">`service_registries`</span> blocks is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Detailed below.
  late final Output<TaskSetServiceRegistries?> serviceRegistries;

  /// The stability status. This indicates whether the task set has reached a steady state.
  late final Output<String> stabilityStatus;

  /// The status of the task set.
  late final Output<String> status;

  /// A map of tags to assign to the file system. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set <span pulumi-lang-nodejs="`copyTagsToBackups`" pulumi-lang-dotnet="`CopyTagsToBackups`" pulumi-lang-go="`copyTagsToBackups`" pulumi-lang-python="`copy_tags_to_backups`" pulumi-lang-yaml="`copyTagsToBackups`" pulumi-lang-java="`copyTagsToBackups`">`copy_tags_to_backups`</span> to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service.
  ///
  /// The following arguments are optional:
  late final Output<String> taskDefinition;

  /// The ID of the task set.
  late final Output<String> taskSetId;

  /// Whether the provider should wait until the task set has reached `STEADY_STATE`.
  late final Output<bool?> waitUntilStable;

  /// Wait timeout for task set to reach `STEADY_STATE`. Valid time units include <span pulumi-lang-nodejs="`ns`" pulumi-lang-dotnet="`Ns`" pulumi-lang-go="`ns`" pulumi-lang-python="`ns`" pulumi-lang-yaml="`ns`" pulumi-lang-java="`ns`">`ns`</span>, <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span> (or `µs`), <span pulumi-lang-nodejs="`ms`" pulumi-lang-dotnet="`Ms`" pulumi-lang-go="`ms`" pulumi-lang-python="`ms`" pulumi-lang-yaml="`ms`" pulumi-lang-java="`ms`">`ms`</span>, <span pulumi-lang-nodejs="`s`" pulumi-lang-dotnet="`S`" pulumi-lang-go="`s`" pulumi-lang-python="`s`" pulumi-lang-yaml="`s`" pulumi-lang-java="`s`">`s`</span>, <span pulumi-lang-nodejs="`m`" pulumi-lang-dotnet="`M`" pulumi-lang-go="`m`" pulumi-lang-python="`m`" pulumi-lang-yaml="`m`" pulumi-lang-java="`m`">`m`</span>, and <span pulumi-lang-nodejs="`h`" pulumi-lang-dotnet="`H`" pulumi-lang-go="`h`" pulumi-lang-python="`h`" pulumi-lang-yaml="`h`" pulumi-lang-java="`h`">`h`</span>. Default <span pulumi-lang-nodejs="`10m`" pulumi-lang-dotnet="`10m`" pulumi-lang-go="`10m`" pulumi-lang-python="`10m`" pulumi-lang-yaml="`10m`" pulumi-lang-java="`10m`">`10m`</span>.
  late final Output<String?> waitUntilStableTimeout;

  TaskSet(
    String name, {
    TaskSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/taskSet:TaskSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.capacityProviderStrategies =
        Output.createUnknown<List<TaskSetCapacityProviderStrategy>?>();
    this.cluster = Output.createUnknown<String>();
    this.externalId = Output.createUnknown<String>();
    this.forceDelete = Output.createUnknown<bool?>();
    this.launchType = Output.createUnknown<String>();
    this.loadBalancers = Output.createUnknown<List<TaskSetLoadBalancer>?>();
    this.networkConfiguration =
        Output.createUnknown<TaskSetNetworkConfiguration?>();
    this.platformVersion = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.scale = Output.createUnknown<TaskSetScale>();
    this.service = Output.createUnknown<String>();
    this.serviceRegistries = Output.createUnknown<TaskSetServiceRegistries?>();
    this.stabilityStatus = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.taskDefinition = Output.createUnknown<String>();
    this.taskSetId = Output.createUnknown<String>();
    this.waitUntilStable = Output.createUnknown<bool?>();
    this.waitUntilStableTimeout = Output.createUnknown<String?>();
  }
}
