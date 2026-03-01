// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_service_task_definition.dart';
import 'package:pulumi_aws/ecs.dart' as pulumi_aws_ecs;

/// {@template pulumi_ecs_fargate_service_args_doc}
/// The set of arguments for FargateService.
/// {@endtemplate}
/// {@macro pulumi_ecs_fargate_service_args_doc}
class FargateServiceArgs {
  /// Information about the CloudWatch alarms. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceAlarms>? alarms;
  /// Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  final pulumi.Input<bool>? assignPublicIp;
  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  final pulumi.Input<String>? availabilityZoneRebalancing;
  /// ARN of an ECS cluster.
  final pulumi.Input<String>? cluster;
  /// If `true`, this provider will not wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  final pulumi.Input<bool>? continueBeforeSteadyState;
  /// Configuration block for deployment circuit breaker. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceDeploymentCircuitBreaker>? deploymentCircuitBreaker;
  /// Configuration block for deployment settings. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceDeploymentConfiguration>? deploymentConfiguration;
  /// Configuration block for deployment controller configuration. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceDeploymentController>? deploymentController;
  /// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  final pulumi.Input<int>? deploymentMaximumPercent;
  /// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  final pulumi.Input<int>? deploymentMinimumHealthyPercent;
  /// Number of instances of the task definition to place and keep running. Defaults to 1. Do not specify if using the `DAEMON` scheduling strategy.
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
  final pulumi.Input<List<pulumi_aws_ecs.ServiceLoadBalancer>>? loadBalancers;
  /// Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceNetworkConfiguration>? networkConfiguration;
  /// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. Maximum number of `placement_constraints` is `10`. See below.
  final pulumi.Input<List<pulumi_aws_ecs.ServicePlacementConstraint>>? placementConstraints;
  /// Platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  final pulumi.Input<String>? platformVersion;
  /// Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  final pulumi.Input<String>? propagateTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  final pulumi.Input<String>? schedulingStrategy;
  /// ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceServiceConnectConfiguration>? serviceConnectConfiguration;
  /// Service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceServiceRegistries>? serviceRegistries;
  /// Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to `false`. Only applicable when using `ECS` deployment controller and requires `wait_for_steady_state = true`.
  final pulumi.Input<bool>? sigintRollback;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  final pulumi.Input<String>? taskDefinition;
  /// The args of task definition that you want to run in your service. Either [taskDefinition] or [taskDefinitionArgs] must be provided.
  final pulumi.Input<FargateServiceTaskDefinition>? taskDefinitionArgs;
  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  final pulumi.Input<Map<String, String>>? triggers;
  /// Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  final pulumi.Input<pulumi_aws_ecs.ServiceVolumeConfiguration>? volumeConfiguration;
  /// The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  final pulumi.Input<List<pulumi_aws_ecs.ServiceVpcLatticeConfiguration>>? vpcLatticeConfigurations;

  /// Creates a new [FargateServiceArgs].
  /// [alarms] Information about the CloudWatch alarms. See below.
  /// [assignPublicIp] Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  /// [availabilityZoneRebalancing] ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  /// [cluster] ARN of an ECS cluster.
  /// [continueBeforeSteadyState] If `true`, this provider will not wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  /// [deploymentCircuitBreaker] Configuration block for deployment circuit breaker. See below.
  /// [deploymentConfiguration] Configuration block for deployment settings. See below.
  /// [deploymentController] Configuration block for deployment controller configuration. See below.
  /// [deploymentMaximumPercent] Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  /// [deploymentMinimumHealthyPercent] Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  /// [desiredCount] Number of instances of the task definition to place and keep running. Defaults to 1. Do not specify if using the `DAEMON` scheduling strategy.
  /// [enableEcsManagedTags] Whether to enable Amazon ECS managed tags for the tasks within the service.
  /// [enableExecuteCommand] Whether to enable Amazon ECS Exec for the tasks within the service.
  /// [forceDelete] Enable to delete a service even if it wasn't scaled down to zero tasks. It's only necessary to use this if the service uses the `REPLICA` scheduling strategy.
  /// [forceNewDeployment] Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., `myimage:latest`), roll Fargate tasks onto a newer platform version, or immediately deploy `ordered_placement_strategy` and `placement_constraints` updates.
  /// [healthCheckGracePeriodSeconds] Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
  /// [iamRole] ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the `awsvpc` network mode. If using `awsvpc` network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
  /// [loadBalancers] Configuration block for load balancers. See below.
  /// [name] Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  /// [networkConfiguration] Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
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
  FargateServiceArgs({
    pulumi.Output<pulumi_aws_ecs.ServiceAlarms>? alarms,
    pulumi.Output<bool>? assignPublicIp,
    pulumi.Output<String>? availabilityZoneRebalancing,
    pulumi.Output<String>? cluster,
    pulumi.Output<bool>? continueBeforeSteadyState,
    pulumi.Output<pulumi_aws_ecs.ServiceDeploymentCircuitBreaker>? deploymentCircuitBreaker,
    pulumi.Output<pulumi_aws_ecs.ServiceDeploymentConfiguration>? deploymentConfiguration,
    pulumi.Output<pulumi_aws_ecs.ServiceDeploymentController>? deploymentController,
    pulumi.Output<int>? deploymentMaximumPercent,
    pulumi.Output<int>? deploymentMinimumHealthyPercent,
    pulumi.Output<int>? desiredCount,
    pulumi.Output<bool>? enableEcsManagedTags,
    pulumi.Output<bool>? enableExecuteCommand,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<bool>? forceNewDeployment,
    pulumi.Output<int>? healthCheckGracePeriodSeconds,
    pulumi.Output<String>? iamRole,
    pulumi.Output<List<pulumi_aws_ecs.ServiceLoadBalancer>>? loadBalancers,
    pulumi.Output<String>? name,
    pulumi.Output<pulumi_aws_ecs.ServiceNetworkConfiguration>? networkConfiguration,
    pulumi.Output<List<pulumi_aws_ecs.ServicePlacementConstraint>>? placementConstraints,
    pulumi.Output<String>? platformVersion,
    pulumi.Output<String>? propagateTags,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schedulingStrategy,
    pulumi.Output<pulumi_aws_ecs.ServiceServiceConnectConfiguration>? serviceConnectConfiguration,
    pulumi.Output<pulumi_aws_ecs.ServiceServiceRegistries>? serviceRegistries,
    pulumi.Output<bool>? sigintRollback,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? taskDefinition,
    pulumi.Output<FargateServiceTaskDefinition>? taskDefinitionArgs,
    pulumi.Output<Map<String, String>>? triggers,
    pulumi.Output<pulumi_aws_ecs.ServiceVolumeConfiguration>? volumeConfiguration,
    pulumi.Output<List<pulumi_aws_ecs.ServiceVpcLatticeConfiguration>>? vpcLatticeConfigurations,
  }) :
      alarms = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceAlarms>(alarms),
      assignPublicIp = pulumi.Input.asOptionalInput<bool>(assignPublicIp),
      availabilityZoneRebalancing = pulumi.Input.asOptionalInput<String>(availabilityZoneRebalancing),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      continueBeforeSteadyState = pulumi.Input.asOptionalInput<bool>(continueBeforeSteadyState),
      deploymentCircuitBreaker = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceDeploymentCircuitBreaker>(deploymentCircuitBreaker),
      deploymentConfiguration = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceDeploymentConfiguration>(deploymentConfiguration),
      deploymentController = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceDeploymentController>(deploymentController),
      deploymentMaximumPercent = pulumi.Input.asOptionalInput<int>(deploymentMaximumPercent),
      deploymentMinimumHealthyPercent = pulumi.Input.asOptionalInput<int>(deploymentMinimumHealthyPercent),
      desiredCount = pulumi.Input.asOptionalInput<int>(desiredCount),
      enableEcsManagedTags = pulumi.Input.asOptionalInput<bool>(enableEcsManagedTags),
      enableExecuteCommand = pulumi.Input.asOptionalInput<bool>(enableExecuteCommand),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      forceNewDeployment = pulumi.Input.asOptionalInput<bool>(forceNewDeployment),
      healthCheckGracePeriodSeconds = pulumi.Input.asOptionalInput<int>(healthCheckGracePeriodSeconds),
      iamRole = pulumi.Input.asOptionalInput<String>(iamRole),
      loadBalancers = pulumi.Input.asOptionalInput<List<pulumi_aws_ecs.ServiceLoadBalancer>>(loadBalancers),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfiguration = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceNetworkConfiguration>(networkConfiguration),
      placementConstraints = pulumi.Input.asOptionalInput<List<pulumi_aws_ecs.ServicePlacementConstraint>>(placementConstraints),
      platformVersion = pulumi.Input.asOptionalInput<String>(platformVersion),
      propagateTags = pulumi.Input.asOptionalInput<String>(propagateTags),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedulingStrategy = pulumi.Input.asOptionalInput<String>(schedulingStrategy),
      serviceConnectConfiguration = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceServiceConnectConfiguration>(serviceConnectConfiguration),
      serviceRegistries = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceServiceRegistries>(serviceRegistries),
      sigintRollback = pulumi.Input.asOptionalInput<bool>(sigintRollback),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taskDefinition = pulumi.Input.asOptionalInput<String>(taskDefinition),
      taskDefinitionArgs = pulumi.Input.asOptionalInput<FargateServiceTaskDefinition>(taskDefinitionArgs),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers),
      volumeConfiguration = pulumi.Input.asOptionalInput<pulumi_aws_ecs.ServiceVolumeConfiguration>(volumeConfiguration),
      vpcLatticeConfigurations = pulumi.Input.asOptionalInput<List<pulumi_aws_ecs.ServiceVpcLatticeConfiguration>>(vpcLatticeConfigurations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceAlarms, Map<String, dynamic>>(alarms, (value) => value.toMap()),
      'assignPublicIp': ?assignPublicIp,
      'availabilityZoneRebalancing': ?availabilityZoneRebalancing,
      'cluster': ?cluster,
      'continueBeforeSteadyState': ?continueBeforeSteadyState,
      'deploymentCircuitBreaker': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceDeploymentCircuitBreaker, Map<String, dynamic>>(deploymentCircuitBreaker, (value) => value.toMap()),
      'deploymentConfiguration': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceDeploymentConfiguration, Map<String, dynamic>>(deploymentConfiguration, (value) => value.toMap()),
      'deploymentController': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceDeploymentController, Map<String, dynamic>>(deploymentController, (value) => value.toMap()),
      'deploymentMaximumPercent': ?deploymentMaximumPercent,
      'deploymentMinimumHealthyPercent': ?deploymentMinimumHealthyPercent,
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'forceDelete': ?forceDelete,
      'forceNewDeployment': ?forceNewDeployment,
      'healthCheckGracePeriodSeconds': ?healthCheckGracePeriodSeconds,
      'iamRole': ?iamRole,
      'loadBalancers': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ecs.ServiceLoadBalancer>, List<Map<String, dynamic>>>(loadBalancers, (value) => pulumi.Input.encodeList<pulumi_aws_ecs.ServiceLoadBalancer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'placementConstraints': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ecs.ServicePlacementConstraint>, List<Map<String, dynamic>>>(placementConstraints, (value) => pulumi.Input.encodeList<pulumi_aws_ecs.ServicePlacementConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'region': ?region,
      'schedulingStrategy': ?schedulingStrategy,
      'serviceConnectConfiguration': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceServiceConnectConfiguration, Map<String, dynamic>>(serviceConnectConfiguration, (value) => value.toMap()),
      'serviceRegistries': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceServiceRegistries, Map<String, dynamic>>(serviceRegistries, (value) => value.toMap()),
      'sigintRollback': ?sigintRollback,
      'tags': ?tags,
      'taskDefinition': ?taskDefinition,
      'taskDefinitionArgs': ?pulumi.Input.mapOptionalInputValue<FargateServiceTaskDefinition, Map<String, dynamic>>(taskDefinitionArgs, (value) => value.toMap()),
      'triggers': ?triggers,
      'volumeConfiguration': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecs.ServiceVolumeConfiguration, Map<String, dynamic>>(volumeConfiguration, (value) => value.toMap()),
      'vpcLatticeConfigurations': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ecs.ServiceVpcLatticeConfiguration>, List<Map<String, dynamic>>>(vpcLatticeConfigurations, (value) => pulumi.Input.encodeList<pulumi_aws_ecs.ServiceVpcLatticeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FargateServiceArgs.fromMap(Map<String, dynamic> map) {
    return FargateServiceArgs(
      alarms: map['alarms'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceAlarms>(pulumi_aws_ecs.ServiceAlarms.fromMap((map['alarms'] as Map).cast<String, dynamic>())),
      assignPublicIp: map['assignPublicIp'] == null ? null : pulumi.Output.create<bool>(map['assignPublicIp'] as bool),
      availabilityZoneRebalancing: map['availabilityZoneRebalancing'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneRebalancing'] as String),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      continueBeforeSteadyState: map['continueBeforeSteadyState'] == null ? null : pulumi.Output.create<bool>(map['continueBeforeSteadyState'] as bool),
      deploymentCircuitBreaker: map['deploymentCircuitBreaker'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceDeploymentCircuitBreaker>(pulumi_aws_ecs.ServiceDeploymentCircuitBreaker.fromMap((map['deploymentCircuitBreaker'] as Map).cast<String, dynamic>())),
      deploymentConfiguration: map['deploymentConfiguration'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceDeploymentConfiguration>(pulumi_aws_ecs.ServiceDeploymentConfiguration.fromMap((map['deploymentConfiguration'] as Map).cast<String, dynamic>())),
      deploymentController: map['deploymentController'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceDeploymentController>(pulumi_aws_ecs.ServiceDeploymentController.fromMap((map['deploymentController'] as Map).cast<String, dynamic>())),
      deploymentMaximumPercent: map['deploymentMaximumPercent'] == null ? null : pulumi.Output.create<int>(map['deploymentMaximumPercent'] as int),
      deploymentMinimumHealthyPercent: map['deploymentMinimumHealthyPercent'] == null ? null : pulumi.Output.create<int>(map['deploymentMinimumHealthyPercent'] as int),
      desiredCount: map['desiredCount'] == null ? null : pulumi.Output.create<int>(map['desiredCount'] as int),
      enableEcsManagedTags: map['enableEcsManagedTags'] == null ? null : pulumi.Output.create<bool>(map['enableEcsManagedTags'] as bool),
      enableExecuteCommand: map['enableExecuteCommand'] == null ? null : pulumi.Output.create<bool>(map['enableExecuteCommand'] as bool),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      forceNewDeployment: map['forceNewDeployment'] == null ? null : pulumi.Output.create<bool>(map['forceNewDeployment'] as bool),
      healthCheckGracePeriodSeconds: map['healthCheckGracePeriodSeconds'] == null ? null : pulumi.Output.create<int>(map['healthCheckGracePeriodSeconds'] as int),
      iamRole: map['iamRole'] == null ? null : pulumi.Output.create<String>(map['iamRole'] as String),
      loadBalancers: map['loadBalancers'] == null ? null : pulumi.Output.create<List<pulumi_aws_ecs.ServiceLoadBalancer>>(pulumi.Input.decodeList<pulumi_aws_ecs.ServiceLoadBalancer>(map['loadBalancers'], (value) => pulumi_aws_ecs.ServiceLoadBalancer.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceNetworkConfiguration>(pulumi_aws_ecs.ServiceNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      placementConstraints: map['placementConstraints'] == null ? null : pulumi.Output.create<List<pulumi_aws_ecs.ServicePlacementConstraint>>(pulumi.Input.decodeList<pulumi_aws_ecs.ServicePlacementConstraint>(map['placementConstraints'], (value) => pulumi_aws_ecs.ServicePlacementConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      platformVersion: map['platformVersion'] == null ? null : pulumi.Output.create<String>(map['platformVersion'] as String),
      propagateTags: map['propagateTags'] == null ? null : pulumi.Output.create<String>(map['propagateTags'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedulingStrategy: map['schedulingStrategy'] == null ? null : pulumi.Output.create<String>(map['schedulingStrategy'] as String),
      serviceConnectConfiguration: map['serviceConnectConfiguration'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceServiceConnectConfiguration>(pulumi_aws_ecs.ServiceServiceConnectConfiguration.fromMap((map['serviceConnectConfiguration'] as Map).cast<String, dynamic>())),
      serviceRegistries: map['serviceRegistries'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceServiceRegistries>(pulumi_aws_ecs.ServiceServiceRegistries.fromMap((map['serviceRegistries'] as Map).cast<String, dynamic>())),
      sigintRollback: map['sigintRollback'] == null ? null : pulumi.Output.create<bool>(map['sigintRollback'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      taskDefinition: map['taskDefinition'] == null ? null : pulumi.Output.create<String>(map['taskDefinition'] as String),
      taskDefinitionArgs: map['taskDefinitionArgs'] == null ? null : pulumi.Output.create<FargateServiceTaskDefinition>(FargateServiceTaskDefinition.fromMap((map['taskDefinitionArgs'] as Map).cast<String, dynamic>())),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
      volumeConfiguration: map['volumeConfiguration'] == null ? null : pulumi.Output.create<pulumi_aws_ecs.ServiceVolumeConfiguration>(pulumi_aws_ecs.ServiceVolumeConfiguration.fromMap((map['volumeConfiguration'] as Map).cast<String, dynamic>())),
      vpcLatticeConfigurations: map['vpcLatticeConfigurations'] == null ? null : pulumi.Output.create<List<pulumi_aws_ecs.ServiceVpcLatticeConfiguration>>(pulumi.Input.decodeList<pulumi_aws_ecs.ServiceVpcLatticeConfiguration>(map['vpcLatticeConfigurations'], (value) => pulumi_aws_ecs.ServiceVpcLatticeConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

