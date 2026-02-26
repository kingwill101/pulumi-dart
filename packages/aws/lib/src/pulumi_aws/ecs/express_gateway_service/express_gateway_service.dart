import 'package:pulumi/pulumi.dart';
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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.ExpressGatewayService("example", {
/// executionRoleArn: execution.arn,
/// infrastructureRoleArn: infrastructure.arn,
/// primaryContainer: {
/// image: "nginx:latest",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.ExpressGatewayService("example",
/// execution_role_arn=execution["arn"],
/// infrastructure_role_arn=infrastructure["arn"],
/// primary_container={
/// "image": "nginx:latest",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ecs.ExpressGatewayService("example", new()
/// {
/// ExecutionRoleArn = execution.Arn,
/// InfrastructureRoleArn = infrastructure.Arn,
/// PrimaryContainer = new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerArgs
/// {
/// Image = "nginx:latest",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewExpressGatewayService(ctx, "example", &ecs.ExpressGatewayServiceArgs{
/// ExecutionRoleArn:      pulumi.Any(execution.Arn),
/// InfrastructureRoleArn: pulumi.Any(infrastructure.Arn),
/// PrimaryContainer: &ecs.ExpressGatewayServicePrimaryContainerArgs{
/// Image: pulumi.String("nginx:latest"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.ExpressGatewayService;
/// import com.pulumi.aws.ecs.ExpressGatewayServiceArgs;
/// import com.pulumi.aws.ecs.inputs.ExpressGatewayServicePrimaryContainerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ExpressGatewayService("example", ExpressGatewayServiceArgs.builder()
/// .executionRoleArn(execution.arn())
/// .infrastructureRoleArn(infrastructure.arn())
/// .primaryContainer(ExpressGatewayServicePrimaryContainerArgs.builder()
/// .image("nginx:latest")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecs:ExpressGatewayService
/// properties:
/// executionRoleArn: ${execution.arn}
/// infrastructureRoleArn: ${infrastructure.arn}
/// primaryContainer:
/// image: nginx:latest
/// ```
/// <!--End PulumiCodeChooser -->
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
class ExpressGatewayService extends CustomResource {
  /// Name or ARN of the ECS cluster. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  late final Output<String> cluster;

  /// Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096.
  late final Output<String> cpu;

  /// ARN of the current deployment.
  late final Output<String> currentDeployment;

  /// ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  late final Output<String> executionRoleArn;

  /// Path for health check requests. Defaults to `/ping`.
  late final Output<String> healthCheckPath;

  /// ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final Output<String> infrastructureRoleArn;

  /// List of ingress paths with access type and endpoint information.
  late final Output<List<ExpressGatewayServiceIngressPath>> ingressPaths;

  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  late final Output<String> memory;
  late final Output<List<ExpressGatewayServiceNetworkConfiguration>>
      networkConfigurations;
  late final Output<ExpressGatewayServicePrimaryContainer> primaryContainer;

  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  late final Output<String> region;
  late final Output<List<ExpressGatewayServiceScalingTarget>> scalingTargets;

  /// ARN of the Express Gateway Service.
  late final Output<String> serviceArn;

  /// Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  late final Output<String> serviceName;

  /// ARN of the service revision.
  late final Output<String> serviceRevisionArn;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final Output<String?> taskRoleArn;
  late final Output<ExpressGatewayServiceTimeouts?> timeouts;

  /// Whether to wait for the service to reach a steady state before considering the operation complete. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> waitForSteadyState;

  ExpressGatewayService(
    String name, {
    ExpressGatewayServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/expressGatewayService:ExpressGatewayService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
