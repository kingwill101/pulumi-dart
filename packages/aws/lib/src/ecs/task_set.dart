import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_set_args.dart';
import 'task_set_capacity_provider_strategy.dart';
import 'task_set_load_balancer.dart';
import 'task_set_network_configuration.dart';
import 'task_set_scale.dart';
import 'task_set_service_registries.dart';

/// Provides an ECS task set - effectively a task that is expected to run until an error occurs or a user terminates it (typically a webserver or a database).
///
/// See [ECS Task Set section in AWS developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-external.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.TaskSet("example", {
///     service: exampleAwsEcsService.id,
///     cluster: exampleAwsEcsCluster.id,
///     taskDefinition: exampleAwsEcsTaskDefinition.arn,
///     loadBalancers: [{
///         targetGroupArn: exampleAwsLbTargetGroup.arn,
///         containerName: "mongo",
///         containerPort: 8080,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.TaskSet("example",
///     service=example_aws_ecs_service["id"],
///     cluster=example_aws_ecs_cluster["id"],
///     task_definition=example_aws_ecs_task_definition["arn"],
///     load_balancers=[{
///         "target_group_arn": example_aws_lb_target_group["arn"],
///         "container_name": "mongo",
///         "container_port": 8080,
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
///     var example = new Aws.Ecs.TaskSet("example", new()
///     {
///         Service = exampleAwsEcsService.Id,
///         Cluster = exampleAwsEcsCluster.Id,
///         TaskDefinition = exampleAwsEcsTaskDefinition.Arn,
///         LoadBalancers = new[]
///         {
///             new Aws.Ecs.Inputs.TaskSetLoadBalancerArgs
///             {
///                 TargetGroupArn = exampleAwsLbTargetGroup.Arn,
///                 ContainerName = "mongo",
///                 ContainerPort = 8080,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewTaskSet(ctx, "example", &ecs.TaskSetArgs{
/// 			Service:        pulumi.Any(exampleAwsEcsService.Id),
/// 			Cluster:        pulumi.Any(exampleAwsEcsCluster.Id),
/// 			TaskDefinition: pulumi.Any(exampleAwsEcsTaskDefinition.Arn),
/// 			LoadBalancers: ecs.TaskSetLoadBalancerArray{
/// 				&ecs.TaskSetLoadBalancerArgs{
/// 					TargetGroupArn: pulumi.Any(exampleAwsLbTargetGroup.Arn),
/// 					ContainerName:  pulumi.String("mongo"),
/// 					ContainerPort:  pulumi.Int(8080),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new TaskSet("example", TaskSetArgs.builder()
///             .service(exampleAwsEcsService.id())
///             .cluster(exampleAwsEcsCluster.id())
///             .taskDefinition(exampleAwsEcsTaskDefinition.arn())
///             .loadBalancers(TaskSetLoadBalancerArgs.builder()
///                 .targetGroupArn(exampleAwsLbTargetGroup.arn())
///                 .containerName("mongo")
///                 .containerPort(8080)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:TaskSet
///     properties:
///       service: ${exampleAwsEcsService.id}
///       cluster: ${exampleAwsEcsCluster.id}
///       taskDefinition: ${exampleAwsEcsTaskDefinition.arn}
///       loadBalancers:
///         - targetGroupArn: ${exampleAwsLbTargetGroup.arn}
///           containerName: mongo
///           containerPort: 8080
/// ```
///
///
/// ### Ignoring Changes to Scale
///
/// You can utilize the generic resource lifecycle configuration block with `ignore_changes` to create an ECS service with an initial count of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.TaskSet("example", {scale: {
///     value: 50,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.TaskSet("example", scale={
///     "value": 50,
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
///     var example = new Aws.Ecs.TaskSet("example", new()
///     {
///         Scale = new Aws.Ecs.Inputs.TaskSetScaleArgs
///         {
///             Value = 50,
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
/// 		_, err := ecs.NewTaskSet(ctx, "example", &ecs.TaskSetArgs{
/// 			Scale: &ecs.TaskSetScaleArgs{
/// 				Value: pulumi.Float64(50),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new TaskSet("example", TaskSetArgs.builder()
///             .scale(TaskSetScaleArgs.builder()
///                 .value(50.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:TaskSet
///     properties:
///       scale:
///         value: 50
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ECS Task Sets using the `task_set_id`, `service`, and `cluster` separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ecs/taskSet:TaskSet example ecs-svc/7177320696926227436,arn:aws:ecs:us-west-2:123456789101:service/example/example-1234567890,arn:aws:ecs:us-west-2:123456789101:cluster/example
/// ```
class TaskSet extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the task set.
  late final pulumi.Output<String> arn;

  /// The capacity provider strategy to use for the service. Can be one or more.  Defined below.
  late final pulumi.Output<List<TaskSetCapacityProviderStrategy>?>
  capacityProviderStrategies;

  /// The short name or ARN of the cluster that hosts the service to create the task set in.
  late final pulumi.Output<String> cluster;

  /// The external ID associated with the task set.
  late final pulumi.Output<String> externalId;

  /// Whether to allow deleting the task set without waiting for scaling down to 0. You can force a task set to delete even if it's in the process of scaling a resource. Normally, the provider drains all the tasks before deleting the task set. This bypasses that behavior and potentially leaves resources dangling.
  late final pulumi.Output<bool?> forceDelete;

  /// The launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`.
  late final pulumi.Output<String> launchType;

  /// Details on load balancers that are used with a task set. Detailed below.
  late final pulumi.Output<List<TaskSetLoadBalancer>?> loadBalancers;

  /// The network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. Detailed below.
  late final pulumi.Output<TaskSetNetworkConfiguration?> networkConfiguration;

  /// The platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  late final pulumi.Output<String> platformVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A floating-point percentage of the desired number of tasks to place and keep running in the task set. Detailed below.
  late final pulumi.Output<TaskSetScale> scale;

  /// The short name or ARN of the ECS service.
  late final pulumi.Output<String> service;

  /// The service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. Detailed below.
  late final pulumi.Output<TaskSetServiceRegistries?> serviceRegistries;

  /// The stability status. This indicates whether the task set has reached a steady state.
  late final pulumi.Output<String> stabilityStatus;

  /// The status of the task set.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> taskDefinition;

  /// The ID of the task set.
  late final pulumi.Output<String> taskSetId;

  /// Whether the provider should wait until the task set has reached `STEADY_STATE`.
  late final pulumi.Output<bool?> waitUntilStable;

  /// Wait timeout for task set to reach `STEADY_STATE`. Valid time units include `ns`, `us` (or `µs`), `ms`, `s`, `m`, and `h`. Default `10m`.
  late final pulumi.Output<String?> waitUntilStableTimeout;

  /// Creates a new [TaskSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TaskSet]. {@macro pulumi_ecs_task_set_task_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TaskSet(
    String name, {
    TaskSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ecs/taskSet:TaskSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.capacityProviderStrategies =
        registerOutput<List<TaskSetCapacityProviderStrategy>?>(
          'capacityProviderStrategies',
        );
    this.cluster = registerOutput<String>('cluster');
    this.externalId = registerOutput<String>('externalId');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.launchType = registerOutput<String>('launchType');
    this.loadBalancers = registerOutput<List<TaskSetLoadBalancer>?>(
      'loadBalancers',
    );
    this.networkConfiguration = registerOutput<TaskSetNetworkConfiguration?>(
      'networkConfiguration',
    );
    this.platformVersion = registerOutput<String>('platformVersion');
    this.region = registerOutput<String>('region');
    this.scale = registerOutput<TaskSetScale>('scale');
    this.service = registerOutput<String>('service');
    this.serviceRegistries = registerOutput<TaskSetServiceRegistries?>(
      'serviceRegistries',
    );
    this.stabilityStatus = registerOutput<String>('stabilityStatus');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taskDefinition = registerOutput<String>('taskDefinition');
    this.taskSetId = registerOutput<String>('taskSetId');
    this.waitUntilStable = registerOutput<bool?>('waitUntilStable');
    this.waitUntilStableTimeout = registerOutput<String?>(
      'waitUntilStableTimeout',
    );
  }
}
