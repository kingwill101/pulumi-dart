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
  final String? arn;
  /// Whether Availability Zone rebalancing is enabled
  final String? availabilityZoneRebalancing;
  /// Capacity provider strategy for the service. See `capacityProviderStrategy` Block for details.
  final List<GetServiceCapacityProviderStrategy>? capacityProviderStrategies;
  final String? clusterArn;
  /// Time when task set was created (RFC3339 format)
  final String? createdAt;
  /// Principal that created the service
  final String? createdBy;
  /// Deployment configuration for the service. See `deploymentConfiguration` Block for details.
  final List<GetServiceDeploymentConfiguration>? deploymentConfigurations;
  /// Deployment controller configuration. See `deploymentController` Block for details.
  final List<GetServiceDeploymentController>? deploymentControllers;
  /// Current deployments for the service. See `deployments` Block for details.
  final List<GetServiceDeployment>? deployments;
  /// Desired number of tasks
  final int? desiredCount;
  /// Whether ECS managed tags are enabled
  final bool? enableEcsManagedTags;
  /// Whether execute command functionality is enabled
  final bool? enableExecuteCommand;
  /// Recent service events. See `events` Block for details.
  final List<GetServiceEvent>? events;
  /// Grace period for health checks
  final int? healthCheckGracePeriodSeconds;
  /// ARN of the IAM role associated with the service
  final String? iamRole;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Launch type for the ECS Service
  final String? launchType;
  /// Load balancers for the ECS Service. See `loadBalancer` Block for details.
  final List<GetServiceLoadBalancer>? loadBalancers;
  /// Network configuration for the service. See `networkConfiguration` Block for details.
  final List<GetServiceNetworkConfiguration>? networkConfigurations;
  /// Placement strategy for tasks. See `orderedPlacementStrategy` Block for details.
  final List<GetServiceOrderedPlacementStrategy>? orderedPlacementStrategies;
  /// Number of pending tasks
  final int? pendingCount;
  /// Placement constraints for tasks. See `placementConstraints` Block for details.
  final List<GetServicePlacementConstraint>? placementConstraints;
  /// Platform family for Fargate tasks
  final String? platformFamily;
  /// Platform version for Fargate tasks
  final String? platformVersion;
  /// Whether tags are propagated from task definition or service
  final String? propagateTags;
  final String? region;
  /// Number of running tasks
  final int? runningCount;
  /// Scheduling strategy for the ECS Service
  final String? schedulingStrategy;
  final String? serviceName;
  /// Service discovery registries. See `serviceRegistries` Block for details.
  final List<GetServiceServiceRegistry>? serviceRegistries;
  /// Task set status
  final String? status;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Task definition ARN
  final String? taskDefinition;
  /// Task sets for the service. See `taskSets` Block for details.
  final List<GetServiceTaskSet>? taskSets;

  /// Creates a new [GetServiceResult].
  /// [arn] ARN of the task set
  /// [availabilityZoneRebalancing] Whether Availability Zone rebalancing is enabled
  /// [capacityProviderStrategies] Capacity provider strategy for the service. See `capacityProviderStrategy` Block for details.
  /// [clusterArn] Optional.
  /// [createdAt] Time when task set was created (RFC3339 format)
  /// [createdBy] Principal that created the service
  /// [deploymentConfigurations] Deployment configuration for the service. See `deploymentConfiguration` Block for details.
  /// [deploymentControllers] Deployment controller configuration. See `deploymentController` Block for details.
  /// [deployments] Current deployments for the service. See `deployments` Block for details.
  /// [desiredCount] Desired number of tasks
  /// [enableEcsManagedTags] Whether ECS managed tags are enabled
  /// [enableExecuteCommand] Whether execute command functionality is enabled
  /// [events] Recent service events. See `events` Block for details.
  /// [healthCheckGracePeriodSeconds] Grace period for health checks
  /// [iamRole] ARN of the IAM role associated with the service
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [launchType] Launch type for the ECS Service
  /// [loadBalancers] Load balancers for the ECS Service. See `loadBalancer` Block for details.
  /// [networkConfigurations] Network configuration for the service. See `networkConfiguration` Block for details.
  /// [orderedPlacementStrategies] Placement strategy for tasks. See `orderedPlacementStrategy` Block for details.
  /// [pendingCount] Number of pending tasks
  /// [placementConstraints] Placement constraints for tasks. See `placementConstraints` Block for details.
  /// [platformFamily] Platform family for Fargate tasks
  /// [platformVersion] Platform version for Fargate tasks
  /// [propagateTags] Whether tags are propagated from task definition or service
  /// [region] Optional.
  /// [runningCount] Number of running tasks
  /// [schedulingStrategy] Scheduling strategy for the ECS Service
  /// [serviceName] Optional.
  /// [serviceRegistries] Service discovery registries. See `serviceRegistries` Block for details.
  /// [status] Task set status
  /// [tags] Resource tags.
  /// [taskDefinition] Task definition ARN
  /// [taskSets] Task sets for the service. See `taskSets` Block for details.
  const GetServiceResult({
    this.arn,
    this.availabilityZoneRebalancing,
    this.capacityProviderStrategies,
    this.clusterArn,
    this.createdAt,
    this.createdBy,
    this.deploymentConfigurations,
    this.deploymentControllers,
    this.deployments,
    this.desiredCount,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.events,
    this.healthCheckGracePeriodSeconds,
    this.iamRole,
    this.id,
    this.launchType,
    this.loadBalancers,
    this.networkConfigurations,
    this.orderedPlacementStrategies,
    this.pendingCount,
    this.placementConstraints,
    this.platformFamily,
    this.platformVersion,
    this.propagateTags,
    this.region,
    this.runningCount,
    this.schedulingStrategy,
    this.serviceName,
    this.serviceRegistries,
    this.status,
    this.tags,
    this.taskDefinition,
    this.taskSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZoneRebalancing': ?availabilityZoneRebalancing,
      'capacityProviderStrategies': ?(() { final guardedValue = capacityProviderStrategies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceCapacityProviderStrategy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterArn': ?clusterArn,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'deploymentConfigurations': ?(() { final guardedValue = deploymentConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceDeploymentConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deploymentControllers': ?(() { final guardedValue = deploymentControllers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceDeploymentController, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deployments': ?(() { final guardedValue = deployments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceDeployment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'events': ?(() { final guardedValue = events; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceEvent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthCheckGracePeriodSeconds': ?healthCheckGracePeriodSeconds,
      'iamRole': ?iamRole,
      'id': ?id,
      'launchType': ?launchType,
      'loadBalancers': ?(() { final guardedValue = loadBalancers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceLoadBalancer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkConfigurations': ?(() { final guardedValue = networkConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceNetworkConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'orderedPlacementStrategies': ?(() { final guardedValue = orderedPlacementStrategies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceOrderedPlacementStrategy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pendingCount': ?pendingCount,
      'placementConstraints': ?(() { final guardedValue = placementConstraints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServicePlacementConstraint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'platformFamily': ?platformFamily,
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'region': ?region,
      'runningCount': ?runningCount,
      'schedulingStrategy': ?schedulingStrategy,
      'serviceName': ?serviceName,
      'serviceRegistries': ?(() { final guardedValue = serviceRegistries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceServiceRegistry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
      'taskDefinition': ?taskDefinition,
      'taskSets': ?(() { final guardedValue = taskSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceTaskSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneRebalancing: (() { final guardedValue = map['availabilityZoneRebalancing']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityProviderStrategies: (() { final guardedValue = map['capacityProviderStrategies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceCapacityProviderStrategy>(guardedValue, (value) => GetServiceCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentConfigurations: (() { final guardedValue = map['deploymentConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceDeploymentConfiguration>(guardedValue, (value) => GetServiceDeploymentConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      deploymentControllers: (() { final guardedValue = map['deploymentControllers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceDeploymentController>(guardedValue, (value) => GetServiceDeploymentController.fromMap((value as Map).cast<String, dynamic>())); })(),
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceDeployment>(guardedValue, (value) => GetServiceDeployment.fromMap((value as Map).cast<String, dynamic>())); })(),
      desiredCount: (() { final guardedValue = map['desiredCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      enableEcsManagedTags: (() { final guardedValue = map['enableEcsManagedTags']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableExecuteCommand: (() { final guardedValue = map['enableExecuteCommand']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceEvent>(guardedValue, (value) => GetServiceEvent.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthCheckGracePeriodSeconds: (() { final guardedValue = map['healthCheckGracePeriodSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      iamRole: (() { final guardedValue = map['iamRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      launchType: (() { final guardedValue = map['launchType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancers: (() { final guardedValue = map['loadBalancers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceLoadBalancer>(guardedValue, (value) => GetServiceLoadBalancer.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkConfigurations: (() { final guardedValue = map['networkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceNetworkConfiguration>(guardedValue, (value) => GetServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      orderedPlacementStrategies: (() { final guardedValue = map['orderedPlacementStrategies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceOrderedPlacementStrategy>(guardedValue, (value) => GetServiceOrderedPlacementStrategy.fromMap((value as Map).cast<String, dynamic>())); })(),
      pendingCount: (() { final guardedValue = map['pendingCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      placementConstraints: (() { final guardedValue = map['placementConstraints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServicePlacementConstraint>(guardedValue, (value) => GetServicePlacementConstraint.fromMap((value as Map).cast<String, dynamic>())); })(),
      platformFamily: (() { final guardedValue = map['platformFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runningCount: (() { final guardedValue = map['runningCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      schedulingStrategy: (() { final guardedValue = map['schedulingStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceRegistries: (() { final guardedValue = map['serviceRegistries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceServiceRegistry>(guardedValue, (value) => GetServiceServiceRegistry.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      taskDefinition: (() { final guardedValue = map['taskDefinition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      taskSets: (() { final guardedValue = map['taskSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceTaskSet>(guardedValue, (value) => GetServiceTaskSet.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
