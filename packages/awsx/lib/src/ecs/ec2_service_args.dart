// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_service_task_definition.dart';

/// {@template pulumi_ecs_ec2_service_args_doc}
/// The set of arguments for EC2Service.
/// {@endtemplate}
/// {@macro pulumi_ecs_ec2_service_args_doc}
class EC2ServiceArgs {
  /// Information about the CloudWatch alarms. See below.
  final pulumi.Input<Map<String, dynamic>>? alarms;

  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  final pulumi.Input<String>? availabilityZoneRebalancing;

  /// Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires `force_new_deployment = true`. See below. Conflicts with `launch_type`.
  final pulumi.Input<List<Map<String, dynamic>>>? capacityProviderStrategies;

  /// ARN of an ECS cluster.
  final pulumi.Input<String>? cluster;

  /// If `true`, this provider will not wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  final pulumi.Input<bool>? continueBeforeSteadyState;

  /// Configuration block for deployment circuit breaker. See below.
  final pulumi.Input<Map<String, dynamic>>? deploymentCircuitBreaker;

  /// Configuration block for deployment settings. See below.
  final pulumi.Input<Map<String, dynamic>>? deploymentConfiguration;

  /// Configuration block for deployment controller configuration. See below.
  final pulumi.Input<Map<String, dynamic>>? deploymentController;

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

  /// Configuration block for load balancers. See below.
  final pulumi.Input<List<Map<String, dynamic>>>? loadBalancers;

  /// Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  final pulumi.Input<Map<String, dynamic>>? networkConfiguration;

  /// Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. The maximum number of `ordered_placement_strategy` blocks is `5`. See below.
  final pulumi.Input<List<Map<String, dynamic>>>? orderedPlacementStrategies;

  /// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. Maximum number of `placement_constraints` is `10`. See below.
  final pulumi.Input<List<Map<String, dynamic>>>? placementConstraints;

  /// Platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  final pulumi.Input<String>? platformVersion;

  /// Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  final pulumi.Input<String>? propagateTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  final pulumi.Input<String>? schedulingStrategy;

  /// ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  final pulumi.Input<Map<String, dynamic>>? serviceConnectConfiguration;

  /// Service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. See below.
  final pulumi.Input<Map<String, dynamic>>? serviceRegistries;

  /// Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to `false`. Only applicable when using `ECS` deployment controller and requires `wait_for_steady_state = true`.
  final pulumi.Input<bool>? sigintRollback;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  final pulumi.Input<String>? taskDefinition;

  /// The args of task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  final pulumi.Input<EC2ServiceTaskDefinition>? taskDefinitionArgs;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  final pulumi.Input<Map<String, String>>? triggers;

  /// Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  final pulumi.Input<Map<String, dynamic>>? volumeConfiguration;

  /// The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  final pulumi.Input<List<Map<String, dynamic>>>? vpcLatticeConfigurations;

  /// Creates a new [EC2ServiceArgs].
  /// [alarms] Information about the CloudWatch alarms. See below.
  /// [availabilityZoneRebalancing] ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  /// [capacityProviderStrategies] Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires `force_new_deployment = true`. See below. Conflicts with `launch_type`.
  /// [cluster] ARN of an ECS cluster.
  /// [continueBeforeSteadyState] If `true`, this provider will not wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
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
  /// [taskDefinition] Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  /// [taskDefinitionArgs] The args of task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  /// [volumeConfiguration] Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  /// [vpcLatticeConfigurations] The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  EC2ServiceArgs({
    Map<String, dynamic>? alarms,
    String? availabilityZoneRebalancing,
    List<Map<String, dynamic>>? capacityProviderStrategies,
    String? cluster,
    bool? continueBeforeSteadyState,
    Map<String, dynamic>? deploymentCircuitBreaker,
    Map<String, dynamic>? deploymentConfiguration,
    Map<String, dynamic>? deploymentController,
    int? deploymentMaximumPercent,
    int? deploymentMinimumHealthyPercent,
    int? desiredCount,
    bool? enableEcsManagedTags,
    bool? enableExecuteCommand,
    bool? forceDelete,
    bool? forceNewDeployment,
    int? healthCheckGracePeriodSeconds,
    String? iamRole,
    List<Map<String, dynamic>>? loadBalancers,
    String? name,
    Map<String, dynamic>? networkConfiguration,
    List<Map<String, dynamic>>? orderedPlacementStrategies,
    List<Map<String, dynamic>>? placementConstraints,
    String? platformVersion,
    String? propagateTags,
    String? region,
    String? schedulingStrategy,
    Map<String, dynamic>? serviceConnectConfiguration,
    Map<String, dynamic>? serviceRegistries,
    bool? sigintRollback,
    Map<String, String>? tags,
    String? taskDefinition,
    EC2ServiceTaskDefinition? taskDefinitionArgs,
    Map<String, String>? triggers,
    Map<String, dynamic>? volumeConfiguration,
    List<Map<String, dynamic>>? vpcLatticeConfigurations,
  }) : alarms = pulumi.Input.asOptionalInput<Map<String, dynamic>>(alarms),
       availabilityZoneRebalancing = pulumi.Input.asOptionalInput<String>(
         availabilityZoneRebalancing,
       ),
       capacityProviderStrategies =
           pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
             capacityProviderStrategies,
           ),
       cluster = pulumi.Input.asOptionalInput<String>(cluster),
       continueBeforeSteadyState = pulumi.Input.asOptionalInput<bool>(
         continueBeforeSteadyState,
       ),
       deploymentCircuitBreaker =
           pulumi.Input.asOptionalInput<Map<String, dynamic>>(
             deploymentCircuitBreaker,
           ),
       deploymentConfiguration =
           pulumi.Input.asOptionalInput<Map<String, dynamic>>(
             deploymentConfiguration,
           ),
       deploymentController = pulumi
           .Input.asOptionalInput<Map<String, dynamic>>(deploymentController),
       deploymentMaximumPercent = pulumi.Input.asOptionalInput<int>(
         deploymentMaximumPercent,
       ),
       deploymentMinimumHealthyPercent = pulumi.Input.asOptionalInput<int>(
         deploymentMinimumHealthyPercent,
       ),
       desiredCount = pulumi.Input.asOptionalInput<int>(desiredCount),
       enableEcsManagedTags = pulumi.Input.asOptionalInput<bool>(
         enableEcsManagedTags,
       ),
       enableExecuteCommand = pulumi.Input.asOptionalInput<bool>(
         enableExecuteCommand,
       ),
       forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
       forceNewDeployment = pulumi.Input.asOptionalInput<bool>(
         forceNewDeployment,
       ),
       healthCheckGracePeriodSeconds = pulumi.Input.asOptionalInput<int>(
         healthCheckGracePeriodSeconds,
       ),
       iamRole = pulumi.Input.asOptionalInput<String>(iamRole),
       loadBalancers = pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
         loadBalancers,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       networkConfiguration = pulumi
           .Input.asOptionalInput<Map<String, dynamic>>(networkConfiguration),
       orderedPlacementStrategies =
           pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
             orderedPlacementStrategies,
           ),
       placementConstraints =
           pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
             placementConstraints,
           ),
       platformVersion = pulumi.Input.asOptionalInput<String>(platformVersion),
       propagateTags = pulumi.Input.asOptionalInput<String>(propagateTags),
       region = pulumi.Input.asOptionalInput<String>(region),
       schedulingStrategy = pulumi.Input.asOptionalInput<String>(
         schedulingStrategy,
       ),
       serviceConnectConfiguration =
           pulumi.Input.asOptionalInput<Map<String, dynamic>>(
             serviceConnectConfiguration,
           ),
       serviceRegistries = pulumi.Input.asOptionalInput<Map<String, dynamic>>(
         serviceRegistries,
       ),
       sigintRollback = pulumi.Input.asOptionalInput<bool>(sigintRollback),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       taskDefinition = pulumi.Input.asOptionalInput<String>(taskDefinition),
       taskDefinitionArgs = pulumi
           .Input.asOptionalInput<EC2ServiceTaskDefinition>(taskDefinitionArgs),
       triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers),
       volumeConfiguration = pulumi.Input.asOptionalInput<Map<String, dynamic>>(
         volumeConfiguration,
       ),
       vpcLatticeConfigurations =
           pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
             vpcLatticeConfigurations,
           );

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alarmsValue = alarms;
    if (alarmsValue != null) {
      map['alarms'] = alarmsValue;
    }
    final availabilityZoneRebalancingValue = availabilityZoneRebalancing;
    if (availabilityZoneRebalancingValue != null) {
      map['availabilityZoneRebalancing'] = availabilityZoneRebalancingValue;
    }
    final capacityProviderStrategiesValue = capacityProviderStrategies;
    if (capacityProviderStrategiesValue != null) {
      map['capacityProviderStrategies'] = capacityProviderStrategiesValue;
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
    final orderedPlacementStrategiesValue = orderedPlacementStrategies;
    if (orderedPlacementStrategiesValue != null) {
      map['orderedPlacementStrategies'] = orderedPlacementStrategiesValue;
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
      map['taskDefinitionArgs'] =
          pulumi.Input.mapOptionalInputValue<
            EC2ServiceTaskDefinition,
            Map<String, dynamic>
          >(taskDefinitionArgsValue, (value) => value.toMap());
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

  factory EC2ServiceArgs.fromMap(Map<String, dynamic> map) {
    return EC2ServiceArgs(
      alarms: map['alarms'] == null
          ? null
          : (map['alarms'] as Map).cast<String, dynamic>(),
      availabilityZoneRebalancing: map['availabilityZoneRebalancing'] == null
          ? null
          : map['availabilityZoneRebalancing'] as String,
      capacityProviderStrategies: map['capacityProviderStrategies'] == null
          ? null
          : (map['capacityProviderStrategies'] as List)
                .cast<Map<String, dynamic>>(),
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      continueBeforeSteadyState: map['continueBeforeSteadyState'] == null
          ? null
          : map['continueBeforeSteadyState'] as bool,
      deploymentCircuitBreaker: map['deploymentCircuitBreaker'] == null
          ? null
          : (map['deploymentCircuitBreaker'] as Map).cast<String, dynamic>(),
      deploymentConfiguration: map['deploymentConfiguration'] == null
          ? null
          : (map['deploymentConfiguration'] as Map).cast<String, dynamic>(),
      deploymentController: map['deploymentController'] == null
          ? null
          : (map['deploymentController'] as Map).cast<String, dynamic>(),
      deploymentMaximumPercent: map['deploymentMaximumPercent'] == null
          ? null
          : map['deploymentMaximumPercent'] as int,
      deploymentMinimumHealthyPercent:
          map['deploymentMinimumHealthyPercent'] == null
          ? null
          : map['deploymentMinimumHealthyPercent'] as int,
      desiredCount: map['desiredCount'] == null
          ? null
          : map['desiredCount'] as int,
      enableEcsManagedTags: map['enableEcsManagedTags'] == null
          ? null
          : map['enableEcsManagedTags'] as bool,
      enableExecuteCommand: map['enableExecuteCommand'] == null
          ? null
          : map['enableExecuteCommand'] as bool,
      forceDelete: map['forceDelete'] == null
          ? null
          : map['forceDelete'] as bool,
      forceNewDeployment: map['forceNewDeployment'] == null
          ? null
          : map['forceNewDeployment'] as bool,
      healthCheckGracePeriodSeconds:
          map['healthCheckGracePeriodSeconds'] == null
          ? null
          : map['healthCheckGracePeriodSeconds'] as int,
      iamRole: map['iamRole'] == null ? null : map['iamRole'] as String,
      loadBalancers: map['loadBalancers'] == null
          ? null
          : (map['loadBalancers'] as List).cast<Map<String, dynamic>>(),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfiguration: map['networkConfiguration'] == null
          ? null
          : (map['networkConfiguration'] as Map).cast<String, dynamic>(),
      orderedPlacementStrategies: map['orderedPlacementStrategies'] == null
          ? null
          : (map['orderedPlacementStrategies'] as List)
                .cast<Map<String, dynamic>>(),
      placementConstraints: map['placementConstraints'] == null
          ? null
          : (map['placementConstraints'] as List).cast<Map<String, dynamic>>(),
      platformVersion: map['platformVersion'] == null
          ? null
          : map['platformVersion'] as String,
      propagateTags: map['propagateTags'] == null
          ? null
          : map['propagateTags'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      schedulingStrategy: map['schedulingStrategy'] == null
          ? null
          : map['schedulingStrategy'] as String,
      serviceConnectConfiguration: map['serviceConnectConfiguration'] == null
          ? null
          : (map['serviceConnectConfiguration'] as Map).cast<String, dynamic>(),
      serviceRegistries: map['serviceRegistries'] == null
          ? null
          : (map['serviceRegistries'] as Map).cast<String, dynamic>(),
      sigintRollback: map['sigintRollback'] == null
          ? null
          : map['sigintRollback'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taskDefinition: map['taskDefinition'] == null
          ? null
          : map['taskDefinition'] as String,
      taskDefinitionArgs: map['taskDefinitionArgs'] == null
          ? null
          : EC2ServiceTaskDefinition.fromMap(
              (map['taskDefinitionArgs'] as Map).cast<String, dynamic>(),
            ),
      triggers: map['triggers'] == null
          ? null
          : (map['triggers'] as Map).cast<String, String>(),
      volumeConfiguration: map['volumeConfiguration'] == null
          ? null
          : (map['volumeConfiguration'] as Map).cast<String, dynamic>(),
      vpcLatticeConfigurations: map['vpcLatticeConfigurations'] == null
          ? null
          : (map['vpcLatticeConfigurations'] as List)
                .cast<Map<String, dynamic>>(),
    );
  }
}
