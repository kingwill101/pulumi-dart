import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_args.dart';
import 'daemon_deployment_configuration.dart';
import 'daemon_state.dart';
import 'daemon_timeouts.dart';

/// Provides an ECS Daemon resource, which manages a daemon that runs exactly one task on each container instance in an ECS cluster.
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
/// const example = new aws.ecs.Daemon("example", {
///     name: "example-daemon",
///     clusterArn: exampleAwsEcsCluster.arn,
///     daemonTaskDefinitionArn: exampleAwsEcsDaemonTaskDefinition.arn,
///     capacityProviderArns: [exampleAwsEcsCapacityProvider.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Daemon("example",
///     name="example-daemon",
///     cluster_arn=example_aws_ecs_cluster["arn"],
///     daemon_task_definition_arn=example_aws_ecs_daemon_task_definition["arn"],
///     capacity_provider_arns=[example_aws_ecs_capacity_provider["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Daemon("example", new()
///     {
///         Name = "example-daemon",
///         ClusterArn = exampleAwsEcsCluster.Arn,
///         DaemonTaskDefinitionArn = exampleAwsEcsDaemonTaskDefinition.Arn,
///         CapacityProviderArns = new[]
///         {
///             exampleAwsEcsCapacityProvider.Arn,
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
/// 		_, err := ecs.NewDaemon(ctx, "example", &ecs.DaemonArgs{
/// 			Name:                    pulumi.String("example-daemon"),
/// 			ClusterArn:              pulumi.Any(exampleAwsEcsCluster.Arn),
/// 			DaemonTaskDefinitionArn: pulumi.Any(exampleAwsEcsDaemonTaskDefinition.Arn),
/// 			CapacityProviderArns: pulumi.StringArray{
/// 				exampleAwsEcsCapacityProvider.Arn,
/// 			},
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
/// resource "aws_ecs_daemon" "example" {
///   name                       = "example-daemon"
///   cluster_arn                = exampleAwsEcsCluster.arn
///   daemon_task_definition_arn = exampleAwsEcsDaemonTaskDefinition.arn
///   capacity_provider_arns     = [exampleAwsEcsCapacityProvider.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Daemon;
/// import com.pulumi.aws.ecs.DaemonArgs;
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
///         var example = new Daemon("example", DaemonArgs.builder()
///             .name("example-daemon")
///             .clusterArn(exampleAwsEcsCluster.arn())
///             .daemonTaskDefinitionArn(exampleAwsEcsDaemonTaskDefinition.arn())
///             .capacityProviderArns(exampleAwsEcsCapacityProvider.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Daemon
///     properties:
///       name: example-daemon
///       clusterArn: ${exampleAwsEcsCluster.arn}
///       daemonTaskDefinitionArn: ${exampleAwsEcsDaemonTaskDefinition.arn}
///       capacityProviderArns:
///         - ${exampleAwsEcsCapacityProvider.arn}
/// ```
///
///
/// ### With Deployment Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Daemon("example", {
///     deploymentConfiguration: {
///         alarms: {
///             alarmNames: ["example-alarm"],
///             enable: true,
///         },
///         drainPercent: 50,
///         bakeTimeInMinutes: 10,
///     },
///     name: "example-daemon",
///     clusterArn: exampleAwsEcsCluster.arn,
///     daemonTaskDefinitionArn: exampleAwsEcsDaemonTaskDefinition.arn,
///     capacityProviderArns: [exampleAwsEcsCapacityProvider.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Daemon("example",
///     deployment_configuration={
///         "alarms": {
///             "alarm_names": ["example-alarm"],
///             "enable": True,
///         },
///         "drain_percent": float(50),
///         "bake_time_in_minutes": 10,
///     },
///     name="example-daemon",
///     cluster_arn=example_aws_ecs_cluster["arn"],
///     daemon_task_definition_arn=example_aws_ecs_daemon_task_definition["arn"],
///     capacity_provider_arns=[example_aws_ecs_capacity_provider["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Daemon("example", new()
///     {
///         DeploymentConfiguration = new Aws.Ecs.Inputs.DaemonDeploymentConfigurationArgs
///         {
///             Alarms = new Aws.Ecs.Inputs.DaemonDeploymentConfigurationAlarmsArgs
///             {
///                 AlarmNames = new[]
///                 {
///                     "example-alarm",
///                 },
///                 Enable = true,
///             },
///             DrainPercent = 50,
///             BakeTimeInMinutes = 10,
///         },
///         Name = "example-daemon",
///         ClusterArn = exampleAwsEcsCluster.Arn,
///         DaemonTaskDefinitionArn = exampleAwsEcsDaemonTaskDefinition.Arn,
///         CapacityProviderArns = new[]
///         {
///             exampleAwsEcsCapacityProvider.Arn,
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
/// 		_, err := ecs.NewDaemon(ctx, "example", &ecs.DaemonArgs{
/// 			DeploymentConfiguration: &ecs.DaemonDeploymentConfigurationArgs{
/// 				Alarms: &ecs.DaemonDeploymentConfigurationAlarmsArgs{
/// 					AlarmNames: pulumi.StringArray{
/// 						pulumi.String("example-alarm"),
/// 					},
/// 					Enable: pulumi.Bool(true),
/// 				},
/// 				DrainPercent:      pulumi.Float64(50),
/// 				BakeTimeInMinutes: pulumi.Int(10),
/// 			},
/// 			Name:                    pulumi.String("example-daemon"),
/// 			ClusterArn:              pulumi.Any(exampleAwsEcsCluster.Arn),
/// 			DaemonTaskDefinitionArn: pulumi.Any(exampleAwsEcsDaemonTaskDefinition.Arn),
/// 			CapacityProviderArns: pulumi.StringArray{
/// 				exampleAwsEcsCapacityProvider.Arn,
/// 			},
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
/// resource "aws_ecs_daemon" "example" {
///   deployment_configuration = {
///     alarms = {
///       alarm_names = ["example-alarm"]
///       enable      = true
///     }
///     drain_percent        = 50
///     bake_time_in_minutes = 10
///   }
///   name                       = "example-daemon"
///   cluster_arn                = exampleAwsEcsCluster.arn
///   daemon_task_definition_arn = exampleAwsEcsDaemonTaskDefinition.arn
///   capacity_provider_arns     = [exampleAwsEcsCapacityProvider.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Daemon;
/// import com.pulumi.aws.ecs.DaemonArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonDeploymentConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.DaemonDeploymentConfigurationAlarmsArgs;
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
///         var example = new Daemon("example", DaemonArgs.builder()
///             .deploymentConfiguration(DaemonDeploymentConfigurationArgs.builder()
///                 .alarms(DaemonDeploymentConfigurationAlarmsArgs.builder()
///                     .alarmNames("example-alarm")
///                     .enable(true)
///                     .build())
///                 .drainPercent(50.0)
///                 .bakeTimeInMinutes(10)
///                 .build())
///             .name("example-daemon")
///             .clusterArn(exampleAwsEcsCluster.arn())
///             .daemonTaskDefinitionArn(exampleAwsEcsDaemonTaskDefinition.arn())
///             .capacityProviderArns(exampleAwsEcsCapacityProvider.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Daemon
///     properties:
///       deploymentConfiguration:
///         alarms:
///           alarmNames:
///             - example-alarm
///           enable: true
///         drainPercent: 50
///         bakeTimeInMinutes: 10
///       name: example-daemon
///       clusterArn: ${exampleAwsEcsCluster.arn}
///       daemonTaskDefinitionArn: ${exampleAwsEcsDaemonTaskDefinition.arn}
///       capacityProviderArns:
///         - ${exampleAwsEcsCapacityProvider.arn}
/// ```
///
///
/// ### With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Daemon("example", {
///     name: "example-daemon",
///     clusterArn: exampleAwsEcsCluster.arn,
///     daemonTaskDefinitionArn: exampleAwsEcsDaemonTaskDefinition.arn,
///     capacityProviderArns: [exampleAwsEcsCapacityProvider.arn],
///     tags: {
///         Environment: "production",
///         Application: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Daemon("example",
///     name="example-daemon",
///     cluster_arn=example_aws_ecs_cluster["arn"],
///     daemon_task_definition_arn=example_aws_ecs_daemon_task_definition["arn"],
///     capacity_provider_arns=[example_aws_ecs_capacity_provider["arn"]],
///     tags={
///         "Environment": "production",
///         "Application": "example",
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
///     var example = new Aws.Ecs.Daemon("example", new()
///     {
///         Name = "example-daemon",
///         ClusterArn = exampleAwsEcsCluster.Arn,
///         DaemonTaskDefinitionArn = exampleAwsEcsDaemonTaskDefinition.Arn,
///         CapacityProviderArns = new[]
///         {
///             exampleAwsEcsCapacityProvider.Arn,
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Application", "example" },
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
/// 		_, err := ecs.NewDaemon(ctx, "example", &ecs.DaemonArgs{
/// 			Name:                    pulumi.String("example-daemon"),
/// 			ClusterArn:              pulumi.Any(exampleAwsEcsCluster.Arn),
/// 			DaemonTaskDefinitionArn: pulumi.Any(exampleAwsEcsDaemonTaskDefinition.Arn),
/// 			CapacityProviderArns: pulumi.StringArray{
/// 				exampleAwsEcsCapacityProvider.Arn,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Application": pulumi.String("example"),
/// 			},
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
/// resource "aws_ecs_daemon" "example" {
///   name                       = "example-daemon"
///   cluster_arn                = exampleAwsEcsCluster.arn
///   daemon_task_definition_arn = exampleAwsEcsDaemonTaskDefinition.arn
///   capacity_provider_arns     = [exampleAwsEcsCapacityProvider.arn]
///   tags = {
///     "Environment" = "production"
///     "Application" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecs.Daemon;
/// import com.pulumi.aws.ecs.DaemonArgs;
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
///         var example = new Daemon("example", DaemonArgs.builder()
///             .name("example-daemon")
///             .clusterArn(exampleAwsEcsCluster.arn())
///             .daemonTaskDefinitionArn(exampleAwsEcsDaemonTaskDefinition.arn())
///             .capacityProviderArns(exampleAwsEcsCapacityProvider.arn())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Application", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Daemon
///     properties:
///       name: example-daemon
///       clusterArn: ${exampleAwsEcsCluster.arn}
///       daemonTaskDefinitionArn: ${exampleAwsEcsDaemonTaskDefinition.arn}
///       capacityProviderArns:
///         - ${exampleAwsEcsCapacityProvider.arn}
///       tags:
///         Environment: production
///         Application: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the ECS Daemon.
///
///
/// Using `pulumi import`, import ECS Daemons using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/daemon:Daemon example arn:aws:ecs:us-east-1:123456789012:daemon/example-cluster/example-daemon
/// ```
class Daemon extends pulumi.CustomResource {
  /// ARN of the daemon.
  late final pulumi.Output<String> arn;
  /// Set of capacity provider ARNs to use for the daemon.
  late final pulumi.Output<List<String>> capacityProviderArns;
  /// ARN of the ECS cluster where the daemon will run.
  late final pulumi.Output<String> clusterArn;
  /// ARN of the daemon task definition to use for the daemon. Drift is not detected on this attribute because the API may report a stale revision while a deployment is in progress.
  late final pulumi.Output<String> daemonTaskDefinitionArn;
  /// ARN of the most recent daemon deployment.
  late final pulumi.Output<String> deploymentArn;
  /// Configuration for daemon deployments. See Deployment Configuration below.
  late final pulumi.Output<DaemonDeploymentConfiguration?> deploymentConfiguration;
  /// Whether to enable Amazon ECS managed tags for the tasks within the daemon.
  late final pulumi.Output<bool?> enableEcsManagedTags;
  /// Whether to enable Amazon ECS Exec for the tasks within the daemon.
  late final pulumi.Output<bool?> enableExecuteCommand;
  /// Name of the daemon.
  late final pulumi.Output<String> name;
  /// Whether to propagate tags from the daemon to tasks. Valid values are `DAEMON` or `NONE`.
  late final pulumi.Output<String?> propagateTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the daemon. Valid values are `ACTIVE` or `DELETE_IN_PROGRESS`.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<DaemonTimeouts?> timeouts;

  /// Creates a new [Daemon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Daemon]. {@macro pulumi_ecs_daemon_daemon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Daemon(
    String name, {
    DaemonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/daemon:Daemon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    capacityProviderArns = registerOutput<List<String>>('capacityProviderArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clusterArn = registerOutput<String>('clusterArn');
    daemonTaskDefinitionArn = registerOutput<String>('daemonTaskDefinitionArn');
    deploymentArn = registerOutput<String>('deploymentArn');
    deploymentConfiguration = registerOutput<DaemonDeploymentConfiguration?>('deploymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableEcsManagedTags = registerOutput<bool?>('enableEcsManagedTags');
    enableExecuteCommand = registerOutput<bool?>('enableExecuteCommand');
    this.name = registerOutput<String>('name');
    propagateTags = registerOutput<String?>('propagateTags');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DaemonTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Daemon] resource's state with the given [name] and [id].
  static Daemon get(
    String name,
    pulumi.Input<String> id, {
    DaemonState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Daemon._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Daemon._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/daemon:Daemon',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    capacityProviderArns = registerOutput<List<String>>('capacityProviderArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clusterArn = registerOutput<String>('clusterArn');
    daemonTaskDefinitionArn = registerOutput<String>('daemonTaskDefinitionArn');
    deploymentArn = registerOutput<String>('deploymentArn');
    deploymentConfiguration = registerOutput<DaemonDeploymentConfiguration?>('deploymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableEcsManagedTags = registerOutput<bool?>('enableEcsManagedTags');
    enableExecuteCommand = registerOutput<bool?>('enableExecuteCommand');
    this.name = registerOutput<String>('name');
    propagateTags = registerOutput<String?>('propagateTags');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DaemonTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Daemon] resource.
  Daemon.reference(String urn)
    : super(
        'aws:ecs/daemon:Daemon',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    capacityProviderArns = registerOutput<List<String>>('capacityProviderArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clusterArn = registerOutput<String>('clusterArn');
    daemonTaskDefinitionArn = registerOutput<String>('daemonTaskDefinitionArn');
    deploymentArn = registerOutput<String>('deploymentArn');
    deploymentConfiguration = registerOutput<DaemonDeploymentConfiguration?>('deploymentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonDeploymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableEcsManagedTags = registerOutput<bool?>('enableEcsManagedTags');
    enableExecuteCommand = registerOutput<bool?>('enableExecuteCommand');
    this.name = registerOutput<String>('name');
    propagateTags = registerOutput<String?>('propagateTags');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<DaemonTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaemonTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
