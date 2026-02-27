// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_capacity_provider_strategy/get_service_capacity_provider_strategy.dart';
import '../get_service_deployment/get_service_deployment.dart';
import '../get_service_deployment_configuration/get_service_deployment_configuration.dart';
import '../get_service_deployment_controller/get_service_deployment_controller.dart';
import '../get_service_event/get_service_event.dart';
import '../get_service_load_balancer/get_service_load_balancer.dart';
import '../get_service_network_configuration/get_service_network_configuration.dart';
import '../get_service_ordered_placement_strategy/get_service_ordered_placement_strategy.dart';
import '../get_service_placement_constraint/get_service_placement_constraint.dart';
import '../get_service_service_registry/get_service_service_registry.dart';
import '../get_service_task_set/get_service_task_set.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// ARN of the task set
  final String arn;

  /// Whether Availability Zone rebalancing is enabled
  final String availabilityZoneRebalancing;

  /// Capacity provider strategy for the service. See `capacity_provider_strategy` Block for details.
  final List<GetServiceCapacityProviderStrategy> capacityProviderStrategies;
  final String clusterArn;

  /// Time when task set was created (RFC3339 format)
  final String createdAt;

  /// Principal that created the service
  final String createdBy;

  /// Deployment configuration for the service. See `deployment_configuration` Block for details.
  final List<GetServiceDeploymentConfiguration> deploymentConfigurations;

  /// Deployment controller configuration. See `deployment_controller` Block for details.
  final List<GetServiceDeploymentController> deploymentControllers;

  /// Current deployments for the service. See `deployments` Block for details.
  final List<GetServiceDeployment> deployments;

  /// Desired number of tasks
  final int desiredCount;

  /// Whether ECS managed tags are enabled
  final bool enableEcsManagedTags;

  /// Whether execute command functionality is enabled
  final bool enableExecuteCommand;

  /// Recent service events. See `events` Block for details.
  final List<GetServiceEvent> events;

  /// Grace period for health checks
  final int healthCheckGracePeriodSeconds;

  /// ARN of the IAM role associated with the service
  final String iamRole;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Launch type for the ECS Service
  final String launchType;

  /// Load balancers for the ECS Service. See `load_balancer` Block for details.
  final List<GetServiceLoadBalancer> loadBalancers;

  /// Network configuration for the service. See `network_configuration` Block for details.
  final List<GetServiceNetworkConfiguration> networkConfigurations;

  /// Placement strategy for tasks. See `ordered_placement_strategy` Block for details.
  final List<GetServiceOrderedPlacementStrategy> orderedPlacementStrategies;

  /// Number of pending tasks
  final int pendingCount;

  /// Placement constraints for tasks. See `placement_constraints` Block for details.
  final List<GetServicePlacementConstraint> placementConstraints;

  /// Platform family for Fargate tasks
  final String platformFamily;

  /// Platform version for Fargate tasks
  final String platformVersion;

  /// Whether tags are propagated from task definition or service
  final String propagateTags;
  final String region;

  /// Number of running tasks
  final int runningCount;

  /// Scheduling strategy for the ECS Service
  final String schedulingStrategy;
  final String serviceName;

  /// Service discovery registries. See `service_registries` Block for details.
  final List<GetServiceServiceRegistry> serviceRegistries;

  /// Task set status
  final String status;

  /// Resource tags.
  final Map<String, String> tags;

  /// Task definition ARN
  final String taskDefinition;

  /// Task sets for the service. See `task_sets` Block for details.
  final List<GetServiceTaskSet> taskSets;

  GetServiceResult({
    required this.arn,
    required this.availabilityZoneRebalancing,
    required this.capacityProviderStrategies,
    required this.clusterArn,
    required this.createdAt,
    required this.createdBy,
    required this.deploymentConfigurations,
    required this.deploymentControllers,
    required this.deployments,
    required this.desiredCount,
    required this.enableEcsManagedTags,
    required this.enableExecuteCommand,
    required this.events,
    required this.healthCheckGracePeriodSeconds,
    required this.iamRole,
    required this.id,
    required this.launchType,
    required this.loadBalancers,
    required this.networkConfigurations,
    required this.orderedPlacementStrategies,
    required this.pendingCount,
    required this.placementConstraints,
    required this.platformFamily,
    required this.platformVersion,
    required this.propagateTags,
    required this.region,
    required this.runningCount,
    required this.schedulingStrategy,
    required this.serviceName,
    required this.serviceRegistries,
    required this.status,
    required this.tags,
    required this.taskDefinition,
    required this.taskSets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['availabilityZoneRebalancing'] = availabilityZoneRebalancing;
    map['capacityProviderStrategies'] = Input.encodeList<
            GetServiceCapacityProviderStrategy, Map<String, dynamic>>(
        capacityProviderStrategies, (value) => value.toMap());
    map['clusterArn'] = clusterArn;
    map['createdAt'] = createdAt;
    map['createdBy'] = createdBy;
    map['deploymentConfigurations'] = Input.encodeList<
            GetServiceDeploymentConfiguration, Map<String, dynamic>>(
        deploymentConfigurations, (value) => value.toMap());
    map['deploymentControllers'] =
        Input.encodeList<GetServiceDeploymentController, Map<String, dynamic>>(
            deploymentControllers, (value) => value.toMap());
    map['deployments'] =
        Input.encodeList<GetServiceDeployment, Map<String, dynamic>>(
            deployments, (value) => value.toMap());
    map['desiredCount'] = desiredCount;
    map['enableEcsManagedTags'] = enableEcsManagedTags;
    map['enableExecuteCommand'] = enableExecuteCommand;
    map['events'] = Input.encodeList<GetServiceEvent, Map<String, dynamic>>(
        events, (value) => value.toMap());
    map['healthCheckGracePeriodSeconds'] = healthCheckGracePeriodSeconds;
    map['iamRole'] = iamRole;
    map['id'] = id;
    map['launchType'] = launchType;
    map['loadBalancers'] =
        Input.encodeList<GetServiceLoadBalancer, Map<String, dynamic>>(
            loadBalancers, (value) => value.toMap());
    map['networkConfigurations'] =
        Input.encodeList<GetServiceNetworkConfiguration, Map<String, dynamic>>(
            networkConfigurations, (value) => value.toMap());
    map['orderedPlacementStrategies'] = Input.encodeList<
            GetServiceOrderedPlacementStrategy, Map<String, dynamic>>(
        orderedPlacementStrategies, (value) => value.toMap());
    map['pendingCount'] = pendingCount;
    map['placementConstraints'] =
        Input.encodeList<GetServicePlacementConstraint, Map<String, dynamic>>(
            placementConstraints, (value) => value.toMap());
    map['platformFamily'] = platformFamily;
    map['platformVersion'] = platformVersion;
    map['propagateTags'] = propagateTags;
    map['region'] = region;
    map['runningCount'] = runningCount;
    map['schedulingStrategy'] = schedulingStrategy;
    map['serviceName'] = serviceName;
    map['serviceRegistries'] =
        Input.encodeList<GetServiceServiceRegistry, Map<String, dynamic>>(
            serviceRegistries, (value) => value.toMap());
    map['status'] = status;
    map['tags'] = tags;
    map['taskDefinition'] = taskDefinition;
    map['taskSets'] = Input.encodeList<GetServiceTaskSet, Map<String, dynamic>>(
        taskSets, (value) => value.toMap());
    return map;
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      arn: map['arn'] as String,
      availabilityZoneRebalancing: map['availabilityZoneRebalancing'] as String,
      capacityProviderStrategies:
          Input.decodeList<GetServiceCapacityProviderStrategy>(
              map['capacityProviderStrategies'],
              (value) => GetServiceCapacityProviderStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clusterArn: map['clusterArn'] as String,
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      deploymentConfigurations:
          Input.decodeList<GetServiceDeploymentConfiguration>(
              map['deploymentConfigurations'],
              (value) => GetServiceDeploymentConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deploymentControllers: Input.decodeList<GetServiceDeploymentController>(
          map['deploymentControllers'],
          (value) => GetServiceDeploymentController.fromMap(
              (value as Map).cast<String, dynamic>())),
      deployments: Input.decodeList<GetServiceDeployment>(
          map['deployments'],
          (value) => GetServiceDeployment.fromMap(
              (value as Map).cast<String, dynamic>())),
      desiredCount: map['desiredCount'] as int,
      enableEcsManagedTags: map['enableEcsManagedTags'] as bool,
      enableExecuteCommand: map['enableExecuteCommand'] as bool,
      events: Input.decodeList<GetServiceEvent>(
          map['events'],
          (value) =>
              GetServiceEvent.fromMap((value as Map).cast<String, dynamic>())),
      healthCheckGracePeriodSeconds:
          map['healthCheckGracePeriodSeconds'] as int,
      iamRole: map['iamRole'] as String,
      id: map['id'] as String,
      launchType: map['launchType'] as String,
      loadBalancers: Input.decodeList<GetServiceLoadBalancer>(
          map['loadBalancers'],
          (value) => GetServiceLoadBalancer.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkConfigurations: Input.decodeList<GetServiceNetworkConfiguration>(
          map['networkConfigurations'],
          (value) => GetServiceNetworkConfiguration.fromMap(
              (value as Map).cast<String, dynamic>())),
      orderedPlacementStrategies:
          Input.decodeList<GetServiceOrderedPlacementStrategy>(
              map['orderedPlacementStrategies'],
              (value) => GetServiceOrderedPlacementStrategy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pendingCount: map['pendingCount'] as int,
      placementConstraints: Input.decodeList<GetServicePlacementConstraint>(
          map['placementConstraints'],
          (value) => GetServicePlacementConstraint.fromMap(
              (value as Map).cast<String, dynamic>())),
      platformFamily: map['platformFamily'] as String,
      platformVersion: map['platformVersion'] as String,
      propagateTags: map['propagateTags'] as String,
      region: map['region'] as String,
      runningCount: map['runningCount'] as int,
      schedulingStrategy: map['schedulingStrategy'] as String,
      serviceName: map['serviceName'] as String,
      serviceRegistries: Input.decodeList<GetServiceServiceRegistry>(
          map['serviceRegistries'],
          (value) => GetServiceServiceRegistry.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      taskDefinition: map['taskDefinition'] as String,
      taskSets: Input.decodeList<GetServiceTaskSet>(
          map['taskSets'],
          (value) => GetServiceTaskSet.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
