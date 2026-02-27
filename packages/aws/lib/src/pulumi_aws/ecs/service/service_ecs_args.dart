// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_alarms/service_alarms.dart';
import '../service_capacity_provider_strategy/service_capacity_provider_strategy.dart';
import '../service_deployment_circuit_breaker/service_deployment_circuit_breaker.dart';
import '../service_deployment_configuration/service_deployment_configuration.dart';
import '../service_deployment_controller/service_deployment_controller.dart';
import '../service_load_balancer/service_load_balancer.dart';
import '../service_network_configuration/service_network_configuration_ecs.dart';
import '../service_ordered_placement_strategy/service_ordered_placement_strategy.dart';
import '../service_placement_constraint/service_placement_constraint.dart';
import '../service_service_connect_configuration/service_service_connect_configuration.dart';
import '../service_service_registries/service_service_registries.dart';
import '../service_volume_configuration/service_volume_configuration.dart';
import '../service_vpc_lattice_configuration/service_vpc_lattice_configuration.dart';

/// The set of arguments for Service.
class ServiceEcsArgs {
  /// Information about the CloudWatch alarms. See below.
  final pulumi.Input<ServiceAlarms>? alarms;

  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  final pulumi.Input<String>? availabilityZoneRebalancing;

  /// Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires `force_new_deployment = true`. See below. Conflicts with `launch_type`.
  final pulumi.Input<List<ServiceCapacityProviderStrategy>>?
      capacityProviderStrategies;

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
  final pulumi.Input<ServiceNetworkConfigurationEcs>? networkConfiguration;

  /// Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. The maximum number of `ordered_placement_strategy` blocks is `5`. See below.
  final pulumi.Input<List<ServiceOrderedPlacementStrategy>>?
      orderedPlacementStrategies;

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
  final pulumi.Input<ServiceServiceConnectConfiguration>?
      serviceConnectConfiguration;

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
  final pulumi.Input<List<ServiceVpcLatticeConfiguration>>?
      vpcLatticeConfigurations;

  /// If `true`, this provider will wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  final pulumi.Input<bool>? waitForSteadyState;

  ServiceEcsArgs({
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
    final map = <String, dynamic>{};
    final alarmsValue = alarms;
    if (alarmsValue != null) {
      map['alarms'] = pulumi.Input.mapOptionalInputValue<ServiceAlarms,
          Map<String, dynamic>>(alarmsValue, (value) => value.toMap());
    }
    final availabilityZoneRebalancingValue = availabilityZoneRebalancing;
    if (availabilityZoneRebalancingValue != null) {
      map['availabilityZoneRebalancing'] = availabilityZoneRebalancingValue;
    }
    final capacityProviderStrategiesValue = capacityProviderStrategies;
    if (capacityProviderStrategiesValue != null) {
      map['capacityProviderStrategies'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceCapacityProviderStrategy>,
              List<Map<String, dynamic>>>(
          capacityProviderStrategiesValue,
          (value) => pulumi.Input.encodeList<ServiceCapacityProviderStrategy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final clusterValue = cluster;
    if (clusterValue != null) {
      map['cluster'] = clusterValue;
    }
    final deploymentCircuitBreakerValue = deploymentCircuitBreaker;
    if (deploymentCircuitBreakerValue != null) {
      map['deploymentCircuitBreaker'] = pulumi.Input.mapOptionalInputValue<
              ServiceDeploymentCircuitBreaker, Map<String, dynamic>>(
          deploymentCircuitBreakerValue, (value) => value.toMap());
    }
    final deploymentConfigurationValue = deploymentConfiguration;
    if (deploymentConfigurationValue != null) {
      map['deploymentConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ServiceDeploymentConfiguration, Map<String, dynamic>>(
          deploymentConfigurationValue, (value) => value.toMap());
    }
    final deploymentControllerValue = deploymentController;
    if (deploymentControllerValue != null) {
      map['deploymentController'] = pulumi.Input.mapOptionalInputValue<
              ServiceDeploymentController, Map<String, dynamic>>(
          deploymentControllerValue, (value) => value.toMap());
    }
    final deploymentMaximumPercentValue = deploymentMaximumPercent;
    if (deploymentMaximumPercentValue != null) {
      map['deploymentMaximumPercent'] = deploymentMaximumPercentValue;
    }
    final deploymentMinimumHealthyPercentValue =
        deploymentMinimumHealthyPercent;
    if (deploymentMinimumHealthyPercentValue != null) {
      map['deploymentMinimumHealthyPercent'] =
          deploymentMinimumHealthyPercentValue;
    }
    final desiredCountValue = desiredCount;
    if (desiredCountValue != null) {
      map['desiredCount'] = desiredCountValue;
    }
    final enableEcsManagedTagsValue = enableEcsManagedTags;
    if (enableEcsManagedTagsValue != null) {
      map['enableEcsManagedTags'] = enableEcsManagedTagsValue;
    }
    final enableExecuteCommandValue = enableExecuteCommand;
    if (enableExecuteCommandValue != null) {
      map['enableExecuteCommand'] = enableExecuteCommandValue;
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final forceNewDeploymentValue = forceNewDeployment;
    if (forceNewDeploymentValue != null) {
      map['forceNewDeployment'] = forceNewDeploymentValue;
    }
    final healthCheckGracePeriodSecondsValue = healthCheckGracePeriodSeconds;
    if (healthCheckGracePeriodSecondsValue != null) {
      map['healthCheckGracePeriodSeconds'] = healthCheckGracePeriodSecondsValue;
    }
    final iamRoleValue = iamRole;
    if (iamRoleValue != null) {
      map['iamRole'] = iamRoleValue;
    }
    final launchTypeValue = launchType;
    if (launchTypeValue != null) {
      map['launchType'] = launchTypeValue;
    }
    final loadBalancersValue = loadBalancers;
    if (loadBalancersValue != null) {
      map['loadBalancers'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceLoadBalancer>, List<Map<String, dynamic>>>(
          loadBalancersValue,
          (value) => pulumi.Input.encodeList<ServiceLoadBalancer,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigurationValue = networkConfiguration;
    if (networkConfigurationValue != null) {
      map['networkConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ServiceNetworkConfigurationEcs, Map<String, dynamic>>(
          networkConfigurationValue, (value) => value.toMap());
    }
    final orderedPlacementStrategiesValue = orderedPlacementStrategies;
    if (orderedPlacementStrategiesValue != null) {
      map['orderedPlacementStrategies'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceOrderedPlacementStrategy>,
              List<Map<String, dynamic>>>(
          orderedPlacementStrategiesValue,
          (value) => pulumi.Input.encodeList<ServiceOrderedPlacementStrategy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final placementConstraintsValue = placementConstraints;
    if (placementConstraintsValue != null) {
      map['placementConstraints'] = pulumi.Input.mapOptionalInputValue<
              List<ServicePlacementConstraint>, List<Map<String, dynamic>>>(
          placementConstraintsValue,
          (value) => pulumi.Input.encodeList<ServicePlacementConstraint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final platformVersionValue = platformVersion;
    if (platformVersionValue != null) {
      map['platformVersion'] = platformVersionValue;
    }
    final propagateTagsValue = propagateTags;
    if (propagateTagsValue != null) {
      map['propagateTags'] = propagateTagsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final schedulingStrategyValue = schedulingStrategy;
    if (schedulingStrategyValue != null) {
      map['schedulingStrategy'] = schedulingStrategyValue;
    }
    final serviceConnectConfigurationValue = serviceConnectConfiguration;
    if (serviceConnectConfigurationValue != null) {
      map['serviceConnectConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ServiceServiceConnectConfiguration, Map<String, dynamic>>(
          serviceConnectConfigurationValue, (value) => value.toMap());
    }
    final serviceRegistriesValue = serviceRegistries;
    if (serviceRegistriesValue != null) {
      map['serviceRegistries'] = pulumi.Input.mapOptionalInputValue<
              ServiceServiceRegistries, Map<String, dynamic>>(
          serviceRegistriesValue, (value) => value.toMap());
    }
    final sigintRollbackValue = sigintRollback;
    if (sigintRollbackValue != null) {
      map['sigintRollback'] = sigintRollbackValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taskDefinitionValue = taskDefinition;
    if (taskDefinitionValue != null) {
      map['taskDefinition'] = taskDefinitionValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    final volumeConfigurationValue = volumeConfiguration;
    if (volumeConfigurationValue != null) {
      map['volumeConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ServiceVolumeConfiguration, Map<String, dynamic>>(
          volumeConfigurationValue, (value) => value.toMap());
    }
    final vpcLatticeConfigurationsValue = vpcLatticeConfigurations;
    if (vpcLatticeConfigurationsValue != null) {
      map['vpcLatticeConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<ServiceVpcLatticeConfiguration>, List<Map<String, dynamic>>>(
          vpcLatticeConfigurationsValue,
          (value) => pulumi.Input.encodeList<ServiceVpcLatticeConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final waitForSteadyStateValue = waitForSteadyState;
    if (waitForSteadyStateValue != null) {
      map['waitForSteadyState'] = waitForSteadyStateValue;
    }
    return map;
  }

  factory ServiceEcsArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEcsArgs(
      alarms: pulumi.Input.asOptionalInput<ServiceAlarms>(map['alarms']),
      availabilityZoneRebalancing: pulumi.Input.asOptionalInput<String>(
          map['availabilityZoneRebalancing']),
      capacityProviderStrategies:
          pulumi.Input.asOptionalInput<List<ServiceCapacityProviderStrategy>>(
              map['capacityProviderStrategies']),
      cluster: pulumi.Input.asOptionalInput<String>(map['cluster']),
      deploymentCircuitBreaker:
          pulumi.Input.asOptionalInput<ServiceDeploymentCircuitBreaker>(
              map['deploymentCircuitBreaker']),
      deploymentConfiguration:
          pulumi.Input.asOptionalInput<ServiceDeploymentConfiguration>(
              map['deploymentConfiguration']),
      deploymentController:
          pulumi.Input.asOptionalInput<ServiceDeploymentController>(
              map['deploymentController']),
      deploymentMaximumPercent:
          pulumi.Input.asOptionalInput<int>(map['deploymentMaximumPercent']),
      deploymentMinimumHealthyPercent: pulumi.Input.asOptionalInput<int>(
          map['deploymentMinimumHealthyPercent']),
      desiredCount: pulumi.Input.asOptionalInput<int>(map['desiredCount']),
      enableEcsManagedTags:
          pulumi.Input.asOptionalInput<bool>(map['enableEcsManagedTags']),
      enableExecuteCommand:
          pulumi.Input.asOptionalInput<bool>(map['enableExecuteCommand']),
      forceDelete: pulumi.Input.asOptionalInput<bool>(map['forceDelete']),
      forceNewDeployment:
          pulumi.Input.asOptionalInput<bool>(map['forceNewDeployment']),
      healthCheckGracePeriodSeconds: pulumi.Input.asOptionalInput<int>(
          map['healthCheckGracePeriodSeconds']),
      iamRole: pulumi.Input.asOptionalInput<String>(map['iamRole']),
      launchType: pulumi.Input.asOptionalInput<String>(map['launchType']),
      loadBalancers: pulumi.Input.asOptionalInput<List<ServiceLoadBalancer>>(
          map['loadBalancers']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfiguration:
          pulumi.Input.asOptionalInput<ServiceNetworkConfigurationEcs>(
              map['networkConfiguration']),
      orderedPlacementStrategies:
          pulumi.Input.asOptionalInput<List<ServiceOrderedPlacementStrategy>>(
              map['orderedPlacementStrategies']),
      placementConstraints:
          pulumi.Input.asOptionalInput<List<ServicePlacementConstraint>>(
              map['placementConstraints']),
      platformVersion:
          pulumi.Input.asOptionalInput<String>(map['platformVersion']),
      propagateTags: pulumi.Input.asOptionalInput<String>(map['propagateTags']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      schedulingStrategy:
          pulumi.Input.asOptionalInput<String>(map['schedulingStrategy']),
      serviceConnectConfiguration:
          pulumi.Input.asOptionalInput<ServiceServiceConnectConfiguration>(
              map['serviceConnectConfiguration']),
      serviceRegistries: pulumi.Input.asOptionalInput<ServiceServiceRegistries>(
          map['serviceRegistries']),
      sigintRollback: pulumi.Input.asOptionalInput<bool>(map['sigintRollback']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskDefinition:
          pulumi.Input.asOptionalInput<String>(map['taskDefinition']),
      triggers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['triggers']),
      volumeConfiguration:
          pulumi.Input.asOptionalInput<ServiceVolumeConfiguration>(
              map['volumeConfiguration']),
      vpcLatticeConfigurations:
          pulumi.Input.asOptionalInput<List<ServiceVpcLatticeConfiguration>>(
              map['vpcLatticeConfigurations']),
      waitForSteadyState:
          pulumi.Input.asOptionalInput<bool>(map['waitForSteadyState']),
    );
  }
}
