// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_alarms.dart';
import 'service_capacity_provider_strategy.dart';
import 'service_deployment_circuit_breaker.dart';
import 'service_deployment_configuration.dart';
import 'service_deployment_controller.dart';
import 'service_load_balancer.dart';
import 'service_network_configuration.dart';
import 'service_ordered_placement_strategy.dart';
import 'service_placement_constraint.dart';
import 'service_service_connect_configuration.dart';
import 'service_service_registries.dart';
import 'service_volume_configuration.dart';
import 'service_vpc_lattice_configuration.dart';

/// {@template pulumi_ecs_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_ecs_service_service_args_doc}
class ServiceArgs {
  /// Information about the CloudWatch alarms. See below.
  final pulumi.Input<ServiceAlarms>? alarms;
  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  final pulumi.Input<String>? availabilityZoneRebalancing;
  /// Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires `force_new_deployment = true`. See below. Conflicts with `launch_type`.
  final pulumi.Input<List<ServiceCapacityProviderStrategy>>? capacityProviderStrategies;
  /// ARN of an ECS cluster.
  final pulumi.Input<String>? cluster;
  /// Configuration block for deployment circuit breaker. See below.
  final pulumi.Input<ServiceDeploymentCircuitBreaker>? deploymentCircuitBreaker;
  /// Configuration block for deployment settings. See below.
  final pulumi.Input<ServiceDeploymentConfiguration>? deploymentConfiguration;
  /// Configuration block for deployment controller configuration. See below.
  final pulumi.Input<ServiceDeploymentController>? deploymentController;
  /// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  final pulumi.Input<int>? deploymentMaximumPercent;
  /// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  final pulumi.Input<int>? deploymentMinimumHealthyPercent;
  /// Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the `DAEMON` scheduling strategy.
  final pulumi.Input<int>? desiredCount;
  /// Whether to enable Amazon ECS managed tags for the tasks within the service.
  final pulumi.Input<bool>? enableEcsManagedTags;
  /// Whether to enable Amazon ECS Exec for the tasks within the service.
  final pulumi.Input<bool>? enableExecuteCommand;
  /// Enable to delete a service even if it wasn't scaled down to zero tasks. It's only necessary to use this if the service uses the `REPLICA` scheduling strategy.
  final pulumi.Input<bool>? forceDelete;
  /// Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., `myimage:latest`), roll Fargate tasks onto a newer platform version, or immediately deploy `ordered_placement_strategy` and `placement_constraints` updates.
  /// When using the forceNewDeployment property you also need to configure the triggers property.
  final pulumi.Input<bool>? forceNewDeployment;
  /// Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
  final pulumi.Input<int>? healthCheckGracePeriodSeconds;
  /// ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the `awsvpc` network mode. If using `awsvpc` network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
  final pulumi.Input<String>? iamRole;
  /// Launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`. Conflicts with `capacity_provider_strategy`.
  final pulumi.Input<String>? launchType;
  /// Configuration block for load balancers. See below.
  final pulumi.Input<List<ServiceLoadBalancer>>? loadBalancers;
  /// Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  final pulumi.Input<ServiceNetworkConfiguration>? networkConfiguration;
  /// Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. The maximum number of `ordered_placement_strategy` blocks is `5`. See below.
  final pulumi.Input<List<ServiceOrderedPlacementStrategy>>? orderedPlacementStrategies;
  /// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. Maximum number of `placement_constraints` is `10`. See below.
  final pulumi.Input<List<ServicePlacementConstraint>>? placementConstraints;
  /// Platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  final pulumi.Input<String>? platformVersion;
  /// Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  final pulumi.Input<String>? propagateTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  final pulumi.Input<String>? schedulingStrategy;
  /// ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  final pulumi.Input<ServiceServiceConnectConfiguration>? serviceConnectConfiguration;
  /// Service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. See below.
  final pulumi.Input<ServiceServiceRegistries>? serviceRegistries;
  /// Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to `false`. Only applicable when using `ECS` deployment controller and requires `wait_for_steady_state = true`.
  final pulumi.Input<bool>? sigintRollback;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Required unless using the `EXTERNAL` deployment controller. If a revision is not specified, the latest `ACTIVE` revision is used.
  final pulumi.Input<String>? taskDefinition;
  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  final pulumi.Input<Map<String, String>>? triggers;
  /// Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  final pulumi.Input<ServiceVolumeConfiguration>? volumeConfiguration;
  /// The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  final pulumi.Input<List<ServiceVpcLatticeConfiguration>>? vpcLatticeConfigurations;
  /// If `true`, this provider will wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  final pulumi.Input<bool>? waitForSteadyState;

  /// Creates a new [ServiceArgs].
  /// [alarms] Information about the CloudWatch alarms. See below.
  /// [availabilityZoneRebalancing] ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  /// [capacityProviderStrategies] Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires `force_new_deployment = true`. See below. Conflicts with `launch_type`.
  /// [cluster] ARN of an ECS cluster.
  /// [deploymentCircuitBreaker] Configuration block for deployment circuit breaker. See below.
  /// [deploymentConfiguration] Configuration block for deployment settings. See below.
  /// [deploymentController] Configuration block for deployment controller configuration. See below.
  /// [deploymentMaximumPercent] Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  /// [deploymentMinimumHealthyPercent] Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  /// [desiredCount] Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the `DAEMON` scheduling strategy.
  /// [enableEcsManagedTags] Whether to enable Amazon ECS managed tags for the tasks within the service.
  /// [enableExecuteCommand] Whether to enable Amazon ECS Exec for the tasks within the service.
  /// [forceDelete] Enable to delete a service even if it wasn't scaled down to zero tasks. It's only necessary to use this if the service uses the `REPLICA` scheduling strategy.
  /// [forceNewDeployment] Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., `myimage:latest`), roll Fargate tasks onto a newer platform version, or immediately deploy `ordered_placement_strategy` and `placement_constraints` updates.
  /// [healthCheckGracePeriodSeconds] Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
  /// [iamRole] ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the `awsvpc` network mode. If using `awsvpc` network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
  /// [launchType] Launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`. Conflicts with `capacity_provider_strategy`.
  /// [loadBalancers] Configuration block for load balancers. See below.
  /// [name] Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  /// [networkConfiguration] Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  /// [orderedPlacementStrategies] Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. The maximum number of `ordered_placement_strategy` blocks is `5`. See below.
  /// [placementConstraints] Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. Maximum number of `placement_constraints` is `10`. See below.
  /// [platformVersion] Platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  /// [propagateTags] Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedulingStrategy] Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  /// [serviceConnectConfiguration] ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  /// [serviceRegistries] Service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. See below.
  /// [sigintRollback] Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to `false`. Only applicable when using `ECS` deployment controller and requires `wait_for_steady_state = true`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskDefinition] Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Required unless using the `EXTERNAL` deployment controller. If a revision is not specified, the latest `ACTIVE` revision is used.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  /// [volumeConfiguration] Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  /// [vpcLatticeConfigurations] The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  /// [waitForSteadyState] If `true`, this provider will wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  ServiceArgs({
    this.alarms,
    this.availabilityZoneRebalancing,
    this.capacityProviderStrategies,
    this.cluster,
    this.deploymentCircuitBreaker,
    this.deploymentConfiguration,
    this.deploymentController,
    this.deploymentMaximumPercent,
    this.deploymentMinimumHealthyPercent,
    this.desiredCount,
    this.enableEcsManagedTags,
    this.enableExecuteCommand,
    this.forceDelete,
    this.forceNewDeployment,
    this.healthCheckGracePeriodSeconds,
    this.iamRole,
    this.launchType,
    this.loadBalancers,
    this.name,
    this.networkConfiguration,
    this.orderedPlacementStrategies,
    this.placementConstraints,
    this.platformVersion,
    this.propagateTags,
    this.region,
    this.schedulingStrategy,
    this.serviceConnectConfiguration,
    this.serviceRegistries,
    this.sigintRollback,
    this.tags,
    this.taskDefinition,
    this.triggers,
    this.volumeConfiguration,
    this.vpcLatticeConfigurations,
    this.waitForSteadyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': ?pulumi.Input.mapOptionalInputValue<ServiceAlarms, Map<String, dynamic>>(alarms, (value) => value.toMap()),
      'availabilityZoneRebalancing': ?availabilityZoneRebalancing,
      'capacityProviderStrategies': ?pulumi.Input.mapOptionalInputValue<List<ServiceCapacityProviderStrategy>, List<Map<String, dynamic>>>(capacityProviderStrategies, (value) => pulumi.Input.encodeList<ServiceCapacityProviderStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cluster': ?cluster,
      'deploymentCircuitBreaker': ?pulumi.Input.mapOptionalInputValue<ServiceDeploymentCircuitBreaker, Map<String, dynamic>>(deploymentCircuitBreaker, (value) => value.toMap()),
      'deploymentConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceDeploymentConfiguration, Map<String, dynamic>>(deploymentConfiguration, (value) => value.toMap()),
      'deploymentController': ?pulumi.Input.mapOptionalInputValue<ServiceDeploymentController, Map<String, dynamic>>(deploymentController, (value) => value.toMap()),
      'deploymentMaximumPercent': ?deploymentMaximumPercent,
      'deploymentMinimumHealthyPercent': ?deploymentMinimumHealthyPercent,
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'forceDelete': ?forceDelete,
      'forceNewDeployment': ?forceNewDeployment,
      'healthCheckGracePeriodSeconds': ?healthCheckGracePeriodSeconds,
      'iamRole': ?iamRole,
      'launchType': ?launchType,
      'loadBalancers': ?pulumi.Input.mapOptionalInputValue<List<ServiceLoadBalancer>, List<Map<String, dynamic>>>(loadBalancers, (value) => pulumi.Input.encodeList<ServiceLoadBalancer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'orderedPlacementStrategies': ?pulumi.Input.mapOptionalInputValue<List<ServiceOrderedPlacementStrategy>, List<Map<String, dynamic>>>(orderedPlacementStrategies, (value) => pulumi.Input.encodeList<ServiceOrderedPlacementStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<ServicePlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<ServicePlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'region': ?region,
      'schedulingStrategy': ?schedulingStrategy,
      'serviceConnectConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceServiceConnectConfiguration, Map<String, dynamic>>(serviceConnectConfiguration, (value) => value.toMap()),
      'serviceRegistries': ?pulumi.Input.mapOptionalInputValue<ServiceServiceRegistries, Map<String, dynamic>>(serviceRegistries, (value) => value.toMap()),
      'sigintRollback': ?sigintRollback,
      'tags': ?tags,
      'taskDefinition': ?taskDefinition,
      'triggers': ?triggers,
      'volumeConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceVolumeConfiguration, Map<String, dynamic>>(volumeConfiguration, (value) => value.toMap()),
      'vpcLatticeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ServiceVpcLatticeConfiguration>, List<Map<String, dynamic>>>(vpcLatticeConfigurations, (value) => pulumi.Input.encodeList<ServiceVpcLatticeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForSteadyState': ?waitForSteadyState,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      alarms: (() { final guardedValue = map['alarms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAlarms.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityZoneRebalancing: (() { final guardedValue = map['availabilityZoneRebalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityProviderStrategies: (() { final guardedValue = map['capacityProviderStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceCapacityProviderStrategy>(guardedValue, (value) => ServiceCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentCircuitBreaker: (() { final guardedValue = map['deploymentCircuitBreaker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceDeploymentCircuitBreaker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentConfiguration: (() { final guardedValue = map['deploymentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentController: (() { final guardedValue = map['deploymentController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceDeploymentController.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentMaximumPercent: (() { final guardedValue = map['deploymentMaximumPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deploymentMinimumHealthyPercent: (() { final guardedValue = map['deploymentMinimumHealthyPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      desiredCount: (() { final guardedValue = map['desiredCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableEcsManagedTags: (() { final guardedValue = map['enableEcsManagedTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableExecuteCommand: (() { final guardedValue = map['enableExecuteCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceNewDeployment: (() { final guardedValue = map['forceNewDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckGracePeriodSeconds: (() { final guardedValue = map['healthCheckGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      iamRole: (() { final guardedValue = map['iamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchType: (() { final guardedValue = map['launchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancers: (() { final guardedValue = map['loadBalancers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceLoadBalancer>(guardedValue, (value) => ServiceLoadBalancer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orderedPlacementStrategies: (() { final guardedValue = map['orderedPlacementStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceOrderedPlacementStrategy>(guardedValue, (value) => ServiceOrderedPlacementStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placementConstraints: (() { final guardedValue = map['placementConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePlacementConstraint>(guardedValue, (value) => ServicePlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingStrategy: (() { final guardedValue = map['schedulingStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConnectConfiguration: (() { final guardedValue = map['serviceConnectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceServiceConnectConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceRegistries: (() { final guardedValue = map['serviceRegistries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceServiceRegistries.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sigintRollback: (() { final guardedValue = map['sigintRollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskDefinition: (() { final guardedValue = map['taskDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      volumeConfiguration: (() { final guardedValue = map['volumeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceVolumeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcLatticeConfigurations: (() { final guardedValue = map['vpcLatticeConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceVpcLatticeConfiguration>(guardedValue, (value) => ServiceVpcLatticeConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitForSteadyState: (() { final guardedValue = map['waitForSteadyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

