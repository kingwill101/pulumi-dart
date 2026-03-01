// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_strategy_item.dart';
import 'deployment_configuration.dart';
import 'deployment_controller.dart';
import 'load_balancer.dart';
import 'network_configuration.dart';
import 'placement_constraint.dart';
import 'placement_strategy.dart';
import 'service_connect_configuration.dart';
import 'service_registry.dart';
import 'service_volume_configuration.dart';
import 'tag.dart';

/// Definition of awsEcsService
class AwsEcsServiceProperties {
  /// The capacity provider strategy to use for the service. If a ``capacityProviderStrategy`` is specified, the ``launchType`` parameter must be omitted. If no ``capacityProviderStrategy`` or ``launchType`` is specified, the ``defaultCapacityProviderStrategy`` for the cluster is used. A capacity provider strategy may contain a maximum of 6 capacity providers.
  final List<CapacityProviderStrategyItem>? capacityProviderStrategy;
  /// The short name or full Amazon Resource Name (ARN) of the cluster that you run your service on. If you do not specify a cluster, the default cluster is assumed.
  final String? cluster;
  /// Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks. The ``DeploymentConfiguration`` property specifies optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
  final DeploymentConfiguration? deploymentConfiguration;
  /// The deployment controller to use for the service. If no deployment controller is specified, the default value of ``ECS`` is used. The deployment controller to use for the service. For more information, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html) in the *Amazon Elastic Container Service Developer Guide*.
  final DeploymentController? deploymentController;
  /// The number of instantiations of the specified task definition to place and keep running in your service. For new services, if a desired count is not specified, a default value of ``1`` is used. When using the ``DAEMON`` scheduling strategy, the desired count is not required. For existing services, if a desired count is not specified, it is omitted from the operation.
  final int? desiredCount;
  /// Specifies whether to turn on Amazon ECS managed tags for the tasks within the service. For more information, see [Tagging your Amazon ECS resources](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html) in the *Amazon Elastic Container Service Developer Guide*. When you use Amazon ECS managed tags, you need to set the ``propagateTags`` request parameter.
  final bool? enableECSManagedTags;
  /// Determines whether the execute command functionality is turned on for the service. If ``true``, the execute command functionality is turned on for all containers in tasks as part of the service.
  final bool? enableExecuteCommand;
  /// The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started. This is only used when your service is configured to use a load balancer. If your service has a load balancer defined and you don't specify a health check grace period value, the default value of ``0`` is used. If you do not use an Elastic Load Balancing, we recommend that you use the ``startPeriod`` in the task definition health check parameters. For more information, see [Health check](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html). If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds (about 69 years). During that time, the Amazon ECS service scheduler ignores health check status. This grace period can prevent the service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.
  final int? healthCheckGracePeriodSeconds;
  /// The launch type on which to run your service. For more information, see [Amazon ECS Launch Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html) in the *Amazon Elastic Container Service Developer Guide*.
  final String? launchType;
  /// A list of load balancer objects to associate with the service. If you specify the ``Role`` property, ``LoadBalancers`` must be specified as well. For information about the number of load balancers that you can specify per service, see [Service Load Balancing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html) in the *Amazon Elastic Container Service Developer Guide*.
  final List<LoadBalancer>? loadBalancers;
  /// Property name
  final String? name;
  /// The network configuration for the service. This parameter is required for task definitions that use the ``awsvpc`` network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*. The ``NetworkConfiguration`` property specifies an object representing the network configuration for a task or service.
  final NetworkConfiguration? networkConfiguration;
  /// An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints for each task. This limit includes constraints in the task definition and those specified at runtime.
  final List<PlacementConstraint>? placementConstraints;
  /// The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules for each service.
  final List<PlacementStrategy>? placementStrategies;
  /// The platform version that your tasks in the service are running on. A platform version is specified only for tasks using the Fargate launch type. If one isn't specified, the ``LATEST`` platform version is used. For more information, see [platform versions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html) in the *Amazon Elastic Container Service Developer Guide*.
  final String? platformVersion;
  /// Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags aren't propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the [TagResource](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html) API action. The default is ``NONE``.
  final String? propagateTags;
  /// The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is only permitted if you are using a load balancer with your service and your task definition doesn't use the ``awsvpc`` network mode. If you specify the ``role`` parameter, you must also specify a load balancer object with the ``loadBalancers`` parameter.  If your account has already created the Amazon ECS service-linked role, that role is used for your service unless you specify a role here. The service-linked role is required if your task definition uses the ``awsvpc`` network mode or if the service is configured to use service discovery, an external deployment controller, multiple target groups, or Elastic Inference accelerators in which case you don't specify a role here. For more information, see [Using service-linked roles for Amazon ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html) in the *Amazon Elastic Container Service Developer Guide*.  If your specified role has a path other than ``/``, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name ``bar`` has a path of ``/foo/`` then you would specify ``/foo/bar`` as the role name. For more information, see [Friendly names and paths](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) in the *IAM User Guide*.
  final String? role;
  /// The scheduling strategy to use for the service. For more information, see [Services](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html). There are two service scheduler strategies available:  +   ``REPLICA``-The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. This scheduler strategy is required if the service uses the ``CODE_DEPLOY`` or ``EXTERNAL`` deployment controller types.  +   ``DAEMON``-The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that don't meet the placement constraints. When you're using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.  Tasks using the Fargate launch type or the ``CODE_DEPLOY`` or ``EXTERNAL`` deployment controller types don't support the ``DAEMON`` scheduling strategy.
  final String? schedulingStrategy;
  /// Property serviceArn
  final String? serviceArn;
  /// The configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*. The Service Connect configuration of your Amazon ECS service. The configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  final ServiceConnectConfiguration? serviceConnectConfiguration;
  /// The name of your service. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.  The stack update fails if you change any properties that require replacement and the ``ServiceName`` is configured. This is because AWS CloudFormation creates the replacement service first, but each ``ServiceName`` must be unique in the cluster.
  final String? serviceName;
  /// The details of the service discovery registry to associate with this service. For more information, see [Service discovery](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).  Each service may be associated with one service registry. Multiple service registries for each service isn't supported.
  final List<ServiceRegistry>? serviceRegistries;
  /// The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. When a service is deleted, the tags are deleted as well. The following basic restrictions apply to tags:  +  Maximum number of tags per resource - 50  +  For each resource, each tag key must be unique, and each tag key can have only one value.  +  Maximum key length - 128 Unicode characters in UTF-8  +  Maximum value length - 256 Unicode characters in UTF-8  +  If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.  +  Tag keys and values are case-sensitive.  +  Do not use ``aws:``, ``AWS:``, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
  final List<Tag>? tags;
  /// The ``family`` and ``revision`` (``family:revision``) or full ARN of the task definition to run in your service. If a ``revision`` isn't specified, the latest ``ACTIVE`` revision is used. A task definition must be specified if the service uses either the ``ECS`` or ``CODE_DEPLOY`` deployment controllers. For more information about deployment types, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).
  final String? taskDefinition;
  /// The configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume.
  final List<ServiceVolumeConfiguration>? volumeConfigurations;

  /// Creates a new [AwsEcsServiceProperties].
  /// [capacityProviderStrategy] The capacity provider strategy to use for the service. If a ``capacityProviderStrategy`` is specified, the ``launchType`` parameter must be omitted. If no ``capacityProviderStrategy`` or ``launchType`` is specified, the ``defaultCapacityProviderStrategy`` for the cluster is used. A capacity provider strategy may contain a maximum of 6 capacity providers.
  /// [cluster] The short name or full Amazon Resource Name (ARN) of the cluster that you run your service on. If you do not specify a cluster, the default cluster is assumed.
  /// [deploymentConfiguration] Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks. The ``DeploymentConfiguration`` property specifies optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
  /// [deploymentController] The deployment controller to use for the service. If no deployment controller is specified, the default value of ``ECS`` is used. The deployment controller to use for the service. For more information, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [desiredCount] The number of instantiations of the specified task definition to place and keep running in your service. For new services, if a desired count is not specified, a default value of ``1`` is used. When using the ``DAEMON`` scheduling strategy, the desired count is not required. For existing services, if a desired count is not specified, it is omitted from the operation.
  /// [enableECSManagedTags] Specifies whether to turn on Amazon ECS managed tags for the tasks within the service. For more information, see [Tagging your Amazon ECS resources](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html) in the *Amazon Elastic Container Service Developer Guide*. When you use Amazon ECS managed tags, you need to set the ``propagateTags`` request parameter.
  /// [enableExecuteCommand] Determines whether the execute command functionality is turned on for the service. If ``true``, the execute command functionality is turned on for all containers in tasks as part of the service.
  /// [healthCheckGracePeriodSeconds] The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started. This is only used when your service is configured to use a load balancer. If your service has a load balancer defined and you don't specify a health check grace period value, the default value of ``0`` is used. If you do not use an Elastic Load Balancing, we recommend that you use the ``startPeriod`` in the task definition health check parameters. For more information, see [Health check](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html). If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds (about 69 years). During that time, the Amazon ECS service scheduler ignores health check status. This grace period can prevent the service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.
  /// [launchType] The launch type on which to run your service. For more information, see [Amazon ECS Launch Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [loadBalancers] A list of load balancer objects to associate with the service. If you specify the ``Role`` property, ``LoadBalancers`` must be specified as well. For information about the number of load balancers that you can specify per service, see [Service Load Balancing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [name] Property name
  /// [networkConfiguration] The network configuration for the service. This parameter is required for task definitions that use the ``awsvpc`` network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) in the *Amazon Elastic Container Service Developer Guide*. The ``NetworkConfiguration`` property specifies an object representing the network configuration for a task or service.
  /// [placementConstraints] An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints for each task. This limit includes constraints in the task definition and those specified at runtime.
  /// [placementStrategies] The placement strategy objects to use for tasks in your service. You can specify a maximum of 5 strategy rules for each service.
  /// [platformVersion] The platform version that your tasks in the service are running on. A platform version is specified only for tasks using the Fargate launch type. If one isn't specified, the ``LATEST`` platform version is used. For more information, see [platform versions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [propagateTags] Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags aren't propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the [TagResource](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html) API action. The default is ``NONE``.
  /// [role] The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is only permitted if you are using a load balancer with your service and your task definition doesn't use the ``awsvpc`` network mode. If you specify the ``role`` parameter, you must also specify a load balancer object with the ``loadBalancers`` parameter.  If your account has already created the Amazon ECS service-linked role, that role is used for your service unless you specify a role here. The service-linked role is required if your task definition uses the ``awsvpc`` network mode or if the service is configured to use service discovery, an external deployment controller, multiple target groups, or Elastic Inference accelerators in which case you don't specify a role here. For more information, see [Using service-linked roles for Amazon ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html) in the *Amazon Elastic Container Service Developer Guide*.  If your specified role has a path other than ``/``, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name ``bar`` has a path of ``/foo/`` then you would specify ``/foo/bar`` as the role name. For more information, see [Friendly names and paths](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) in the *IAM User Guide*.
  /// [schedulingStrategy] The scheduling strategy to use for the service. For more information, see [Services](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html). There are two service scheduler strategies available:  +   ``REPLICA``-The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. This scheduler strategy is required if the service uses the ``CODE_DEPLOY`` or ``EXTERNAL`` deployment controller types.  +   ``DAEMON``-The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that don't meet the placement constraints. When you're using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.  Tasks using the Fargate launch type or the ``CODE_DEPLOY`` or ``EXTERNAL`` deployment controller types don't support the ``DAEMON`` scheduling strategy.
  /// [serviceArn] Property serviceArn
  /// [serviceConnectConfiguration] The configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*. The Service Connect configuration of your Amazon ECS service. The configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [serviceName] The name of your service. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.  The stack update fails if you change any properties that require replacement and the ``ServiceName`` is configured. This is because AWS CloudFormation creates the replacement service first, but each ``ServiceName`` must be unique in the cluster.
  /// [serviceRegistries] The details of the service discovery registry to associate with this service. For more information, see [Service discovery](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).  Each service may be associated with one service registry. Multiple service registries for each service isn't supported.
  /// [tags] The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. When a service is deleted, the tags are deleted as well. The following basic restrictions apply to tags:  +  Maximum number of tags per resource - 50  +  For each resource, each tag key must be unique, and each tag key can have only one value.  +  Maximum key length - 128 Unicode characters in UTF-8  +  Maximum value length - 256 Unicode characters in UTF-8  +  If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.  +  Tag keys and values are case-sensitive.  +  Do not use ``aws:``, ``AWS:``, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
  /// [taskDefinition] The ``family`` and ``revision`` (``family:revision``) or full ARN of the task definition to run in your service. If a ``revision`` isn't specified, the latest ``ACTIVE`` revision is used. A task definition must be specified if the service uses either the ``ECS`` or ``CODE_DEPLOY`` deployment controllers. For more information about deployment types, see [Amazon ECS deployment types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).
  /// [volumeConfigurations] The configuration for a volume specified in the task definition as a volume that is configured at launch time. Currently, the only supported volume type is an Amazon EBS volume.
  AwsEcsServiceProperties({
    this.capacityProviderStrategy,
    this.cluster,
    this.deploymentConfiguration,
    this.deploymentController,
    this.desiredCount,
    this.enableECSManagedTags,
    this.enableExecuteCommand,
    this.healthCheckGracePeriodSeconds,
    this.launchType,
    this.loadBalancers,
    this.name,
    this.networkConfiguration,
    this.placementConstraints,
    this.placementStrategies,
    this.platformVersion,
    this.propagateTags,
    this.role,
    this.schedulingStrategy,
    this.serviceArn,
    this.serviceConnectConfiguration,
    this.serviceName,
    this.serviceRegistries,
    this.tags,
    this.taskDefinition,
    this.volumeConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderStrategy': ?capacityProviderStrategy == null ? null : pulumi.Input.encodeList<CapacityProviderStrategyItem, Map<String, dynamic>>(capacityProviderStrategy!, (value) => value.toMap()),
      'cluster': ?cluster,
      'deploymentConfiguration': ?deploymentConfiguration == null ? null : deploymentConfiguration!.toMap(),
      'deploymentController': ?deploymentController == null ? null : deploymentController!.toMap(),
      'desiredCount': ?desiredCount,
      'enableECSManagedTags': ?enableECSManagedTags,
      'enableExecuteCommand': ?enableExecuteCommand,
      'healthCheckGracePeriodSeconds': ?healthCheckGracePeriodSeconds,
      'launchType': ?launchType,
      'loadBalancers': ?loadBalancers == null ? null : pulumi.Input.encodeList<LoadBalancer, Map<String, dynamic>>(loadBalancers!, (value) => value.toMap()),
      'name': ?name,
      'networkConfiguration': ?networkConfiguration == null ? null : networkConfiguration!.toMap(),
      'placementConstraints': ?placementConstraints == null ? null : pulumi.Input.encodeList<PlacementConstraint, Map<String, dynamic>>(placementConstraints!, (value) => value.toMap()),
      'placementStrategies': ?placementStrategies == null ? null : pulumi.Input.encodeList<PlacementStrategy, Map<String, dynamic>>(placementStrategies!, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'propagateTags': ?propagateTags,
      'role': ?role,
      'schedulingStrategy': ?schedulingStrategy,
      'serviceArn': ?serviceArn,
      'serviceConnectConfiguration': ?serviceConnectConfiguration == null ? null : serviceConnectConfiguration!.toMap(),
      'serviceName': ?serviceName,
      'serviceRegistries': ?serviceRegistries == null ? null : pulumi.Input.encodeList<ServiceRegistry, Map<String, dynamic>>(serviceRegistries!, (value) => value.toMap()),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'taskDefinition': ?taskDefinition,
      'volumeConfigurations': ?volumeConfigurations == null ? null : pulumi.Input.encodeList<ServiceVolumeConfiguration, Map<String, dynamic>>(volumeConfigurations!, (value) => value.toMap()),
    };
  }

  factory AwsEcsServiceProperties.fromMap(Map<String, dynamic> map) {
    return AwsEcsServiceProperties(
      capacityProviderStrategy: map['capacityProviderStrategy'] == null ? null : pulumi.Input.decodeList<CapacityProviderStrategyItem>(map['capacityProviderStrategy'], (value) => CapacityProviderStrategyItem.fromMap((value as Map).cast<String, dynamic>())),
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      deploymentConfiguration: map['deploymentConfiguration'] == null ? null : DeploymentConfiguration.fromMap((map['deploymentConfiguration'] as Map).cast<String, dynamic>()),
      deploymentController: map['deploymentController'] == null ? null : DeploymentController.fromMap((map['deploymentController'] as Map).cast<String, dynamic>()),
      desiredCount: map['desiredCount'] == null ? null : map['desiredCount'] as int,
      enableECSManagedTags: map['enableECSManagedTags'] == null ? null : map['enableECSManagedTags'] as bool,
      enableExecuteCommand: map['enableExecuteCommand'] == null ? null : map['enableExecuteCommand'] as bool,
      healthCheckGracePeriodSeconds: map['healthCheckGracePeriodSeconds'] == null ? null : map['healthCheckGracePeriodSeconds'] as int,
      launchType: map['launchType'] == null ? null : map['launchType'] as String,
      loadBalancers: map['loadBalancers'] == null ? null : pulumi.Input.decodeList<LoadBalancer>(map['loadBalancers'], (value) => LoadBalancer.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfiguration: map['networkConfiguration'] == null ? null : NetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>()),
      placementConstraints: map['placementConstraints'] == null ? null : pulumi.Input.decodeList<PlacementConstraint>(map['placementConstraints'], (value) => PlacementConstraint.fromMap((value as Map).cast<String, dynamic>())),
      placementStrategies: map['placementStrategies'] == null ? null : pulumi.Input.decodeList<PlacementStrategy>(map['placementStrategies'], (value) => PlacementStrategy.fromMap((value as Map).cast<String, dynamic>())),
      platformVersion: map['platformVersion'] == null ? null : map['platformVersion'] as String,
      propagateTags: map['propagateTags'] == null ? null : map['propagateTags'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      schedulingStrategy: map['schedulingStrategy'] == null ? null : map['schedulingStrategy'] as String,
      serviceArn: map['serviceArn'] == null ? null : map['serviceArn'] as String,
      serviceConnectConfiguration: map['serviceConnectConfiguration'] == null ? null : ServiceConnectConfiguration.fromMap((map['serviceConnectConfiguration'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      serviceRegistries: map['serviceRegistries'] == null ? null : pulumi.Input.decodeList<ServiceRegistry>(map['serviceRegistries'], (value) => ServiceRegistry.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      taskDefinition: map['taskDefinition'] == null ? null : map['taskDefinition'] as String,
      volumeConfigurations: map['volumeConfigurations'] == null ? null : pulumi.Input.decodeList<ServiceVolumeConfiguration>(map['volumeConfigurations'], (value) => ServiceVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

