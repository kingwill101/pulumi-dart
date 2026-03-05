import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_gateway_service_args.dart';
import 'express_gateway_service_primary_container.dart';
import 'express_gateway_service_state.dart';
import 'express_gateway_service_timeouts.dart';

/// Manages an ECS Express service. The Express service provides a simplified way to deploy containerized applications with automatic provisioning and management of AWS infrastructure including Application Load Balancers (ALBs), target groups, security groups, and auto-scaling policies. This service offers built-in load balancing, auto-scaling, and networking capabilities with zero-downtime deployments.
///
/// Express services automatically handle infrastructure provisioning and updates through rolling deployments, ensuring high availability during service modifications. When you update an Express service, a new service revision is created and deployed with zero downtime.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.ExpressGatewayService("example", {
///     executionRoleArn: execution.arn,
///     infrastructureRoleArn: infrastructure.arn,
///     primaryContainer: {
///         image: "nginx:latest",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.ExpressGatewayService("example",
///     execution_role_arn=execution["arn"],
///     infrastructure_role_arn=infrastructure["arn"],
///     primary_container={
///         "image": "nginx:latest",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.ExpressGatewayService("example", new()
///     {
///         ExecutionRoleArn = execution.Arn,
///         InfrastructureRoleArn = infrastructure.Arn,
///         PrimaryContainer = new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerArgs
///         {
///             Image = "nginx:latest",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewExpressGatewayService(ctx, "example", &ecs.ExpressGatewayServiceArgs{
/// 			ExecutionRoleArn:      pulumi.Any(execution.Arn),
/// 			InfrastructureRoleArn: pulumi.Any(infrastructure.Arn),
/// 			PrimaryContainer: &ecs.ExpressGatewayServicePrimaryContainerArgs{
/// 				Image: pulumi.String("nginx:latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ExpressGatewayService("example", ExpressGatewayServiceArgs.builder()
///             .executionRoleArn(execution.arn())
///             .infrastructureRoleArn(infrastructure.arn())
///             .primaryContainer(ExpressGatewayServicePrimaryContainerArgs.builder()
///                 .image("nginx:latest")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:ExpressGatewayService
///     properties:
///       executionRoleArn: ${execution.arn}
///       infrastructureRoleArn: ${infrastructure.arn}
///       primaryContainer:
///         image: nginx:latest
/// ```
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
  late final pulumi.Output<List<Map<String, dynamic>>> ingressPaths;

  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192.
  late final pulumi.Output<String> memory;
  late final pulumi.Output<List<Map<String, dynamic>>> networkConfigurations;
  late final pulumi.Output<ExpressGatewayServicePrimaryContainer>
  primaryContainer;

  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<Map<String, dynamic>>> scalingTargets;

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

  /// Creates a new [ExpressGatewayService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressGatewayService]. {@macro pulumi_ecs_express_gateway_service_express_gateway_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    cluster = registerOutput<String>('cluster');
    cpu = registerOutput<String>('cpu');
    currentDeployment = registerOutput<String>('currentDeployment');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    healthCheckPath = registerOutput<String>('healthCheckPath');
    infrastructureRoleArn = registerOutput<String>('infrastructureRoleArn');
    ingressPaths = registerOutput<List<Map<String, dynamic>>>('ingressPaths');
    memory = registerOutput<String>('memory');
    networkConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'networkConfigurations',
    );
    primaryContainer = registerOutput<ExpressGatewayServicePrimaryContainer>(
      'primaryContainer',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressGatewayServicePrimaryContainer.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    scalingTargets = registerOutput<List<Map<String, dynamic>>>(
      'scalingTargets',
    );
    serviceArn = registerOutput<String>('serviceArn');
    serviceName = registerOutput<String>('serviceName');
    serviceRevisionArn = registerOutput<String>('serviceRevisionArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    timeouts = registerOutput<ExpressGatewayServiceTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressGatewayServiceTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    waitForSteadyState = registerOutput<bool>('waitForSteadyState');
  }

  /// Gets an existing [ExpressGatewayService] resource's state with the given [name] and [id].
  static ExpressGatewayService get(
    String name,
    pulumi.Input<String> id, {
    ExpressGatewayServiceState? state,
  }) {
    return ExpressGatewayService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExpressGatewayService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ecs/expressGatewayService:ExpressGatewayService',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cluster = registerOutput<String>('cluster');
    cpu = registerOutput<String>('cpu');
    currentDeployment = registerOutput<String>('currentDeployment');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    healthCheckPath = registerOutput<String>('healthCheckPath');
    infrastructureRoleArn = registerOutput<String>('infrastructureRoleArn');
    ingressPaths = registerOutput<List<Map<String, dynamic>>>('ingressPaths');
    memory = registerOutput<String>('memory');
    networkConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'networkConfigurations',
    );
    primaryContainer = registerOutput<ExpressGatewayServicePrimaryContainer>(
      'primaryContainer',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressGatewayServicePrimaryContainer.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    scalingTargets = registerOutput<List<Map<String, dynamic>>>(
      'scalingTargets',
    );
    serviceArn = registerOutput<String>('serviceArn');
    serviceName = registerOutput<String>('serviceName');
    serviceRevisionArn = registerOutput<String>('serviceRevisionArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    timeouts = registerOutput<ExpressGatewayServiceTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExpressGatewayServiceTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    waitForSteadyState = registerOutput<bool>('waitForSteadyState');
  }
}
