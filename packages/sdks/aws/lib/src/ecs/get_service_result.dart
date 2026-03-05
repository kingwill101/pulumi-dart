// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_capacity_provider_strategy.dart';
import 'get_service_deployment.dart';
import 'get_service_deployment_configuration.dart';
import 'get_service_deployment_controller.dart';
import 'get_service_event.dart';
import 'get_service_load_balancer.dart';
import 'get_service_network_configuration.dart';
import 'get_service_ordered_placement_strategy.dart';
import 'get_service_placement_constraint.dart';
import 'get_service_service_registry.dart';
import 'get_service_task_set.dart';

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

  /// Creates a new [GetServiceResult].
  /// [arn] ARN of the task set
  /// [availabilityZoneRebalancing] Whether Availability Zone rebalancing is enabled
  /// [capacityProviderStrategies] Capacity provider strategy for the service. See `capacity_provider_strategy` Block for details.
  /// [clusterArn] Required.
  /// [createdAt] Time when task set was created (RFC3339 format)
  /// [createdBy] Principal that created the service
  /// [deploymentConfigurations] Deployment configuration for the service. See `deployment_configuration` Block for details.
  /// [deploymentControllers] Deployment controller configuration. See `deployment_controller` Block for details.
  /// [deployments] Current deployments for the service. See `deployments` Block for details.
  /// [desiredCount] Desired number of tasks
  /// [enableEcsManagedTags] Whether ECS managed tags are enabled
  /// [enableExecuteCommand] Whether execute command functionality is enabled
  /// [events] Recent service events. See `events` Block for details.
  /// [healthCheckGracePeriodSeconds] Grace period for health checks
  /// [iamRole] ARN of the IAM role associated with the service
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [launchType] Launch type for the ECS Service
  /// [loadBalancers] Load balancers for the ECS Service. See `load_balancer` Block for details.
  /// [networkConfigurations] Network configuration for the service. See `network_configuration` Block for details.
  /// [orderedPlacementStrategies] Placement strategy for tasks. See `ordered_placement_strategy` Block for details.
  /// [pendingCount] Number of pending tasks
  /// [placementConstraints] Placement constraints for tasks. See `placement_constraints` Block for details.
  /// [platformFamily] Platform family for Fargate tasks
  /// [platformVersion] Platform version for Fargate tasks
  /// [propagateTags] Whether tags are propagated from task definition or service
  /// [region] Required.
  /// [runningCount] Number of running tasks
  /// [schedulingStrategy] Scheduling strategy for the ECS Service
  /// [serviceName] Required.
  /// [serviceRegistries] Service discovery registries. See `service_registries` Block for details.
  /// [status] Task set status
  /// [tags] Resource tags.
  /// [taskDefinition] Task definition ARN
  /// [taskSets] Task sets for the service. See `task_sets` Block for details.
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
    return <String, dynamic>{
      'arn': arn,
      'availabilityZoneRebalancing': availabilityZoneRebalancing,
      'capacityProviderStrategies':
          pulumi.Input.encodeList<
            GetServiceCapacityProviderStrategy,
            Map<String, dynamic>
          >(capacityProviderStrategies, (value) => value.toMap()),
      'clusterArn': clusterArn,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'deploymentConfigurations':
          pulumi.Input.encodeList<
            GetServiceDeploymentConfiguration,
            Map<String, dynamic>
          >(deploymentConfigurations, (value) => value.toMap()),
      'deploymentControllers':
          pulumi.Input.encodeList<
            GetServiceDeploymentController,
            Map<String, dynamic>
          >(deploymentControllers, (value) => value.toMap()),
      'deployments':
          pulumi.Input.encodeList<GetServiceDeployment, Map<String, dynamic>>(
            deployments,
            (value) => value.toMap(),
          ),
      'desiredCount': desiredCount,
      'enableEcsManagedTags': enableEcsManagedTags,
      'enableExecuteCommand': enableExecuteCommand,
      'events': pulumi.Input.encodeList<GetServiceEvent, Map<String, dynamic>>(
        events,
        (value) => value.toMap(),
      ),
      'healthCheckGracePeriodSeconds': healthCheckGracePeriodSeconds,
      'iamRole': iamRole,
      'id': id,
      'launchType': launchType,
      'loadBalancers':
          pulumi.Input.encodeList<GetServiceLoadBalancer, Map<String, dynamic>>(
            loadBalancers,
            (value) => value.toMap(),
          ),
      'networkConfigurations':
          pulumi.Input.encodeList<
            GetServiceNetworkConfiguration,
            Map<String, dynamic>
          >(networkConfigurations, (value) => value.toMap()),
      'orderedPlacementStrategies':
          pulumi.Input.encodeList<
            GetServiceOrderedPlacementStrategy,
            Map<String, dynamic>
          >(orderedPlacementStrategies, (value) => value.toMap()),
      'pendingCount': pendingCount,
      'placementConstraints':
          pulumi.Input.encodeList<
            GetServicePlacementConstraint,
            Map<String, dynamic>
          >(placementConstraints, (value) => value.toMap()),
      'platformFamily': platformFamily,
      'platformVersion': platformVersion,
      'propagateTags': propagateTags,
      'region': region,
      'runningCount': runningCount,
      'schedulingStrategy': schedulingStrategy,
      'serviceName': serviceName,
      'serviceRegistries':
          pulumi.Input.encodeList<
            GetServiceServiceRegistry,
            Map<String, dynamic>
          >(serviceRegistries, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'taskDefinition': taskDefinition,
      'taskSets':
          pulumi.Input.encodeList<GetServiceTaskSet, Map<String, dynamic>>(
            taskSets,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      arn: map['arn'] as String,
      availabilityZoneRebalancing: map['availabilityZoneRebalancing'] as String,
      capacityProviderStrategies:
          pulumi.Input.decodeList<GetServiceCapacityProviderStrategy>(
            map['capacityProviderStrategies']!,
            (value) => GetServiceCapacityProviderStrategy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      clusterArn: map['clusterArn'] as String,
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      deploymentConfigurations:
          pulumi.Input.decodeList<GetServiceDeploymentConfiguration>(
            map['deploymentConfigurations']!,
            (value) => GetServiceDeploymentConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      deploymentControllers:
          pulumi.Input.decodeList<GetServiceDeploymentController>(
            map['deploymentControllers']!,
            (value) => GetServiceDeploymentController.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      deployments: pulumi.Input.decodeList<GetServiceDeployment>(
        map['deployments']!,
        (value) => GetServiceDeployment.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      desiredCount: map['desiredCount'] as int,
      enableEcsManagedTags: map['enableEcsManagedTags'] as bool,
      enableExecuteCommand: map['enableExecuteCommand'] as bool,
      events: pulumi.Input.decodeList<GetServiceEvent>(
        map['events']!,
        (value) =>
            GetServiceEvent.fromMap((value as Map).cast<String, dynamic>()),
      ),
      healthCheckGracePeriodSeconds:
          map['healthCheckGracePeriodSeconds'] as int,
      iamRole: map['iamRole'] as String,
      id: map['id'] as String,
      launchType: map['launchType'] as String,
      loadBalancers: pulumi.Input.decodeList<GetServiceLoadBalancer>(
        map['loadBalancers']!,
        (value) => GetServiceLoadBalancer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      networkConfigurations:
          pulumi.Input.decodeList<GetServiceNetworkConfiguration>(
            map['networkConfigurations']!,
            (value) => GetServiceNetworkConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      orderedPlacementStrategies:
          pulumi.Input.decodeList<GetServiceOrderedPlacementStrategy>(
            map['orderedPlacementStrategies']!,
            (value) => GetServiceOrderedPlacementStrategy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      pendingCount: map['pendingCount'] as int,
      placementConstraints:
          pulumi.Input.decodeList<GetServicePlacementConstraint>(
            map['placementConstraints']!,
            (value) => GetServicePlacementConstraint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      platformFamily: map['platformFamily'] as String,
      platformVersion: map['platformVersion'] as String,
      propagateTags: map['propagateTags'] as String,
      region: map['region'] as String,
      runningCount: map['runningCount'] as int,
      schedulingStrategy: map['schedulingStrategy'] as String,
      serviceName: map['serviceName'] as String,
      serviceRegistries: pulumi.Input.decodeList<GetServiceServiceRegistry>(
        map['serviceRegistries']!,
        (value) => GetServiceServiceRegistry.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      taskDefinition: map['taskDefinition'] as String,
      taskSets: pulumi.Input.decodeList<GetServiceTaskSet>(
        map['taskSets']!,
        (value) =>
            GetServiceTaskSet.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
