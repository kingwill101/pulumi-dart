import 'package:pulumi/pulumi.dart' as pulumi;
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
///
///
/// ### Ignoring Changes to Scale
///
/// You can utilize the generic resource lifecycle configuration block with `ignore_changes` to create an ECS service with an initial count of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
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
            'capacityProviderStrategies');
    this.cluster = registerOutput<String>('cluster');
    this.externalId = registerOutput<String>('externalId');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.launchType = registerOutput<String>('launchType');
    this.loadBalancers =
        registerOutput<List<TaskSetLoadBalancer>?>('loadBalancers');
    this.networkConfiguration =
        registerOutput<TaskSetNetworkConfiguration?>('networkConfiguration');
    this.platformVersion = registerOutput<String>('platformVersion');
    this.region = registerOutput<String>('region');
    this.scale = registerOutput<TaskSetScale>('scale');
    this.service = registerOutput<String>('service');
    this.serviceRegistries =
        registerOutput<TaskSetServiceRegistries?>('serviceRegistries');
    this.stabilityStatus = registerOutput<String>('stabilityStatus');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taskDefinition = registerOutput<String>('taskDefinition');
    this.taskSetId = registerOutput<String>('taskSetId');
    this.waitUntilStable = registerOutput<bool?>('waitUntilStable');
    this.waitUntilStableTimeout =
        registerOutput<String?>('waitUntilStableTimeout');
  }
}
