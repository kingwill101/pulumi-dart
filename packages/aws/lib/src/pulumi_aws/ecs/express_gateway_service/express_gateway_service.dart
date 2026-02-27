import 'package:pulumi/pulumi.dart' as pulumi;
import '../express_gateway_service_ingress_path/express_gateway_service_ingress_path.dart';
import '../express_gateway_service_network_configuration/express_gateway_service_network_configuration.dart';
import '../express_gateway_service_primary_container/express_gateway_service_primary_container.dart';
import '../express_gateway_service_scaling_target/express_gateway_service_scaling_target.dart';
import '../express_gateway_service_timeouts/express_gateway_service_timeouts.dart';
import 'express_gateway_service_args.dart';

/// Manages an ECS Express service. The Express service provides a simplified way to deploy containerized applications with automatic provisioning and management of AWS infrastructure including Application Load Balancers (ALBs), target groups, security groups, and auto-scaling policies. This service offers built-in load balancing, auto-scaling, and networking capabilities with zero-downtime deployments.
///
/// Express services automatically handle infrastructure provisioning and updates through rolling deployments, ensuring high availability during service modifications. When you update an Express service, a new service revision is created and deployed with zero downtime.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Service Updates and Deletion
///
/// ### Updates
///
/// When you update an Express service configuration, a new service revision is created and deployed using a rolling deployment strategy with zero downtime. The service automatically manages the transition from the old configuration to the new one, ensuring continuous availability.
///
/// ### Deletion
///
/// When an Express service is deleted, it enters a `DRAINING` state where existing tasks are allowed to complete gracefully before termination. The deletion process is irreversible - once initiated, the service and all its associated AWS infrastructure (load balancers, target groups, etc.) will be permanently removed. During the draining process, no new tasks are started, and the service becomes unavailable once all tasks have completed.
///
/// ## Import
///
/// Using `pulumi import`, import ECS Express Gateway Services using the service ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/expressGatewayService:ExpressGatewayService example arn:aws:ecs:us-west-2:123456789012:service/my-cluster/my-express-gateway-service
/// ```
class ExpressGatewayService extends pulumi.CustomResource {
  /// Name or ARN of the ECS cluster. Defaults to `default`.
  late final pulumi.Output<String> cluster;

  /// Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096.
  late final pulumi.Output<String> cpu;

  /// ARN of the current deployment.
  late final pulumi.Output<String> currentDeployment;

  /// ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  late final pulumi.Output<String> executionRoleArn;

  /// Path for health check requests. Defaults to `/ping`.
  late final pulumi.Output<String> healthCheckPath;

  /// ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> infrastructureRoleArn;

  /// List of ingress paths with access type and endpoint information.
  late final pulumi.Output<List<ExpressGatewayServiceIngressPath>> ingressPaths;

  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  late final pulumi.Output<String> memory;
  late final pulumi.Output<List<ExpressGatewayServiceNetworkConfiguration>>
      networkConfigurations;
  late final pulumi.Output<ExpressGatewayServicePrimaryContainer>
      primaryContainer;

  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<ExpressGatewayServiceScalingTarget>>
      scalingTargets;

  /// ARN of the Express Gateway Service.
  late final pulumi.Output<String> serviceArn;

  /// Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serviceName;

  /// ARN of the service revision.
  late final pulumi.Output<String> serviceRevisionArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final pulumi.Output<String?> taskRoleArn;
  late final pulumi.Output<ExpressGatewayServiceTimeouts?> timeouts;

  /// Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to `false`.
  late final pulumi.Output<bool> waitForSteadyState;

  ExpressGatewayService(
    String name, {
    ExpressGatewayServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/expressGatewayService:ExpressGatewayService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<String>('cluster');
    this.cpu = registerOutput<String>('cpu');
    this.currentDeployment = registerOutput<String>('currentDeployment');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.healthCheckPath = registerOutput<String>('healthCheckPath');
    this.infrastructureRoleArn =
        registerOutput<String>('infrastructureRoleArn');
    this.ingressPaths =
        registerOutput<List<ExpressGatewayServiceIngressPath>>('ingressPaths');
    this.memory = registerOutput<String>('memory');
    this.networkConfigurations =
        registerOutput<List<ExpressGatewayServiceNetworkConfiguration>>(
            'networkConfigurations');
    this.primaryContainer =
        registerOutput<ExpressGatewayServicePrimaryContainer>(
            'primaryContainer');
    this.region = registerOutput<String>('region');
    this.scalingTargets =
        registerOutput<List<ExpressGatewayServiceScalingTarget>>(
            'scalingTargets');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceRevisionArn = registerOutput<String>('serviceRevisionArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taskRoleArn = registerOutput<String?>('taskRoleArn');
    this.timeouts = registerOutput<ExpressGatewayServiceTimeouts?>('timeouts');
    this.waitForSteadyState = registerOutput<bool>('waitForSteadyState');
  }
}
