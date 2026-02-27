// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../task_set_capacity_provider_strategy/task_set_capacity_provider_strategy.dart';
import '../task_set_load_balancer/task_set_load_balancer.dart';
import '../task_set_network_configuration/task_set_network_configuration.dart';
import '../task_set_scale/task_set_scale.dart';
import '../task_set_service_registries/task_set_service_registries.dart';

/// The set of arguments for TaskSet.
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

  TaskSetArgs({
    this.capacityProviderStrategies,
    required this.cluster,
    this.externalId,
    this.forceDelete,
    this.launchType,
    this.loadBalancers,
    this.networkConfiguration,
    this.platformVersion,
    this.region,
    this.scale,
    required this.service,
    this.serviceRegistries,
    this.tags,
    required this.taskDefinition,
    this.waitUntilStable,
    this.waitUntilStableTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityProviderStrategiesValue = capacityProviderStrategies;
    if (capacityProviderStrategiesValue != null) {
      map['capacityProviderStrategies'] = pulumi.Input.mapOptionalInputValue<
              List<TaskSetCapacityProviderStrategy>,
              List<Map<String, dynamic>>>(
          capacityProviderStrategiesValue,
          (value) => pulumi.Input.encodeList<TaskSetCapacityProviderStrategy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['cluster'] = cluster;
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final launchTypeValue = launchType;
    if (launchTypeValue != null) {
      map['launchType'] = launchTypeValue;
    }
    final loadBalancersValue = loadBalancers;
    if (loadBalancersValue != null) {
      map['loadBalancers'] = pulumi.Input.mapOptionalInputValue<
              List<TaskSetLoadBalancer>, List<Map<String, dynamic>>>(
          loadBalancersValue,
          (value) => pulumi.Input.encodeList<TaskSetLoadBalancer,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkConfigurationValue = networkConfiguration;
    if (networkConfigurationValue != null) {
      map['networkConfiguration'] = pulumi.Input.mapOptionalInputValue<
              TaskSetNetworkConfiguration, Map<String, dynamic>>(
          networkConfigurationValue, (value) => value.toMap());
    }
    final platformVersionValue = platformVersion;
    if (platformVersionValue != null) {
      map['platformVersion'] = platformVersionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scaleValue = scale;
    if (scaleValue != null) {
      map['scale'] = pulumi.Input.mapOptionalInputValue<TaskSetScale,
          Map<String, dynamic>>(scaleValue, (value) => value.toMap());
    }
    map['service'] = service;
    final serviceRegistriesValue = serviceRegistries;
    if (serviceRegistriesValue != null) {
      map['serviceRegistries'] = pulumi.Input.mapOptionalInputValue<
              TaskSetServiceRegistries, Map<String, dynamic>>(
          serviceRegistriesValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['taskDefinition'] = taskDefinition;
    final waitUntilStableValue = waitUntilStable;
    if (waitUntilStableValue != null) {
      map['waitUntilStable'] = waitUntilStableValue;
    }
    final waitUntilStableTimeoutValue = waitUntilStableTimeout;
    if (waitUntilStableTimeoutValue != null) {
      map['waitUntilStableTimeout'] = waitUntilStableTimeoutValue;
    }
    return map;
  }

  factory TaskSetArgs.fromMap(Map<String, dynamic> map) {
    return TaskSetArgs(
      capacityProviderStrategies:
          pulumi.Input.asOptionalInput<List<TaskSetCapacityProviderStrategy>>(
              map['capacityProviderStrategies']),
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      externalId: pulumi.Input.asOptionalInput<String>(map['externalId']),
      forceDelete: pulumi.Input.asOptionalInput<bool>(map['forceDelete']),
      launchType: pulumi.Input.asOptionalInput<String>(map['launchType']),
      loadBalancers: pulumi.Input.asOptionalInput<List<TaskSetLoadBalancer>>(
          map['loadBalancers']),
      networkConfiguration:
          pulumi.Input.asOptionalInput<TaskSetNetworkConfiguration>(
              map['networkConfiguration']),
      platformVersion:
          pulumi.Input.asOptionalInput<String>(map['platformVersion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scale: pulumi.Input.asOptionalInput<TaskSetScale>(map['scale']),
      service: pulumi.Input.asInput<String>(map['service']),
      serviceRegistries: pulumi.Input.asOptionalInput<TaskSetServiceRegistries>(
          map['serviceRegistries']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskDefinition: pulumi.Input.asInput<String>(map['taskDefinition']),
      waitUntilStable:
          pulumi.Input.asOptionalInput<bool>(map['waitUntilStable']),
      waitUntilStableTimeout:
          pulumi.Input.asOptionalInput<String>(map['waitUntilStableTimeout']),
    );
  }
}
