// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../task_set_capacity_provider_strategy/task_set_capacity_provider_strategy.dart';
import '../task_set_load_balancer/task_set_load_balancer.dart';
import '../task_set_network_configuration/task_set_network_configuration.dart';
import '../task_set_scale/task_set_scale.dart';
import '../task_set_service_registries/task_set_service_registries.dart';

/// The set of arguments for TaskSet.
class TaskSetArgs {
  /// The capacity provider strategy to use for the service. Can be one or more.  Defined below.
  final Input<List<TaskSetCapacityProviderStrategy>>?
      capacityProviderStrategies;

  /// The short name or ARN of the cluster that hosts the service to create the task set in.
  final Input<String> cluster;

  /// The external ID associated with the task set.
  final Input<String>? externalId;

  /// Whether to allow deleting the task set without waiting for scaling down to 0. You can force a task set to delete even if it's in the process of scaling a resource. Normally, the provider drains all the tasks before deleting the task set. This bypasses that behavior and potentially leaves resources dangling.
  final Input<bool>? forceDelete;

  /// The launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`.
  final Input<String>? launchType;

  /// Details on load balancers that are used with a task set. Detailed below.
  final Input<List<TaskSetLoadBalancer>>? loadBalancers;

  /// The network configuration for the service. This parameter is required for task definitions that use the <span pulumi-lang-nodejs="`awsvpc`" pulumi-lang-dotnet="`Awsvpc`" pulumi-lang-go="`awsvpc`" pulumi-lang-python="`awsvpc`" pulumi-lang-yaml="`awsvpc`" pulumi-lang-java="`awsvpc`">`awsvpc`</span> network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. Detailed below.
  final Input<TaskSetNetworkConfiguration>? networkConfiguration;

  /// The platform version on which to run your service. Only applicable for <span pulumi-lang-nodejs="`launchType`" pulumi-lang-dotnet="`LaunchType`" pulumi-lang-go="`launchType`" pulumi-lang-python="`launch_type`" pulumi-lang-yaml="`launchType`" pulumi-lang-java="`launchType`">`launch_type`</span> set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  final Input<String>? platformVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A floating-point percentage of the desired number of tasks to place and keep running in the task set. Detailed below.
  final Input<TaskSetScale>? scale;

  /// The short name or ARN of the ECS service.
  final Input<String> service;

  /// The service discovery registries for the service. The maximum number of <span pulumi-lang-nodejs="`serviceRegistries`" pulumi-lang-dotnet="`ServiceRegistries`" pulumi-lang-go="`serviceRegistries`" pulumi-lang-python="`service_registries`" pulumi-lang-yaml="`serviceRegistries`" pulumi-lang-java="`serviceRegistries`">`service_registries`</span> blocks is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Detailed below.
  final Input<TaskSetServiceRegistries>? serviceRegistries;

  /// A map of tags to assign to the file system. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set <span pulumi-lang-nodejs="`copyTagsToBackups`" pulumi-lang-dotnet="`CopyTagsToBackups`" pulumi-lang-go="`copyTagsToBackups`" pulumi-lang-python="`copy_tags_to_backups`" pulumi-lang-yaml="`copyTagsToBackups`" pulumi-lang-java="`copyTagsToBackups`">`copy_tags_to_backups`</span> to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final Input<Map<String, String>>? tags;

  /// The family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service.
  ///
  /// The following arguments are optional:
  final Input<String> taskDefinition;

  /// Whether the provider should wait until the task set has reached `STEADY_STATE`.
  final Input<bool>? waitUntilStable;

  /// Wait timeout for task set to reach `STEADY_STATE`. Valid time units include <span pulumi-lang-nodejs="`ns`" pulumi-lang-dotnet="`Ns`" pulumi-lang-go="`ns`" pulumi-lang-python="`ns`" pulumi-lang-yaml="`ns`" pulumi-lang-java="`ns`">`ns`</span>, <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span> (or `µs`), <span pulumi-lang-nodejs="`ms`" pulumi-lang-dotnet="`Ms`" pulumi-lang-go="`ms`" pulumi-lang-python="`ms`" pulumi-lang-yaml="`ms`" pulumi-lang-java="`ms`">`ms`</span>, <span pulumi-lang-nodejs="`s`" pulumi-lang-dotnet="`S`" pulumi-lang-go="`s`" pulumi-lang-python="`s`" pulumi-lang-yaml="`s`" pulumi-lang-java="`s`">`s`</span>, <span pulumi-lang-nodejs="`m`" pulumi-lang-dotnet="`M`" pulumi-lang-go="`m`" pulumi-lang-python="`m`" pulumi-lang-yaml="`m`" pulumi-lang-java="`m`">`m`</span>, and <span pulumi-lang-nodejs="`h`" pulumi-lang-dotnet="`H`" pulumi-lang-go="`h`" pulumi-lang-python="`h`" pulumi-lang-yaml="`h`" pulumi-lang-java="`h`">`h`</span>. Default <span pulumi-lang-nodejs="`10m`" pulumi-lang-dotnet="`10m`" pulumi-lang-go="`10m`" pulumi-lang-python="`10m`" pulumi-lang-yaml="`10m`" pulumi-lang-java="`10m`">`10m`</span>.
  final Input<String>? waitUntilStableTimeout;

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
      map['capacityProviderStrategies'] = Input.mapOptionalInputValue<
              List<TaskSetCapacityProviderStrategy>,
              List<Map<String, dynamic>>>(
          capacityProviderStrategiesValue,
          (value) => Input.encodeList<TaskSetCapacityProviderStrategy,
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
      map['loadBalancers'] = Input.mapOptionalInputValue<
              List<TaskSetLoadBalancer>, List<Map<String, dynamic>>>(
          loadBalancersValue,
          (value) =>
              Input.encodeList<TaskSetLoadBalancer, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final networkConfigurationValue = networkConfiguration;
    if (networkConfigurationValue != null) {
      map['networkConfiguration'] = Input.mapOptionalInputValue<
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
      map['scale'] =
          Input.mapOptionalInputValue<TaskSetScale, Map<String, dynamic>>(
              scaleValue, (value) => value.toMap());
    }
    map['service'] = service;
    final serviceRegistriesValue = serviceRegistries;
    if (serviceRegistriesValue != null) {
      map['serviceRegistries'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<List<TaskSetCapacityProviderStrategy>>(
              map['capacityProviderStrategies']),
      cluster: Input.asInput<String>(map['cluster']),
      externalId: Input.asOptionalInput<String>(map['externalId']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      launchType: Input.asOptionalInput<String>(map['launchType']),
      loadBalancers: Input.asOptionalInput<List<TaskSetLoadBalancer>>(
          map['loadBalancers']),
      networkConfiguration: Input.asOptionalInput<TaskSetNetworkConfiguration>(
          map['networkConfiguration']),
      platformVersion: Input.asOptionalInput<String>(map['platformVersion']),
      region: Input.asOptionalInput<String>(map['region']),
      scale: Input.asOptionalInput<TaskSetScale>(map['scale']),
      service: Input.asInput<String>(map['service']),
      serviceRegistries: Input.asOptionalInput<TaskSetServiceRegistries>(
          map['serviceRegistries']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskDefinition: Input.asInput<String>(map['taskDefinition']),
      waitUntilStable: Input.asOptionalInput<bool>(map['waitUntilStable']),
      waitUntilStableTimeout:
          Input.asOptionalInput<String>(map['waitUntilStableTimeout']),
    );
  }
}
