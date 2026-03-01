// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_set_capacity_provider_strategy.dart';
import 'task_set_load_balancer.dart';
import 'task_set_network_configuration.dart';
import 'task_set_scale.dart';
import 'task_set_service_registries.dart';

/// {@template pulumi_ecs_task_set_task_set_args_doc}
/// The set of arguments for TaskSet.
/// {@endtemplate}
/// {@macro pulumi_ecs_task_set_task_set_args_doc}
class TaskSetArgs {
  /// The capacity provider strategy to use for the service. Can be one or more.  Defined below.
  final pulumi.Input<List<TaskSetCapacityProviderStrategy>>?
  capacityProviderStrategies;

  /// The short name or ARN of the cluster that hosts the service to create the task set in.
  final pulumi.Input<String> cluster;

  /// The external ID associated with the task set.
  final pulumi.Input<String>? externalId;

  /// Whether to allow deleting the task set without waiting for scaling down to 0. You can force a task set to delete even if it's in the process of scaling a resource. Normally, the provider drains all the tasks before deleting the task set. This bypasses that behavior and potentially leaves resources dangling.
  final pulumi.Input<bool>? forceDelete;

  /// The launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`.
  final pulumi.Input<String>? launchType;

  /// Details on load balancers that are used with a task set. Detailed below.
  final pulumi.Input<List<TaskSetLoadBalancer>>? loadBalancers;

  /// The network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. Detailed below.
  final pulumi.Input<TaskSetNetworkConfiguration>? networkConfiguration;

  /// The platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  final pulumi.Input<String>? platformVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A floating-point percentage of the desired number of tasks to place and keep running in the task set. Detailed below.
  final pulumi.Input<TaskSetScale>? scale;

  /// The short name or ARN of the ECS service.
  final pulumi.Input<String> service;

  /// The service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. Detailed below.
  final pulumi.Input<TaskSetServiceRegistries>? serviceRegistries;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>>? tags;

  /// The family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> taskDefinition;

  /// Whether the provider should wait until the task set has reached `STEADY_STATE`.
  final pulumi.Input<bool>? waitUntilStable;

  /// Wait timeout for task set to reach `STEADY_STATE`. Valid time units include `ns`, `us` (or `µs`), `ms`, `s`, `m`, and `h`. Default `10m`.
  final pulumi.Input<String>? waitUntilStableTimeout;

  /// Creates a new [TaskSetArgs].
  /// [capacityProviderStrategies] The capacity provider strategy to use for the service. Can be one or more.  Defined below.
  /// [cluster] The short name or ARN of the cluster that hosts the service to create the task set in.
  /// [externalId] The external ID associated with the task set.
  /// [forceDelete] Whether to allow deleting the task set without waiting for scaling down to 0. You can force a task set to delete even if it's in the process of scaling a resource. Normally, the provider drains all the tasks before deleting the task set. This bypasses that behavior and potentially leaves resources dangling.
  /// [launchType] The launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`.
  /// [loadBalancers] Details on load balancers that are used with a task set. Detailed below.
  /// [networkConfiguration] The network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. Detailed below.
  /// [platformVersion] The platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scale] A floating-point percentage of the desired number of tasks to place and keep running in the task set. Detailed below.
  /// [service] The short name or ARN of the ECS service.
  /// [serviceRegistries] The service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. Detailed below.
  /// [tags] A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [taskDefinition] The family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service.
  /// [waitUntilStable] Whether the provider should wait until the task set has reached `STEADY_STATE`.
  /// [waitUntilStableTimeout] Wait timeout for task set to reach `STEADY_STATE`. Valid time units include `ns`, `us` (or `µs`), `ms`, `s`, `m`, and `h`. Default `10m`.
  TaskSetArgs({
    List<TaskSetCapacityProviderStrategy>? capacityProviderStrategies,
    required String cluster,
    String? externalId,
    bool? forceDelete,
    String? launchType,
    List<TaskSetLoadBalancer>? loadBalancers,
    TaskSetNetworkConfiguration? networkConfiguration,
    String? platformVersion,
    String? region,
    TaskSetScale? scale,
    required String service,
    TaskSetServiceRegistries? serviceRegistries,
    Map<String, String>? tags,
    required String taskDefinition,
    bool? waitUntilStable,
    String? waitUntilStableTimeout,
  }) : capacityProviderStrategies =
           pulumi.Input.asOptionalInput<List<TaskSetCapacityProviderStrategy>>(
             capacityProviderStrategies,
           ),
       cluster = pulumi.Input.asInput<String>(cluster),
       externalId = pulumi.Input.asOptionalInput<String>(externalId),
       forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
       launchType = pulumi.Input.asOptionalInput<String>(launchType),
       loadBalancers = pulumi.Input.asOptionalInput<List<TaskSetLoadBalancer>>(
         loadBalancers,
       ),
       networkConfiguration =
           pulumi.Input.asOptionalInput<TaskSetNetworkConfiguration>(
             networkConfiguration,
           ),
       platformVersion = pulumi.Input.asOptionalInput<String>(platformVersion),
       region = pulumi.Input.asOptionalInput<String>(region),
       scale = pulumi.Input.asOptionalInput<TaskSetScale>(scale),
       service = pulumi.Input.asInput<String>(service),
       serviceRegistries = pulumi
           .Input.asOptionalInput<TaskSetServiceRegistries>(serviceRegistries),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       taskDefinition = pulumi.Input.asInput<String>(taskDefinition),
       waitUntilStable = pulumi.Input.asOptionalInput<bool>(waitUntilStable),
       waitUntilStableTimeout = pulumi.Input.asOptionalInput<String>(
         waitUntilStableTimeout,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderStrategies':
          ?pulumi.Input.mapOptionalInputValue<
            List<TaskSetCapacityProviderStrategy>,
            List<Map<String, dynamic>>
          >(
            capacityProviderStrategies,
            (value) =>
                pulumi.Input.encodeList<
                  TaskSetCapacityProviderStrategy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cluster': cluster,
      'externalId': ?externalId,
      'forceDelete': ?forceDelete,
      'launchType': ?launchType,
      'loadBalancers':
          ?pulumi.Input.mapOptionalInputValue<
            List<TaskSetLoadBalancer>,
            List<Map<String, dynamic>>
          >(
            loadBalancers,
            (value) =>
                pulumi.Input.encodeList<
                  TaskSetLoadBalancer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            TaskSetNetworkConfiguration,
            Map<String, dynamic>
          >(networkConfiguration, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'region': ?region,
      'scale':
          ?pulumi.Input.mapOptionalInputValue<
            TaskSetScale,
            Map<String, dynamic>
          >(scale, (value) => value.toMap()),
      'service': service,
      'serviceRegistries':
          ?pulumi.Input.mapOptionalInputValue<
            TaskSetServiceRegistries,
            Map<String, dynamic>
          >(serviceRegistries, (value) => value.toMap()),
      'tags': ?tags,
      'taskDefinition': taskDefinition,
      'waitUntilStable': ?waitUntilStable,
      'waitUntilStableTimeout': ?waitUntilStableTimeout,
    };
  }

  factory TaskSetArgs.fromMap(Map<String, dynamic> map) {
    return TaskSetArgs(
      capacityProviderStrategies: map['capacityProviderStrategies'] == null
          ? null
          : pulumi.Input.decodeList<TaskSetCapacityProviderStrategy>(
              map['capacityProviderStrategies'],
              (value) => TaskSetCapacityProviderStrategy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      cluster: map['cluster'] as String,
      externalId: map['externalId'] == null
          ? null
          : map['externalId'] as String,
      forceDelete: map['forceDelete'] == null
          ? null
          : map['forceDelete'] as bool,
      launchType: map['launchType'] == null
          ? null
          : map['launchType'] as String,
      loadBalancers: map['loadBalancers'] == null
          ? null
          : pulumi.Input.decodeList<TaskSetLoadBalancer>(
              map['loadBalancers'],
              (value) => TaskSetLoadBalancer.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      networkConfiguration: map['networkConfiguration'] == null
          ? null
          : TaskSetNetworkConfiguration.fromMap(
              (map['networkConfiguration'] as Map).cast<String, dynamic>(),
            ),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scale: map['scale'] == null
          ? null
          : TaskSetScale.fromMap((map['scale'] as Map).cast<String, dynamic>()),
      service: map['service'] as String,
      serviceRegistries: map['serviceRegistries'] == null
          ? null
          : TaskSetServiceRegistries.fromMap(
              (map['serviceRegistries'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taskDefinition: map['taskDefinition'] as String,
      waitUntilStable: map['waitUntilStable'] == null
          ? null
          : map['waitUntilStable'] as bool,
      waitUntilStableTimeout: map['waitUntilStableTimeout'] == null
          ? null
          : map['waitUntilStableTimeout'] as String,
    );
  }
}
