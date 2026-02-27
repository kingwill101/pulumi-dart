import 'package:pulumi/pulumi.dart';
import '../service_alarms/service_alarms.dart';
import '../service_capacity_provider_strategy/service_capacity_provider_strategy.dart';
import '../service_deployment_circuit_breaker/service_deployment_circuit_breaker.dart';
import '../service_deployment_configuration/service_deployment_configuration.dart';
import '../service_deployment_controller/service_deployment_controller.dart';
import '../service_load_balancer/service_load_balancer.dart';
import '../service_network_configuration/service_network_configuration2.dart';
import '../service_ordered_placement_strategy/service_ordered_placement_strategy.dart';
import '../service_placement_constraint/service_placement_constraint.dart';
import '../service_service_connect_configuration/service_service_connect_configuration.dart';
import '../service_service_registries/service_service_registries.dart';
import '../service_volume_configuration/service_volume_configuration.dart';
import '../service_vpc_lattice_configuration/service_vpc_lattice_configuration.dart';
import 'service_args2.dart';

/// > **Note:** To prevent a race condition during service deletion, make sure to set `depends_on` to the related `aws.iam.RolePolicy`; otherwise, the policy may be destroyed too soon and the ECS service will then get stuck in the `DRAINING` state.
///
/// Provides an ECS service - effectively a task that is expected to run until an error occurs or a user terminates it (typically a webserver or a database).
///
/// See [ECS Services section in AWS developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html).
///
/// ## Example Usage
///
///
///
/// ### Ignoring Changes to Desired Count
///
/// You can use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to create an ECS service with an initial count of running instances, then ignore any changes to that count caused externally (e.g. Application Autoscaling).
///
///
///
/// ### Daemon Scheduling Strategy
///
///
///
/// ### CloudWatch Deployment Alarms
///
///
///
/// ### External Deployment Controller
///
///
///
/// ### Blue/Green Deployment with SIGINT Rollback
///
///
///
/// ### Linear Deployment Strategy
///
///
///
/// ### Canary Deployment Strategy
///
///
///
/// ### Redeploy Service On Every Apply
///
/// The key used with `triggers` is arbitrary.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECS services using the `name` together with ecs cluster `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/service:Service imported cluster-name/service-name
/// ```
class Service2 extends CustomResource {
  /// Information about the CloudWatch alarms. See below.
  late final Output<ServiceAlarms?> alarms;

  /// ARN that identifies the service.
  late final Output<String> arn;

  /// ECS automatically redistributes tasks within a service across Availability Zones (AZs) to mitigate the risk of impaired application availability due to underlying infrastructure failures and task lifecycle activities. The valid values are `ENABLED` and `DISABLED`. When creating a new service, if no value is specified, it defaults to `ENABLED` if the service is compatible with AvailabilityZoneRebalancing. When updating an existing service, if no value is specified it defaults to the existing service's AvailabilityZoneRebalancing value. If the service never had an AvailabilityZoneRebalancing value set, Amazon ECS treats this as `DISABLED`.
  late final Output<String> availabilityZoneRebalancing;

  /// Capacity provider strategies to use for the service. Can be one or more. Updating this argument requires `force_new_deployment = true`. See below. Conflicts with `launch_type`.
  late final Output<List<ServiceCapacityProviderStrategy>?>
      capacityProviderStrategies;

  /// ARN of an ECS cluster.
  late final Output<String> cluster;

  /// Configuration block for deployment circuit breaker. See below.
  late final Output<ServiceDeploymentCircuitBreaker?> deploymentCircuitBreaker;

  /// Configuration block for deployment settings. See below.
  late final Output<ServiceDeploymentConfiguration> deploymentConfiguration;

  /// Configuration block for deployment controller configuration. See below.
  late final Output<ServiceDeploymentController?> deploymentController;

  /// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the `DAEMON` scheduling strategy.
  late final Output<int?> deploymentMaximumPercent;

  /// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
  late final Output<int?> deploymentMinimumHealthyPercent;

  /// Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the `DAEMON` scheduling strategy.
  late final Output<int?> desiredCount;

  /// Whether to enable Amazon ECS managed tags for the tasks within the service.
  late final Output<bool?> enableEcsManagedTags;

  /// Whether to enable Amazon ECS Exec for the tasks within the service.
  late final Output<bool?> enableExecuteCommand;

  /// Enable to delete a service even if it wasn't scaled down to zero tasks. It's only necessary to use this if the service uses the `REPLICA` scheduling strategy.
  late final Output<bool?> forceDelete;

  /// Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., `myimage:latest`), roll Fargate tasks onto a newer platform version, or immediately deploy `ordered_placement_strategy` and `placement_constraints` updates.
  /// When using the forceNewDeployment property you also need to configure the triggers property.
  late final Output<bool?> forceNewDeployment;

  /// Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
  late final Output<int?> healthCheckGracePeriodSeconds;

  /// ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the `awsvpc` network mode. If using `awsvpc` network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
  late final Output<String> iamRole;

  /// Launch type on which to run your service. The valid values are `EC2`, `FARGATE`, and `EXTERNAL`. Defaults to `EC2`. Conflicts with `capacity_provider_strategy`.
  late final Output<String> launchType;

  /// Configuration block for load balancers. See below.
  late final Output<List<ServiceLoadBalancer>?> loadBalancers;

  /// Name of the service (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Network configuration for the service. This parameter is required for task definitions that use the `awsvpc` network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
  late final Output<ServiceNetworkConfiguration2?> networkConfiguration;

  /// Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. The maximum number of `ordered_placement_strategy` blocks is `5`. See below.
  late final Output<List<ServiceOrderedPlacementStrategy>?>
      orderedPlacementStrategies;

  /// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless `force_new_deployment` is enabled. Maximum number of `placement_constraints` is `10`. See below.
  late final Output<List<ServicePlacementConstraint>?> placementConstraints;

  /// Platform version on which to run your service. Only applicable for `launch_type` set to `FARGATE`. Defaults to `LATEST`. More information about Fargate platform versions can be found in the [AWS ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html).
  late final Output<String> platformVersion;

  /// Whether to propagate the tags from the task definition or the service to the tasks. The valid values are `SERVICE` and `TASK_DEFINITION`.
  late final Output<String?> propagateTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Scheduling strategy to use for the service. The valid values are `REPLICA` and `DAEMON`. Defaults to `REPLICA`. Note that [*Tasks using the Fargate launch type or the `CODE_DEPLOY` or `EXTERNAL` deployment controller types don't support the `DAEMON` scheduling strategy*](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html).
  late final Output<String?> schedulingStrategy;

  /// ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
  late final Output<ServiceServiceConnectConfiguration?>
      serviceConnectConfiguration;

  /// Service discovery registries for the service. The maximum number of `service_registries` blocks is `1`. See below.
  late final Output<ServiceServiceRegistries?> serviceRegistries;

  /// Whether to enable graceful termination of deployments using SIGINT signals. When enabled, allows customers to safely cancel an in-progress deployment and automatically trigger a rollback to the previous stable state. Defaults to `false`. Only applicable when using `ECS` deployment controller and requires `wait_for_steady_state = true`.
  late final Output<bool?> sigintRollback;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Family and revision (`family:revision`) or full ARN of the task definition that you want to run in your service. Required unless using the `EXTERNAL` deployment controller. If a revision is not specified, the latest `ACTIVE` revision is used.
  late final Output<String?> taskDefinition;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with `"plantimestamp()"`. When using the triggers property you also need to set the forceNewDeployment property to True.
  late final Output<Map<String, String>> triggers;

  /// Configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume. See below.
  late final Output<ServiceVolumeConfiguration?> volumeConfiguration;

  /// The VPC Lattice configuration for your service that allows Lattice to connect, secure, and monitor your service across multiple accounts and VPCs. See below.
  late final Output<List<ServiceVpcLatticeConfiguration>?>
      vpcLatticeConfigurations;

  /// If `true`, this provider will wait for the service to reach a steady state (like [`aws ecs wait services-stable`](https://docs.aws.amazon.com/cli/latest/reference/ecs/wait/services-stable.html)) before continuing. Default `false`.
  late final Output<bool?> waitForSteadyState;

  Service2(
    String name, {
    ServiceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alarms = registerOutput<ServiceAlarms?>('alarms');
    this.arn = registerOutput<String>('arn');
    this.availabilityZoneRebalancing =
        registerOutput<String>('availabilityZoneRebalancing');
    this.capacityProviderStrategies =
        registerOutput<List<ServiceCapacityProviderStrategy>?>(
            'capacityProviderStrategies');
    this.cluster = registerOutput<String>('cluster');
    this.deploymentCircuitBreaker =
        registerOutput<ServiceDeploymentCircuitBreaker?>(
            'deploymentCircuitBreaker');
    this.deploymentConfiguration =
        registerOutput<ServiceDeploymentConfiguration>(
            'deploymentConfiguration');
    this.deploymentController =
        registerOutput<ServiceDeploymentController?>('deploymentController');
    this.deploymentMaximumPercent =
        registerOutput<int?>('deploymentMaximumPercent');
    this.deploymentMinimumHealthyPercent =
        registerOutput<int?>('deploymentMinimumHealthyPercent');
    this.desiredCount = registerOutput<int?>('desiredCount');
    this.enableEcsManagedTags = registerOutput<bool?>('enableEcsManagedTags');
    this.enableExecuteCommand = registerOutput<bool?>('enableExecuteCommand');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.forceNewDeployment = registerOutput<bool?>('forceNewDeployment');
    this.healthCheckGracePeriodSeconds =
        registerOutput<int?>('healthCheckGracePeriodSeconds');
    this.iamRole = registerOutput<String>('iamRole');
    this.launchType = registerOutput<String>('launchType');
    this.loadBalancers =
        registerOutput<List<ServiceLoadBalancer>?>('loadBalancers');
    this.name = registerOutput<String>('name');
    this.networkConfiguration =
        registerOutput<ServiceNetworkConfiguration2?>('networkConfiguration');
    this.orderedPlacementStrategies =
        registerOutput<List<ServiceOrderedPlacementStrategy>?>(
            'orderedPlacementStrategies');
    this.placementConstraints =
        registerOutput<List<ServicePlacementConstraint>?>(
            'placementConstraints');
    this.platformVersion = registerOutput<String>('platformVersion');
    this.propagateTags = registerOutput<String?>('propagateTags');
    this.region = registerOutput<String>('region');
    this.schedulingStrategy = registerOutput<String?>('schedulingStrategy');
    this.serviceConnectConfiguration =
        registerOutput<ServiceServiceConnectConfiguration?>(
            'serviceConnectConfiguration');
    this.serviceRegistries =
        registerOutput<ServiceServiceRegistries?>('serviceRegistries');
    this.sigintRollback = registerOutput<bool?>('sigintRollback');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taskDefinition = registerOutput<String?>('taskDefinition');
    this.triggers = registerOutput<Map<String, String>>('triggers');
    this.volumeConfiguration =
        registerOutput<ServiceVolumeConfiguration?>('volumeConfiguration');
    this.vpcLatticeConfigurations =
        registerOutput<List<ServiceVpcLatticeConfiguration>?>(
            'vpcLatticeConfigurations');
    this.waitForSteadyState = registerOutput<bool?>('waitForSteadyState');
  }
}
