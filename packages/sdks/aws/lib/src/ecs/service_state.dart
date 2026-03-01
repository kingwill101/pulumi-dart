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

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Information about the CloudWatch alarms. See below.
  final pulumi.Input<ServiceAlarms>? alarms;
  /// ARN that identifies the service.
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
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

  /// Creates a new [ServiceState].
  /// [alarms] Information about the CloudWatch alarms. See below.
  /// [arn] ARN that identifies the service.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [taskDefinition] Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Required unless using the `EXTERNAL` deployment controller. If a revision is not specified, the latest `ACTIVE` revision is used.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  /// [volumeConfiguration] Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  /// [vpcLatticeConfigurations] The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  /// [waitForSteadyState] If `true`, this provider will wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  ServiceState({
    pulumi.Output<ServiceAlarms>? alarms,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZoneRebalancing,
    pulumi.Output<List<ServiceCapacityProviderStrategy>>? capacityProviderStrategies,
    pulumi.Output<String>? cluster,
    pulumi.Output<ServiceDeploymentCircuitBreaker>? deploymentCircuitBreaker,
    pulumi.Output<ServiceDeploymentConfiguration>? deploymentConfiguration,
    pulumi.Output<ServiceDeploymentController>? deploymentController,
    pulumi.Output<int>? deploymentMaximumPercent,
    pulumi.Output<int>? deploymentMinimumHealthyPercent,
    pulumi.Output<int>? desiredCount,
    pulumi.Output<bool>? enableEcsManagedTags,
    pulumi.Output<bool>? enableExecuteCommand,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<bool>? forceNewDeployment,
    pulumi.Output<int>? healthCheckGracePeriodSeconds,
    pulumi.Output<String>? iamRole,
    pulumi.Output<String>? launchType,
    pulumi.Output<List<ServiceLoadBalancer>>? loadBalancers,
    pulumi.Output<String>? name,
    pulumi.Output<ServiceNetworkConfiguration>? networkConfiguration,
    pulumi.Output<List<ServiceOrderedPlacementStrategy>>? orderedPlacementStrategies,
    pulumi.Output<List<ServicePlacementConstraint>>? placementConstraints,
    pulumi.Output<String>? platformVersion,
    pulumi.Output<String>? propagateTags,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schedulingStrategy,
    pulumi.Output<ServiceServiceConnectConfiguration>? serviceConnectConfiguration,
    pulumi.Output<ServiceServiceRegistries>? serviceRegistries,
    pulumi.Output<bool>? sigintRollback,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? taskDefinition,
    pulumi.Output<Map<String, String>>? triggers,
    pulumi.Output<ServiceVolumeConfiguration>? volumeConfiguration,
    pulumi.Output<List<ServiceVpcLatticeConfiguration>>? vpcLatticeConfigurations,
    pulumi.Output<bool>? waitForSteadyState,
  }) :
      alarms = pulumi.Input.asOptionalInput<ServiceAlarms>(alarms),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZoneRebalancing = pulumi.Input.asOptionalInput<String>(availabilityZoneRebalancing),
      capacityProviderStrategies = pulumi.Input.asOptionalInput<List<ServiceCapacityProviderStrategy>>(capacityProviderStrategies),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      deploymentCircuitBreaker = pulumi.Input.asOptionalInput<ServiceDeploymentCircuitBreaker>(deploymentCircuitBreaker),
      deploymentConfiguration = pulumi.Input.asOptionalInput<ServiceDeploymentConfiguration>(deploymentConfiguration),
      deploymentController = pulumi.Input.asOptionalInput<ServiceDeploymentController>(deploymentController),
      deploymentMaximumPercent = pulumi.Input.asOptionalInput<int>(deploymentMaximumPercent),
      deploymentMinimumHealthyPercent = pulumi.Input.asOptionalInput<int>(deploymentMinimumHealthyPercent),
      desiredCount = pulumi.Input.asOptionalInput<int>(desiredCount),
      enableEcsManagedTags = pulumi.Input.asOptionalInput<bool>(enableEcsManagedTags),
      enableExecuteCommand = pulumi.Input.asOptionalInput<bool>(enableExecuteCommand),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      forceNewDeployment = pulumi.Input.asOptionalInput<bool>(forceNewDeployment),
      healthCheckGracePeriodSeconds = pulumi.Input.asOptionalInput<int>(healthCheckGracePeriodSeconds),
      iamRole = pulumi.Input.asOptionalInput<String>(iamRole),
      launchType = pulumi.Input.asOptionalInput<String>(launchType),
      loadBalancers = pulumi.Input.asOptionalInput<List<ServiceLoadBalancer>>(loadBalancers),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfiguration = pulumi.Input.asOptionalInput<ServiceNetworkConfiguration>(networkConfiguration),
      orderedPlacementStrategies = pulumi.Input.asOptionalInput<List<ServiceOrderedPlacementStrategy>>(orderedPlacementStrategies),
      placementConstraints = pulumi.Input.asOptionalInput<List<ServicePlacementConstraint>>(placementConstraints),
      platformVersion = pulumi.Input.asOptionalInput<String>(platformVersion),
      propagateTags = pulumi.Input.asOptionalInput<String>(propagateTags),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedulingStrategy = pulumi.Input.asOptionalInput<String>(schedulingStrategy),
      serviceConnectConfiguration = pulumi.Input.asOptionalInput<ServiceServiceConnectConfiguration>(serviceConnectConfiguration),
      serviceRegistries = pulumi.Input.asOptionalInput<ServiceServiceRegistries>(serviceRegistries),
      sigintRollback = pulumi.Input.asOptionalInput<bool>(sigintRollback),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      taskDefinition = pulumi.Input.asOptionalInput<String>(taskDefinition),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers),
      volumeConfiguration = pulumi.Input.asOptionalInput<ServiceVolumeConfiguration>(volumeConfiguration),
      vpcLatticeConfigurations = pulumi.Input.asOptionalInput<List<ServiceVpcLatticeConfiguration>>(vpcLatticeConfigurations),
      waitForSteadyState = pulumi.Input.asOptionalInput<bool>(waitForSteadyState);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': ?pulumi.Input.mapOptionalInputValue<ServiceAlarms, Map<String, dynamic>>(alarms, (value) => value.toMap()),
      'arn': ?arn,
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
      'tagsAll': ?tagsAll,
      'taskDefinition': ?taskDefinition,
      'triggers': ?triggers,
      'volumeConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceVolumeConfiguration, Map<String, dynamic>>(volumeConfiguration, (value) => value.toMap()),
      'vpcLatticeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ServiceVpcLatticeConfiguration>, List<Map<String, dynamic>>>(vpcLatticeConfigurations, (value) => pulumi.Input.encodeList<ServiceVpcLatticeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForSteadyState': ?waitForSteadyState,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      alarms: map['alarms'] == null ? null : pulumi.Output.create<ServiceAlarms>(ServiceAlarms.fromMap((map['alarms'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZoneRebalancing: map['availabilityZoneRebalancing'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneRebalancing'] as String),
      capacityProviderStrategies: map['capacityProviderStrategies'] == null ? null : pulumi.Output.create<List<ServiceCapacityProviderStrategy>>(pulumi.Input.decodeList<ServiceCapacityProviderStrategy>(map['capacityProviderStrategies'], (value) => ServiceCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>()))),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      deploymentCircuitBreaker: map['deploymentCircuitBreaker'] == null ? null : pulumi.Output.create<ServiceDeploymentCircuitBreaker>(ServiceDeploymentCircuitBreaker.fromMap((map['deploymentCircuitBreaker'] as Map).cast<String, dynamic>())),
      deploymentConfiguration: map['deploymentConfiguration'] == null ? null : pulumi.Output.create<ServiceDeploymentConfiguration>(ServiceDeploymentConfiguration.fromMap((map['deploymentConfiguration'] as Map).cast<String, dynamic>())),
      deploymentController: map['deploymentController'] == null ? null : pulumi.Output.create<ServiceDeploymentController>(ServiceDeploymentController.fromMap((map['deploymentController'] as Map).cast<String, dynamic>())),
      deploymentMaximumPercent: map['deploymentMaximumPercent'] == null ? null : pulumi.Output.create<int>(map['deploymentMaximumPercent'] as int),
      deploymentMinimumHealthyPercent: map['deploymentMinimumHealthyPercent'] == null ? null : pulumi.Output.create<int>(map['deploymentMinimumHealthyPercent'] as int),
      desiredCount: map['desiredCount'] == null ? null : pulumi.Output.create<int>(map['desiredCount'] as int),
      enableEcsManagedTags: map['enableEcsManagedTags'] == null ? null : pulumi.Output.create<bool>(map['enableEcsManagedTags'] as bool),
      enableExecuteCommand: map['enableExecuteCommand'] == null ? null : pulumi.Output.create<bool>(map['enableExecuteCommand'] as bool),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      forceNewDeployment: map['forceNewDeployment'] == null ? null : pulumi.Output.create<bool>(map['forceNewDeployment'] as bool),
      healthCheckGracePeriodSeconds: map['healthCheckGracePeriodSeconds'] == null ? null : pulumi.Output.create<int>(map['healthCheckGracePeriodSeconds'] as int),
      iamRole: map['iamRole'] == null ? null : pulumi.Output.create<String>(map['iamRole'] as String),
      launchType: map['launchType'] == null ? null : pulumi.Output.create<String>(map['launchType'] as String),
      loadBalancers: map['loadBalancers'] == null ? null : pulumi.Output.create<List<ServiceLoadBalancer>>(pulumi.Input.decodeList<ServiceLoadBalancer>(map['loadBalancers'], (value) => ServiceLoadBalancer.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<ServiceNetworkConfiguration>(ServiceNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      orderedPlacementStrategies: map['orderedPlacementStrategies'] == null ? null : pulumi.Output.create<List<ServiceOrderedPlacementStrategy>>(pulumi.Input.decodeList<ServiceOrderedPlacementStrategy>(map['orderedPlacementStrategies'], (value) => ServiceOrderedPlacementStrategy.fromMap((value as Map).cast<String, dynamic>()))),
      placementConstraints: map['placementConstraints'] == null ? null : pulumi.Output.create<List<ServicePlacementConstraint>>(pulumi.Input.decodeList<ServicePlacementConstraint>(map['placementConstraints'], (value) => ServicePlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      platformVersion: map['platformVersion'] == null ? null : pulumi.Output.create<String>(map['platformVersion'] as String),
      propagateTags: map['propagateTags'] == null ? null : pulumi.Output.create<String>(map['propagateTags'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedulingStrategy: map['schedulingStrategy'] == null ? null : pulumi.Output.create<String>(map['schedulingStrategy'] as String),
      serviceConnectConfiguration: map['serviceConnectConfiguration'] == null ? null : pulumi.Output.create<ServiceServiceConnectConfiguration>(ServiceServiceConnectConfiguration.fromMap((map['serviceConnectConfiguration'] as Map).cast<String, dynamic>())),
      serviceRegistries: map['serviceRegistries'] == null ? null : pulumi.Output.create<ServiceServiceRegistries>(ServiceServiceRegistries.fromMap((map['serviceRegistries'] as Map).cast<String, dynamic>())),
      sigintRollback: map['sigintRollback'] == null ? null : pulumi.Output.create<bool>(map['sigintRollback'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      taskDefinition: map['taskDefinition'] == null ? null : pulumi.Output.create<String>(map['taskDefinition'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
      volumeConfiguration: map['volumeConfiguration'] == null ? null : pulumi.Output.create<ServiceVolumeConfiguration>(ServiceVolumeConfiguration.fromMap((map['volumeConfiguration'] as Map).cast<String, dynamic>())),
      vpcLatticeConfigurations: map['vpcLatticeConfigurations'] == null ? null : pulumi.Output.create<List<ServiceVpcLatticeConfiguration>>(pulumi.Input.decodeList<ServiceVpcLatticeConfiguration>(map['vpcLatticeConfigurations'], (value) => ServiceVpcLatticeConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      waitForSteadyState: map['waitForSteadyState'] == null ? null : pulumi.Output.create<bool>(map['waitForSteadyState'] as bool),
    );
  }
}

