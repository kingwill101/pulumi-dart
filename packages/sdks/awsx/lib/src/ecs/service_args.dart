// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_zone_rebalancing.dart';
import 'propagate_tags.dart';
import 'service_capacity.dart';
import 'service_deployment_strategy.dart';
import 'service_load_balancer_attachment.dart';

/// {@template pulumi_ecs_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_ecs_service_args_doc}
class ServiceArgs {
  /// Specifies whether the task's elastic network interface receives a public IP address.
  ///
  /// If true, each task will receive a public IP address. Supported only on Fargate.
  ///
  /// Default - false
  final pulumi.Input<bool?>? assignPublicIp;
  /// Whether to use Availability Zone rebalancing for the service.
  ///
  /// If enabled, `deploymentMaximumPercent` must be greater than 100.
  final pulumi.Input<AvailabilityZoneRebalancing?>? availabilityZoneRebalancing;
  /// Select Fargate or existing capacity providers. When omitted, adopt a nonempty cluster default
  /// and otherwise use Fargate.
  final pulumi.Input<ServiceCapacity?>? capacity;
  /// The ARN of the cluster that hosts the service.
  ///
  /// Capacity lookups depend on this input, not component-wide `dependsOn`. If a separately managed
  /// capacity-provider association must be ready first, compose its output into this input, for
  /// example `pulumi.all([cluster.arn, association.id]).apply(([arn]) =&gt; arn)` in TypeScript.
  final pulumi.Input<String> clusterArn;
  /// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that
  /// can be running in a service during a deployment.
  ///
  /// Default - 200
  final pulumi.Input<double?>? deploymentMaximumPercent;
  /// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that
  /// must remain running and healthy in a service during a deployment.
  ///
  /// Default - 100
  final pulumi.Input<double?>? deploymentMinHealthyPercent;
  /// The deployment strategy to use for the Service.
  ///
  /// Default - Rolling deployment strategy
  final pulumi.Input<ServiceDeploymentStrategy?>? deploymentStrategy;
  /// Total time Pulumi allows for ECS service creation or an update while waiting for steady state.
  /// Uses Pulumi duration syntax, for example "90m" or "2h". Overrides the AWS provider timeout for
  /// both operations.
  ///
  /// Default - The AWS provider's ECS service timeout, currently 20 minutes, plus configured
  /// progressive bake times and pause budgets. Hooks at the same stage run in parallel, so only the
  /// longest pause at each stage is counted. Recurring pauses are counted at every traffic shift.
  /// Lambda execution time is unknown. Override this timeout when additional time is needed.
  ///
  /// Set this explicitly when the service needs more time to stabilize. This only applies to the
  /// Pulumi resource create/update timeout. If that timeout is reached the Pulumi deployment fails,
  /// but the ECS deployment is unaffected.
  final pulumi.Input<String?>? deploymentTimeout;
  /// Number of instances of the task definition to place and keep running on the service.
  ///
  /// Default - 1
  final pulumi.Input<double?>? desiredCount;
  /// Enables Amazon ECS-managed tags on tasks launched by this service.
  ///
  /// Default - true
  final pulumi.Input<bool?>? enableEcsManagedTags;
  /// Force a new task deployment on service updates. Enable when changing capacity-provider
  /// strategies, as required by the AWS provider. Other service updates can also roll tasks.
  ///
  /// Default - Unset.
  final pulumi.Input<bool?>? forceNewDeployment;
  /// Seconds ECS ignores failing health checks for newly started tasks, allowing the application
  /// time to start. This does not change the target group's health checks or Pulumi's deployment
  /// timeout.
  ///
  /// Must be an integer from 0 through 2147483647.
  ///
  /// Default - Unset, using the AWS default of 0 seconds.
  final pulumi.Input<double?>? healthCheckGracePeriodSeconds;
  /// Attach a load balancer to a specific container running in the service.
  ///
  /// - Use one attachment when a single rule can express all routing to a backend, including multiple
  /// hostnames or path patterns.
  /// - Use multiple attachments for different containers or ports, separate listeners or
  /// public/private load balancers, or hostname/path pairings that must be evaluated
  /// independently.
  ///
  /// Each attachment creates its own target group and forwarding rule.
  ///
  /// Default - The ECS service is not attached to a load balancer
  final pulumi.Input<Map<String, ServiceLoadBalancerAttachment>?>? loadBalancerAttachments;
  /// When manageIngress is true, awsx will automatically add ingress rules to the service security
  /// group allowing ingress from any attached load balancers.
  ///
  /// Set this to false in order to manage the ingress rules yourself
  ///
  /// Without load-balancer attachments, AWSX can still create a group when securityGroupIds is
  /// omitted. Its standalone IPv4 allow-all egress is unaffected by this setting.
  ///
  /// Default - true.
  final pulumi.Input<bool?>? manageIngress;
  /// Selects the resource whose tags are copied to newly launched tasks.
  ///
  /// Default - PropagateTags.SERVICE
  final pulumi.Input<PropagateTags?>? propagateTags;
  /// Region where this service and its AWS child resources will be managed. Load-balancer forwarding
  /// rules use the inherited AWS Native provider, which must target the same account and this
  /// effective region. The component validates that both providers match; this input does not
  /// override the AWS Native provider's region.
  ///
  /// Defaults to the Region set in the AWS provider configuration.
  final pulumi.Input<String?>? region;
  /// Security groups to attach to the service's tasks, in order. If provided, the list must not be
  /// empty.
  ///
  /// When manageIngress is true (the default), AWSX adds standalone application and health-check
  /// ingress rules to ONLY the first supplied group.
  ///
  /// Set manageIngress to false to manage ingress yourself or if you are using inline ingress rules.
  ///
  /// Default - AWSX creates one group with standalone IPv4 allow-all egress.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Tags assigned to the ECS service. These are propagated to newly launched tasks when
  /// propagateTags is SERVICE.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The full ARN of the task definition that you want to run in your service. The task definition
  /// must use awsvpc networking and be compatible with the selected capacity
  final pulumi.Input<String> taskDefinitionArn;
  /// The subnets where the service will be deployed in
  final pulumi.Input<List<String>> vpcSubnetIds;
  /// When this is `true` the Pulumi operation will wait until the service reaches a steady state. If
  /// you are using progressive deployment strategies then this will be the entire length of that
  /// deployment.
  ///
  /// Set this to `false` to disable waiting for the service to reach a steady state. In this case
  /// you will need a separate process to monitor the service deployment. Pulumi will return a
  /// successful status before the deployment completes
  final pulumi.Input<bool?>? waitForSteadyState;

  /// Creates a new [ServiceArgs].
  /// [assignPublicIp] Specifies whether the task's elastic network interface receives a public IP address.
  /// [availabilityZoneRebalancing] Whether to use Availability Zone rebalancing for the service.
  /// [capacity] Select Fargate or existing capacity providers. When omitted, adopt a nonempty cluster default
  /// [clusterArn] The ARN of the cluster that hosts the service.
  /// [deploymentMaximumPercent] Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that
  /// [deploymentMinHealthyPercent] Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that
  /// [deploymentStrategy] The deployment strategy to use for the Service.
  /// [deploymentTimeout] Total time Pulumi allows for ECS service creation or an update while waiting for steady state.
  /// [desiredCount] Number of instances of the task definition to place and keep running on the service.
  /// [enableEcsManagedTags] Enables Amazon ECS-managed tags on tasks launched by this service.
  /// [forceNewDeployment] Force a new task deployment on service updates. Enable when changing capacity-provider
  /// [healthCheckGracePeriodSeconds] Seconds ECS ignores failing health checks for newly started tasks, allowing the application
  /// [loadBalancerAttachments] Attach a load balancer to a specific container running in the service.
  /// [manageIngress] When manageIngress is true, awsx will automatically add ingress rules to the service security
  /// [propagateTags] Selects the resource whose tags are copied to newly launched tasks.
  /// [region] Region where this service and its AWS child resources will be managed. Load-balancer forwarding
  /// [securityGroupIds] Security groups to attach to the service's tasks, in order. If provided, the list must not be
  /// [tags] Tags assigned to the ECS service. These are propagated to newly launched tasks when
  /// [taskDefinitionArn] The full ARN of the task definition that you want to run in your service. The task definition
  /// [vpcSubnetIds] The subnets where the service will be deployed in
  /// [waitForSteadyState] When this is `true` the Pulumi operation will wait until the service reaches a steady state. If
  const ServiceArgs({
    this.assignPublicIp,
    this.availabilityZoneRebalancing,
    this.capacity,
    required this.clusterArn,
    this.deploymentMaximumPercent,
    this.deploymentMinHealthyPercent,
    this.deploymentStrategy,
    this.deploymentTimeout,
    this.desiredCount,
    this.enableEcsManagedTags,
    this.forceNewDeployment,
    this.healthCheckGracePeriodSeconds,
    this.loadBalancerAttachments,
    this.manageIngress,
    this.propagateTags,
    this.region,
    this.securityGroupIds,
    this.tags,
    required this.taskDefinitionArn,
    required this.vpcSubnetIds,
    this.waitForSteadyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': ?assignPublicIp,
      'availabilityZoneRebalancing': ?pulumi.Input.mapOptionalInputValue<AvailabilityZoneRebalancing, String>(availabilityZoneRebalancing, (value) => value.wireValue),
      'capacity': ?pulumi.Input.mapOptionalInputValue<ServiceCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'clusterArn': clusterArn,
      'deploymentMaximumPercent': ?deploymentMaximumPercent,
      'deploymentMinHealthyPercent': ?deploymentMinHealthyPercent,
      'deploymentStrategy': ?pulumi.Input.mapOptionalInputValue<ServiceDeploymentStrategy, Map<String, dynamic>>(deploymentStrategy, (value) => value.toMap()),
      'deploymentTimeout': ?deploymentTimeout,
      'desiredCount': ?desiredCount,
      'enableEcsManagedTags': ?enableEcsManagedTags,
      'forceNewDeployment': ?forceNewDeployment,
      'healthCheckGracePeriodSeconds': ?healthCheckGracePeriodSeconds,
      'loadBalancerAttachments': ?pulumi.Input.mapOptionalInputValue<Map<String, ServiceLoadBalancerAttachment>, Map<String, Map<String, dynamic>>>(loadBalancerAttachments, (value) => pulumi.Input.encodeMapValues<ServiceLoadBalancerAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manageIngress': ?manageIngress,
      'propagateTags': ?pulumi.Input.mapOptionalInputValue<PropagateTags, String>(propagateTags, (value) => value.wireValue),
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'tags': ?tags,
      'taskDefinitionArn': taskDefinitionArn,
      'vpcSubnetIds': vpcSubnetIds,
      'waitForSteadyState': ?waitForSteadyState,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      assignPublicIp: (() { final guardedValue = map['assignPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZoneRebalancing: (() { final guardedValue = map['availabilityZoneRebalancing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilityZoneRebalancing.fromValue(guardedValue as String)); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      deploymentMaximumPercent: (() { final guardedValue = map['deploymentMaximumPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      deploymentMinHealthyPercent: (() { final guardedValue = map['deploymentMinHealthyPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      deploymentStrategy: (() { final guardedValue = map['deploymentStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceDeploymentStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentTimeout: (() { final guardedValue = map['deploymentTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredCount: (() { final guardedValue = map['desiredCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      enableEcsManagedTags: (() { final guardedValue = map['enableEcsManagedTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceNewDeployment: (() { final guardedValue = map['forceNewDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckGracePeriodSeconds: (() { final guardedValue = map['healthCheckGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      loadBalancerAttachments: (() { final guardedValue = map['loadBalancerAttachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ServiceLoadBalancerAttachment>(guardedValue, (value) => ServiceLoadBalancerAttachment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manageIngress: (() { final guardedValue = map['manageIngress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PropagateTags.fromValue(guardedValue as String)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskDefinitionArn: pulumi.Input.fromValue(map['taskDefinitionArn'] as String),
      vpcSubnetIds: pulumi.Input.fromValue((map['vpcSubnetIds'] as List).cast<String>()),
      waitForSteadyState: (() { final guardedValue = map['waitForSteadyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
