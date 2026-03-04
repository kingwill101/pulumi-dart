// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_set_capacity_provider_strategy.dart';
import 'task_set_load_balancer.dart';
import 'task_set_network_configuration.dart';
import 'task_set_scale.dart';
import 'task_set_service_registries.dart';

/// Input properties used for looking up and filtering TaskSet resources.
class TaskSetState {
  /// The Amazon Resource Name (ARN) that identifies the task set.
  final pulumi.Input<String>? arn;

  /// The capacity provider strategy to use for the service. Can be one or more.  Defined below.
  final pulumi.Input<List<TaskSetCapacityProviderStrategy>>?
  capacityProviderStrategies;

  /// The short name or ARN of the cluster that hosts the service to create the task set in.
  final pulumi.Input<String>? cluster;

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
  final pulumi.Input<String>? service;

  /// The service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. Detailed below.
  final pulumi.Input<TaskSetServiceRegistries>? serviceRegistries;

  /// The stability status. This indicates whether the task set has reached a steady state.
  final pulumi.Input<String>? stabilityStatus;

  /// The status of the task set.
  final pulumi.Input<String>? status;

  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? taskDefinition;

  /// The ID of the task set.
  final pulumi.Input<String>? taskSetId;

  /// Whether the provider should wait until the task set has reached `STEADY_STATE`.
  final pulumi.Input<bool>? waitUntilStable;

  /// Wait timeout for task set to reach `STEADY_STATE`. Valid time units include `ns`, `us` (or `µs`), `ms`, `s`, `m`, and `h`. Default `10m`.
  final pulumi.Input<String>? waitUntilStableTimeout;

  /// Creates a new [TaskSetState].
  /// [arn] The Amazon Resource Name (ARN) that identifies the task set.
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
  /// [stabilityStatus] The stability status. This indicates whether the task set has reached a steady state.
  /// [status] The status of the task set.
  /// [tags] A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [taskDefinition] The family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service.
  /// [taskSetId] The ID of the task set.
  /// [waitUntilStable] Whether the provider should wait until the task set has reached `STEADY_STATE`.
  /// [waitUntilStableTimeout] Wait timeout for task set to reach `STEADY_STATE`. Valid time units include `ns`, `us` (or `µs`), `ms`, `s`, `m`, and `h`. Default `10m`.
  TaskSetState({
    this.arn,
    this.capacityProviderStrategies,
    this.cluster,
    this.externalId,
    this.forceDelete,
    this.launchType,
    this.loadBalancers,
    this.networkConfiguration,
    this.platformVersion,
    this.region,
    this.scale,
    this.service,
    this.serviceRegistries,
    this.stabilityStatus,
    this.status,
    this.tags,
    this.tagsAll,
    this.taskDefinition,
    this.taskSetId,
    this.waitUntilStable,
    this.waitUntilStableTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
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
      'cluster': ?cluster,
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
      'service': ?service,
      'serviceRegistries':
          ?pulumi.Input.mapOptionalInputValue<
            TaskSetServiceRegistries,
            Map<String, dynamic>
          >(serviceRegistries, (value) => value.toMap()),
      'stabilityStatus': ?stabilityStatus,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taskDefinition': ?taskDefinition,
      'taskSetId': ?taskSetId,
      'waitUntilStable': ?waitUntilStable,
      'waitUntilStableTimeout': ?waitUntilStableTimeout,
    };
  }

  factory TaskSetState.fromMap(Map<String, dynamic> map) {
    return TaskSetState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      capacityProviderStrategies: (() {
        final guardedValue = map['capacityProviderStrategies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TaskSetCapacityProviderStrategy>(
            guardedValue,
            (value) => TaskSetCapacityProviderStrategy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalId: (() {
        final guardedValue = map['externalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceDelete: (() {
        final guardedValue = map['forceDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      launchType: (() {
        final guardedValue = map['launchType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancers: (() {
        final guardedValue = map['loadBalancers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TaskSetLoadBalancer>(
            guardedValue,
            (value) => TaskSetLoadBalancer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      networkConfiguration: (() {
        final guardedValue = map['networkConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskSetNetworkConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      platformVersion: (() {
        final guardedValue = map['platformVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scale: (() {
        final guardedValue = map['scale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskSetScale.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceRegistries: (() {
        final guardedValue = map['serviceRegistries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskSetServiceRegistries.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stabilityStatus: (() {
        final guardedValue = map['stabilityStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      taskDefinition: (() {
        final guardedValue = map['taskDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      taskSetId: (() {
        final guardedValue = map['taskSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitUntilStable: (() {
        final guardedValue = map['waitUntilStable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      waitUntilStableTimeout: (() {
        final guardedValue = map['waitUntilStableTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
