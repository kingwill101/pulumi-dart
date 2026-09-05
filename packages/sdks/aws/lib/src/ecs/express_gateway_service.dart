import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_gateway_service_args.dart';
import 'express_gateway_service_ingress_path.dart';
import 'express_gateway_service_network_configuration.dart';
import 'express_gateway_service_primary_container.dart';
import 'express_gateway_service_scaling_target.dart';
import 'express_gateway_service_state.dart';
import 'express_gateway_service_timeouts.dart';

/// Manages an [ECS Express service](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/express-service-overview.html). The Express service provides a simplified way to deploy containerized applications with automatic provisioning and management of AWS infrastructure including Application Load Balancers (ALBs), target groups, security groups, and auto-scaling policies. This service offers built-in load balancing, auto-scaling, and networking capabilities with zero-downtime deployments.
///
/// &gt; **Note:** To prevent a race condition during service deletion, make sure to set `dependsOn` to the related `aws.iam.RolePolicy` or `aws.iam.RolePolicyAttachment` resources. Otherwise, the policy may be destroyed too soon and the ECS service will then get stuck in the `DRAINING` state.
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
///     primaryContainer: {
///         image: "nginx:latest",
///     },
///     executionRoleArn: execution.arn,
///     infrastructureRoleArn: infrastructure.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.ExpressGatewayService("example",
///     primary_container={
///         "image": "nginx:latest",
///     },
///     execution_role_arn=execution["arn"],
///     infrastructure_role_arn=infrastructure["arn"])
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
///         PrimaryContainer = new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerArgs
///         {
///             Image = "nginx:latest",
///         },
///         ExecutionRoleArn = execution.Arn,
///         InfrastructureRoleArn = infrastructure.Arn,
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
/// 			PrimaryContainer: &ecs.ExpressGatewayServicePrimaryContainerArgs{
/// 				Image: pulumi.String("nginx:latest"),
/// 			},
/// 			ExecutionRoleArn:      pulumi.Any(execution.Arn),
/// 			InfrastructureRoleArn: pulumi.Any(infrastructure.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ecs_expressgatewayservice" "example" {
///   primary_container = {
///     image = "nginx:latest"
///   }
///   execution_role_arn      = execution.arn
///   infrastructure_role_arn = infrastructure.arn
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .primaryContainer(ExpressGatewayServicePrimaryContainerArgs.builder()
///                 .image("nginx:latest")
///                 .build())
///             .executionRoleArn(execution.arn())
///             .infrastructureRoleArn(infrastructure.arn())
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
///       primaryContainer:
///         image: nginx:latest
///       executionRoleArn: ${execution.arn}
///       infrastructureRoleArn: ${infrastructure.arn}
/// ```
///
///
/// ### Container Logging, Environment Variables, and Secrets
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.ExpressGatewayService("example", {
///     primaryContainer: {
///         awsLogsConfigurations: [{
///             logGroup: app.name,
///         }],
///         environments: [
///             {
///                 name: "ENV",
///                 value: "production",
///             },
///             {
///                 name: "PORT",
///                 value: "8080",
///             },
///         ],
///         secrets: [{
///             name: "DB_PASSWORD",
///             valueFrom: dbPassword.arn,
///         }],
///         image: "my-app:latest",
///         containerPort: 8080,
///         commands: ["./start.sh"],
///     },
///     executionRoleArn: execution.arn,
///     infrastructureRoleArn: infrastructure.arn,
///     healthCheckPath: "/health",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.ExpressGatewayService("example",
///     primary_container={
///         "aws_logs_configurations": [{
///             "log_group": app["name"],
///         }],
///         "environments": [
///             {
///                 "name": "ENV",
///                 "value": "production",
///             },
///             {
///                 "name": "PORT",
///                 "value": "8080",
///             },
///         ],
///         "secrets": [{
///             "name": "DB_PASSWORD",
///             "value_from": db_password["arn"],
///         }],
///         "image": "my-app:latest",
///         "container_port": 8080,
///         "commands": ["./start.sh"],
///     },
///     execution_role_arn=execution["arn"],
///     infrastructure_role_arn=infrastructure["arn"],
///     health_check_path="/health")
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
///         PrimaryContainer = new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerArgs
///         {
///             AwsLogsConfigurations = new[]
///             {
///                 new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerAwsLogsConfigurationArgs
///                 {
///                     LogGroup = app.Name,
///                 },
///             },
///             Environments = new[]
///             {
///                 new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerEnvironmentArgs
///                 {
///                     Name = "ENV",
///                     Value = "production",
///                 },
///                 new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerEnvironmentArgs
///                 {
///                     Name = "PORT",
///                     Value = "8080",
///                 },
///             },
///             Secrets = new[]
///             {
///                 new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerSecretArgs
///                 {
///                     Name = "DB_PASSWORD",
///                     ValueFrom = dbPassword.Arn,
///                 },
///             },
///             Image = "my-app:latest",
///             ContainerPort = 8080,
///             Commands = new[]
///             {
///                 "./start.sh",
///             },
///         },
///         ExecutionRoleArn = execution.Arn,
///         InfrastructureRoleArn = infrastructure.Arn,
///         HealthCheckPath = "/health",
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
/// 			PrimaryContainer: &ecs.ExpressGatewayServicePrimaryContainerArgs{
/// 				AwsLogsConfigurations: ecs.ExpressGatewayServicePrimaryContainerAwsLogsConfigurationArray{
/// 					&ecs.ExpressGatewayServicePrimaryContainerAwsLogsConfigurationArgs{
/// 						LogGroup: pulumi.Any(app.Name),
/// 					},
/// 				},
/// 				Environments: ecs.ExpressGatewayServicePrimaryContainerEnvironmentArray{
/// 					&ecs.ExpressGatewayServicePrimaryContainerEnvironmentArgs{
/// 						Name:  pulumi.String("ENV"),
/// 						Value: pulumi.String("production"),
/// 					},
/// 					&ecs.ExpressGatewayServicePrimaryContainerEnvironmentArgs{
/// 						Name:  pulumi.String("PORT"),
/// 						Value: pulumi.String("8080"),
/// 					},
/// 				},
/// 				Secrets: ecs.ExpressGatewayServicePrimaryContainerSecretArray{
/// 					&ecs.ExpressGatewayServicePrimaryContainerSecretArgs{
/// 						Name:      pulumi.String("DB_PASSWORD"),
/// 						ValueFrom: pulumi.Any(dbPassword.Arn),
/// 					},
/// 				},
/// 				Image:         pulumi.String("my-app:latest"),
/// 				ContainerPort: pulumi.Int(8080),
/// 				Commands: pulumi.StringArray{
/// 					pulumi.String("./start.sh"),
/// 				},
/// 			},
/// 			ExecutionRoleArn:      pulumi.Any(execution.Arn),
/// 			InfrastructureRoleArn: pulumi.Any(infrastructure.Arn),
/// 			HealthCheckPath:       pulumi.String("/health"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ecs_expressgatewayservice" "example" {
///   primary_container = {
///     aws_logs_configurations = [{
///       "logGroup" = app.name
///     }]
///     environments = [{
///       "name"  = "ENV"
///       "value" = "production"
///       }, {
///       "name"  = "PORT"
///       "value" = "8080"
///     }]
///     secrets = [{
///       "name"      = "DB_PASSWORD"
///       "valueFrom" = dbPassword.arn
///     }]
///     image          = "my-app:latest"
///     container_port = 8080
///     commands       = ["./start.sh"]
///   }
///   execution_role_arn      = execution.arn
///   infrastructure_role_arn = infrastructure.arn
///   health_check_path       = "/health"
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
/// import com.pulumi.aws.ecs.inputs.ExpressGatewayServicePrimaryContainerAwsLogsConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ExpressGatewayServicePrimaryContainerEnvironmentArgs;
/// import com.pulumi.aws.ecs.inputs.ExpressGatewayServicePrimaryContainerSecretArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .primaryContainer(ExpressGatewayServicePrimaryContainerArgs.builder()
///                 .awsLogsConfigurations(ExpressGatewayServicePrimaryContainerAwsLogsConfigurationArgs.builder()
///                     .logGroup(app.name())
///                     .build())
///                 .environments(
///                     ExpressGatewayServicePrimaryContainerEnvironmentArgs.builder()
///                         .name("ENV")
///                         .value("production")
///                         .build(),
///                     ExpressGatewayServicePrimaryContainerEnvironmentArgs.builder()
///                         .name("PORT")
///                         .value("8080")
///                         .build())
///                 .secrets(ExpressGatewayServicePrimaryContainerSecretArgs.builder()
///                     .name("DB_PASSWORD")
///                     .valueFrom(dbPassword.arn())
///                     .build())
///                 .image("my-app:latest")
///                 .containerPort(8080)
///                 .commands("./start.sh")
///                 .build())
///             .executionRoleArn(execution.arn())
///             .infrastructureRoleArn(infrastructure.arn())
///             .healthCheckPath("/health")
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
///       primaryContainer:
///         awsLogsConfigurations:
///           - logGroup: ${app.name}
///         environments:
///           - name: ENV
///             value: production
///           - name: PORT
///             value: '8080'
///         secrets:
///           - name: DB_PASSWORD
///             valueFrom: ${dbPassword.arn}
///         image: my-app:latest
///         containerPort: 8080
///         commands:
///           - ./start.sh
///       executionRoleArn: ${execution.arn}
///       infrastructureRoleArn: ${infrastructure.arn}
///       healthCheckPath: /health
/// ```
///
///
/// ### Custom Networking
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.ExpressGatewayService("example", {
///     primaryContainer: {
///         image: "nginx:latest",
///         containerPort: 80,
///     },
///     networkConfigurations: [{
///         subnets: [
///             privateA.id,
///             privateB.id,
///         ],
///         securityGroups: [app.id],
///     }],
///     serviceName: "my-express-service",
///     cluster: main.name,
///     executionRoleArn: execution.arn,
///     infrastructureRoleArn: infrastructure.arn,
///     cpu: "256",
///     memory: "512",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.ExpressGatewayService("example",
///     primary_container={
///         "image": "nginx:latest",
///         "container_port": 80,
///     },
///     network_configurations=[{
///         "subnets": [
///             private_a["id"],
///             private_b["id"],
///         ],
///         "security_groups": [app["id"]],
///     }],
///     service_name="my-express-service",
///     cluster=main["name"],
///     execution_role_arn=execution["arn"],
///     infrastructure_role_arn=infrastructure["arn"],
///     cpu="256",
///     memory="512")
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
///         PrimaryContainer = new Aws.Ecs.Inputs.ExpressGatewayServicePrimaryContainerArgs
///         {
///             Image = "nginx:latest",
///             ContainerPort = 80,
///         },
///         NetworkConfigurations = new[]
///         {
///             new Aws.Ecs.Inputs.ExpressGatewayServiceNetworkConfigurationArgs
///             {
///                 Subnets = new[]
///                 {
///                     privateA.Id,
///                     privateB.Id,
///                 },
///                 SecurityGroups = new[]
///                 {
///                     app.Id,
///                 },
///             },
///         },
///         ServiceName = "my-express-service",
///         Cluster = main.Name,
///         ExecutionRoleArn = execution.Arn,
///         InfrastructureRoleArn = infrastructure.Arn,
///         Cpu = "256",
///         Memory = "512",
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
/// 			PrimaryContainer: &ecs.ExpressGatewayServicePrimaryContainerArgs{
/// 				Image:         pulumi.String("nginx:latest"),
/// 				ContainerPort: pulumi.Int(80),
/// 			},
/// 			NetworkConfigurations: ecs.ExpressGatewayServiceNetworkConfigurationArray{
/// 				&ecs.ExpressGatewayServiceNetworkConfigurationArgs{
/// 					Subnets: pulumi.StringArray{
/// 						privateA.Id,
/// 						privateB.Id,
/// 					},
/// 					SecurityGroups: pulumi.StringArray{
/// 						app.Id,
/// 					},
/// 				},
/// 			},
/// 			ServiceName:           pulumi.String("my-express-service"),
/// 			Cluster:               pulumi.Any(main.Name),
/// 			ExecutionRoleArn:      pulumi.Any(execution.Arn),
/// 			InfrastructureRoleArn: pulumi.Any(infrastructure.Arn),
/// 			Cpu:                   pulumi.String("256"),
/// 			Memory:                pulumi.String("512"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ecs_expressgatewayservice" "example" {
///   primary_container = {
///     image          = "nginx:latest"
///     container_port = 80
///   }
///   network_configurations {
///     subnets         = [privateA.id, privateB.id]
///     security_groups = [app.id]
///   }
///   service_name            = "my-express-service"
///   cluster                 = main.name
///   execution_role_arn      = execution.arn
///   infrastructure_role_arn = infrastructure.arn
///   cpu                     = "256"
///   memory                  = "512"
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
/// import com.pulumi.aws.ecs.inputs.ExpressGatewayServiceNetworkConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .primaryContainer(ExpressGatewayServicePrimaryContainerArgs.builder()
///                 .image("nginx:latest")
///                 .containerPort(80)
///                 .build())
///             .networkConfigurations(ExpressGatewayServiceNetworkConfigurationArgs.builder()
///                 .subnets(
///                     privateA.id(),
///                     privateB.id())
///                 .securityGroups(app.id())
///                 .build())
///             .serviceName("my-express-service")
///             .cluster(main.name())
///             .executionRoleArn(execution.arn())
///             .infrastructureRoleArn(infrastructure.arn())
///             .cpu("256")
///             .memory("512")
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
///       primaryContainer:
///         image: nginx:latest
///         containerPort: 80
///       networkConfigurations:
///         - subnets:
///             - ${privateA.id}
///             - ${privateB.id}
///           securityGroups:
///             - ${app.id}
///       serviceName: my-express-service
///       cluster: ${main.name}
///       executionRoleArn: ${execution.arn}
///       infrastructureRoleArn: ${infrastructure.arn}
///       cpu: '256'
///       memory: '512'
/// ```
///
///
/// ### Service Updates and Deletion
///
/// ### Updates
///
/// When you update an Express service configuration, a new service revision is created and deployed using a canary deployment strategy with zero downtime. For more information, see [Updating an Express service](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/express-service-update.html).
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
  /// Number of CPU units used by the task. Valid values are powers of 2 between 256 and 4096. Defaults to `1024`.
  late final pulumi.Output<String> cpu;
  /// (**Deprecated**) ARN of the current deployment.
  late final pulumi.Output<String> currentDeployment;
  /// ARN of the IAM role that allows ECS to pull container images and publish container logs to Amazon CloudWatch.
  late final pulumi.Output<String> executionRoleArn;
  /// Path for health check requests. Defaults to `/`.
  late final pulumi.Output<String> healthCheckPath;
  /// ARN of the IAM role that allows ECS to manage AWS infrastructure on your behalf. **Important:** The infrastructure role cannot be modified after the service is created. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> infrastructureRoleArn;
  /// List of ingress paths for the service. See `ingressPaths` Block below.
  late final pulumi.Output<List<ExpressGatewayServiceIngressPath>> ingressPaths;
  /// Amount of memory (in MiB) used by the task. Valid values are between 512 and 8192. Defaults to `2048`.
  late final pulumi.Output<String> memory;
  /// Network configuration for the service. See `networkConfiguration` Block below.
  late final pulumi.Output<List<ExpressGatewayServiceNetworkConfiguration>> networkConfigurations;
  late final pulumi.Output<ExpressGatewayServicePrimaryContainer> primaryContainer;
  /// AWS region where the service will be created. If not specified, the region configured in the provider will be used.
  late final pulumi.Output<String> region;
  /// Auto-scaling configuration for the service. See `scalingTarget` Block below.
  late final pulumi.Output<List<ExpressGatewayServiceScalingTarget>> scalingTargets;
  /// ARN of the Express Gateway Service.
  late final pulumi.Output<String> serviceArn;
  /// Name of the service. If not specified, a name will be generated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serviceName;
  /// ARN of the service revision.
  late final pulumi.Output<String> serviceRevisionArn;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    cluster = registerOutput<String>('cluster');
    cpu = registerOutput<String>('cpu');
    currentDeployment = registerOutput<String>('currentDeployment');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    healthCheckPath = registerOutput<String>('healthCheckPath');
    infrastructureRoleArn = registerOutput<String>('infrastructureRoleArn');
    ingressPaths = registerOutput<List<ExpressGatewayServiceIngressPath>>('ingressPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceIngressPath>(guardedValue, (value) => ExpressGatewayServiceIngressPath.fromMap((value as Map).cast<String, dynamic>())); });
    memory = registerOutput<String>('memory');
    networkConfigurations = registerOutput<List<ExpressGatewayServiceNetworkConfiguration>>('networkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(guardedValue, (value) => ExpressGatewayServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    primaryContainer = registerOutput<ExpressGatewayServicePrimaryContainer>('primaryContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressGatewayServicePrimaryContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scalingTargets = registerOutput<List<ExpressGatewayServiceScalingTarget>>('scalingTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(guardedValue, (value) => ExpressGatewayServiceScalingTarget.fromMap((value as Map).cast<String, dynamic>())); });
    serviceArn = registerOutput<String>('serviceArn');
    serviceName = registerOutput<String>('serviceName');
    serviceRevisionArn = registerOutput<String>('serviceRevisionArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    timeouts = registerOutput<ExpressGatewayServiceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressGatewayServiceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForSteadyState = registerOutput<bool>('waitForSteadyState');
  }

  /// Gets an existing [ExpressGatewayService] resource's state with the given [name] and [id].
  static ExpressGatewayService get(
    String name,
    pulumi.Input<String> id, {
    ExpressGatewayServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ExpressGatewayService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    ingressPaths = registerOutput<List<ExpressGatewayServiceIngressPath>>('ingressPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceIngressPath>(guardedValue, (value) => ExpressGatewayServiceIngressPath.fromMap((value as Map).cast<String, dynamic>())); });
    memory = registerOutput<String>('memory');
    networkConfigurations = registerOutput<List<ExpressGatewayServiceNetworkConfiguration>>('networkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(guardedValue, (value) => ExpressGatewayServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    primaryContainer = registerOutput<ExpressGatewayServicePrimaryContainer>('primaryContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressGatewayServicePrimaryContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scalingTargets = registerOutput<List<ExpressGatewayServiceScalingTarget>>('scalingTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(guardedValue, (value) => ExpressGatewayServiceScalingTarget.fromMap((value as Map).cast<String, dynamic>())); });
    serviceArn = registerOutput<String>('serviceArn');
    serviceName = registerOutput<String>('serviceName');
    serviceRevisionArn = registerOutput<String>('serviceRevisionArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    timeouts = registerOutput<ExpressGatewayServiceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressGatewayServiceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForSteadyState = registerOutput<bool>('waitForSteadyState');
  }

  /// Creates a typed reference to an existing [ExpressGatewayService] resource.
  ExpressGatewayService.reference(String urn)
    : super(
        'aws:ecs/expressGatewayService:ExpressGatewayService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cluster = registerOutput<String>('cluster');
    cpu = registerOutput<String>('cpu');
    currentDeployment = registerOutput<String>('currentDeployment');
    executionRoleArn = registerOutput<String>('executionRoleArn');
    healthCheckPath = registerOutput<String>('healthCheckPath');
    infrastructureRoleArn = registerOutput<String>('infrastructureRoleArn');
    ingressPaths = registerOutput<List<ExpressGatewayServiceIngressPath>>('ingressPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceIngressPath>(guardedValue, (value) => ExpressGatewayServiceIngressPath.fromMap((value as Map).cast<String, dynamic>())); });
    memory = registerOutput<String>('memory');
    networkConfigurations = registerOutput<List<ExpressGatewayServiceNetworkConfiguration>>('networkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceNetworkConfiguration>(guardedValue, (value) => ExpressGatewayServiceNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    primaryContainer = registerOutput<ExpressGatewayServicePrimaryContainer>('primaryContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressGatewayServicePrimaryContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scalingTargets = registerOutput<List<ExpressGatewayServiceScalingTarget>>('scalingTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExpressGatewayServiceScalingTarget>(guardedValue, (value) => ExpressGatewayServiceScalingTarget.fromMap((value as Map).cast<String, dynamic>())); });
    serviceArn = registerOutput<String>('serviceArn');
    serviceName = registerOutput<String>('serviceName');
    serviceRevisionArn = registerOutput<String>('serviceRevisionArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    taskRoleArn = registerOutput<String?>('taskRoleArn');
    timeouts = registerOutput<ExpressGatewayServiceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressGatewayServiceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForSteadyState = registerOutput<bool>('waitForSteadyState');
  }
}
