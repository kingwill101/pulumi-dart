// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'fargate_service_task_definition.dart';

/// The set of arguments for FargateService.
class FargateServiceArgs {
  /// Information about the CloudWatch alarms. See below.
  final Input<Map<String, dynamic>>? alarms;

  /// Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  final Input<bool>? assignPublicIp;

  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  final Input<String>? availabilityZoneRebalancing;

  /// ARN of an ECS cluster.
  final Input<String>? cluster;

  /// If `true`, this provider will not wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  final Input<bool>? continueBeforeSteadyState;

  /// Configuration block for deployment circuit breaker. See below.
  final Input<Map<String, dynamic>>? deploymentCircuitBreaker;

  /// Configuration block for deployment settings. See below.
  final Input<Map<String, dynamic>>? deploymentConfiguration;

  /// Configuration block for deployment controller configuration. See below.
  final Input<Map<String, dynamic>>? deploymentController;

  /// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  final Input<int>? deploymentMaximumPercent;

  /// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  final Input<int>? deploymentMinimumHealthyPercent;

  /// Number of instances of the task definition to place and keep running. Defaults to 1. Do not specify if using the `DAEMON` scheduling strategy.
  final Input<int>? desiredCount;

  /// Whether to enable Amazon ECS managed tags for the tasks within the service.
  final Input<bool>? enableEcsManagedTags;

  /// Whether to enable Amazon ECS Exec for the tasks within the service.
  final Input<bool>? enableExecuteCommand;

  /// Enable to delete a service even if it wasn't scaled down to zero tasks. It's only necessary to use this if the service uses the `REPLICA` scheduling strategy.
  final Input<bool>? forceDelete;

  /// Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., `myimage:latest`), roll Fargate tasks onto a newer platform version, or immediately deploy `ordered_placement_strategy` and `placement_constraints` updates.
  /// When using the forceNewDeployment property you also need to configure the triggers property.
  final Input<bool>? forceNewDeployment;

  /// Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
  final Input<int>? healthCheckGracePeriodSeconds;

  /// ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the `awsvpc` network mode. If using `awsvpc` network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
  final Input<String>? iamRole;

  /// Configuration block for load balancers. See below.
  final Input<List<Map<String, dynamic>>>? loadBalancers;

  /// Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  final Input<Map<String, dynamic>>? networkConfiguration;

  /// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. Maximum number of `placement_constraints` is `10`. See below.
  final Input<List<Map<String, dynamic>>>? placementConstraints;

  /// Platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  final Input<String>? platformVersion;

  /// Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  final Input<String>? propagateTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  final Input<String>? schedulingStrategy;

  /// ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  final Input<Map<String, dynamic>>? serviceConnectConfiguration;

  /// Service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. See below.
  final Input<Map<String, dynamic>>? serviceRegistries;

  /// Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to `false`. Only applicable when using `ECS` deployment controller and requires `wait_for_steady_state = true`.
  final Input<bool>? sigintRollback;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  final Input<String>? taskDefinition;

  /// The args of task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  final Input<FargateServiceTaskDefinition>? taskDefinitionArgs;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  final Input<Map<String, String>>? triggers;

  /// Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  final Input<Map<String, dynamic>>? volumeConfiguration;

  /// The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  final Input<List<Map<String, dynamic>>>? vpcLatticeConfigurations;

  FargateServiceArgs({
    this.alarms,
    this.assignPublicIp,
    this.availabilityZoneRebalancing,
    this.cluster,
    this.continueBeforeSteadyState,
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
    this.loadBalancers,
    this.name,
    this.networkConfiguration,
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
    this.taskDefinitionArgs,
    this.triggers,
    this.volumeConfiguration,
    this.vpcLatticeConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alarmsValue = alarms;
    if (alarmsValue != null) {
      map['alarms'] = alarmsValue;
    }
    final assignPublicIpValue = assignPublicIp;
    if (assignPublicIpValue != null) {
      map['assignPublicIp'] = assignPublicIpValue;
    }
    final availabilityZoneRebalancingValue = availabilityZoneRebalancing;
    if (availabilityZoneRebalancingValue != null) {
      map['availabilityZoneRebalancing'] = availabilityZoneRebalancingValue;
    }
    final clusterValue = cluster;
    if (clusterValue != null) {
      map['cluster'] = clusterValue;
    }
    final continueBeforeSteadyStateValue = continueBeforeSteadyState;
    if (continueBeforeSteadyStateValue != null) {
      map['continueBeforeSteadyState'] = continueBeforeSteadyStateValue;
    }
    final deploymentCircuitBreakerValue = deploymentCircuitBreaker;
    if (deploymentCircuitBreakerValue != null) {
      map['deploymentCircuitBreaker'] = deploymentCircuitBreakerValue;
    }
    final deploymentConfigurationValue = deploymentConfiguration;
    if (deploymentConfigurationValue != null) {
      map['deploymentConfiguration'] = deploymentConfigurationValue;
    }
    final deploymentControllerValue = deploymentController;
    if (deploymentControllerValue != null) {
      map['deploymentController'] = deploymentControllerValue;
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
    final loadBalancersValue = loadBalancers;
    if (loadBalancersValue != null) {
      map['loadBalancers'] = loadBalancersValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigurationValue = networkConfiguration;
    if (networkConfigurationValue != null) {
      map['networkConfiguration'] = networkConfigurationValue;
    }
    final placementConstraintsValue = placementConstraints;
    if (placementConstraintsValue != null) {
      map['placementConstraints'] = placementConstraintsValue;
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
      map['serviceConnectConfiguration'] = serviceConnectConfigurationValue;
    }
    final serviceRegistriesValue = serviceRegistries;
    if (serviceRegistriesValue != null) {
      map['serviceRegistries'] = serviceRegistriesValue;
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
    final taskDefinitionArgsValue = taskDefinitionArgs;
    if (taskDefinitionArgsValue != null) {
      map['taskDefinitionArgs'] = Input.mapOptionalInputValue<
              FargateServiceTaskDefinition, Map<String, dynamic>>(
          taskDefinitionArgsValue, (value) => value.toMap());
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    final volumeConfigurationValue = volumeConfiguration;
    if (volumeConfigurationValue != null) {
      map['volumeConfiguration'] = volumeConfigurationValue;
    }
    final vpcLatticeConfigurationsValue = vpcLatticeConfigurations;
    if (vpcLatticeConfigurationsValue != null) {
      map['vpcLatticeConfigurations'] = vpcLatticeConfigurationsValue;
    }
    return map;
  }

  factory FargateServiceArgs.fromMap(Map<String, dynamic> map) {
    return FargateServiceArgs(
      alarms: Input.asOptionalInput<Map<String, dynamic>>(map['alarms']),
      assignPublicIp: Input.asOptionalInput<bool>(map['assignPublicIp']),
      availabilityZoneRebalancing:
          Input.asOptionalInput<String>(map['availabilityZoneRebalancing']),
      cluster: Input.asOptionalInput<String>(map['cluster']),
      continueBeforeSteadyState:
          Input.asOptionalInput<bool>(map['continueBeforeSteadyState']),
      deploymentCircuitBreaker: Input.asOptionalInput<Map<String, dynamic>>(
          map['deploymentCircuitBreaker']),
      deploymentConfiguration: Input.asOptionalInput<Map<String, dynamic>>(
          map['deploymentConfiguration']),
      deploymentController: Input.asOptionalInput<Map<String, dynamic>>(
          map['deploymentController']),
      deploymentMaximumPercent:
          Input.asOptionalInput<int>(map['deploymentMaximumPercent']),
      deploymentMinimumHealthyPercent:
          Input.asOptionalInput<int>(map['deploymentMinimumHealthyPercent']),
      desiredCount: Input.asOptionalInput<int>(map['desiredCount']),
      enableEcsManagedTags:
          Input.asOptionalInput<bool>(map['enableEcsManagedTags']),
      enableExecuteCommand:
          Input.asOptionalInput<bool>(map['enableExecuteCommand']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      forceNewDeployment:
          Input.asOptionalInput<bool>(map['forceNewDeployment']),
      healthCheckGracePeriodSeconds:
          Input.asOptionalInput<int>(map['healthCheckGracePeriodSeconds']),
      iamRole: Input.asOptionalInput<String>(map['iamRole']),
      loadBalancers: Input.asOptionalInput<List<Map<String, dynamic>>>(
          map['loadBalancers']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfiguration: Input.asOptionalInput<Map<String, dynamic>>(
          map['networkConfiguration']),
      placementConstraints: Input.asOptionalInput<List<Map<String, dynamic>>>(
          map['placementConstraints']),
      platformVersion: Input.asOptionalInput<String>(map['platformVersion']),
      propagateTags: Input.asOptionalInput<String>(map['propagateTags']),
      region: Input.asOptionalInput<String>(map['region']),
      schedulingStrategy:
          Input.asOptionalInput<String>(map['schedulingStrategy']),
      serviceConnectConfiguration: Input.asOptionalInput<Map<String, dynamic>>(
          map['serviceConnectConfiguration']),
      serviceRegistries:
          Input.asOptionalInput<Map<String, dynamic>>(map['serviceRegistries']),
      sigintRollback: Input.asOptionalInput<bool>(map['sigintRollback']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      taskDefinition: Input.asOptionalInput<String>(map['taskDefinition']),
      taskDefinitionArgs: Input.asOptionalInput<FargateServiceTaskDefinition>(
          map['taskDefinitionArgs']),
      triggers: Input.asOptionalInput<Map<String, String>>(map['triggers']),
      volumeConfiguration: Input.asOptionalInput<Map<String, dynamic>>(
          map['volumeConfiguration']),
      vpcLatticeConfigurations:
          Input.asOptionalInput<List<Map<String, dynamic>>>(
              map['vpcLatticeConfigurations']),
    );
  }
}
