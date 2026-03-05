import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'fleet_certificate_configuration.dart';
import 'fleet_resource_creation_limit_policy.dart';
import 'fleet_runtime_configuration.dart';
import 'fleet_state.dart';

/// Provides a GameLift Fleet resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.gamelift.Fleet("example", {
///     buildId: exampleAwsGameliftBuild.id,
///     ec2InstanceType: "t2.micro",
///     fleetType: "ON_DEMAND",
///     name: "example-fleet-name",
///     runtimeConfiguration: {
///         serverProcesses: [{
///             concurrentExecutions: 1,
///             launchPath: "C:\\game\\GomokuServer.exe",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.gamelift.Fleet("example",
///     build_id=example_aws_gamelift_build["id"],
///     ec2_instance_type="t2.micro",
///     fleet_type="ON_DEMAND",
///     name="example-fleet-name",
///     runtime_configuration={
///         "server_processes": [{
///             "concurrent_executions": 1,
///             "launch_path": "C:\\game\\GomokuServer.exe",
///         }],
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
///     var example = new Aws.GameLift.Fleet("example", new()
///     {
///         BuildId = exampleAwsGameliftBuild.Id,
///         Ec2InstanceType = "t2.micro",
///         FleetType = "ON_DEMAND",
///         Name = "example-fleet-name",
///         RuntimeConfiguration = new Aws.GameLift.Inputs.FleetRuntimeConfigurationArgs
///         {
///             ServerProcesses = new[]
///             {
///                 new Aws.GameLift.Inputs.FleetRuntimeConfigurationServerProcessArgs
///                 {
///                     ConcurrentExecutions = 1,
///                     LaunchPath = "C:\\game\\GomokuServer.exe",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gamelift.NewFleet(ctx, "example", &gamelift.FleetArgs{
/// 			BuildId:         pulumi.Any(exampleAwsGameliftBuild.Id),
/// 			Ec2InstanceType: pulumi.String("t2.micro"),
/// 			FleetType:       pulumi.String("ON_DEMAND"),
/// 			Name:            pulumi.String("example-fleet-name"),
/// 			RuntimeConfiguration: &gamelift.FleetRuntimeConfigurationArgs{
/// 				ServerProcesses: gamelift.FleetRuntimeConfigurationServerProcessArray{
/// 					&gamelift.FleetRuntimeConfigurationServerProcessArgs{
/// 						ConcurrentExecutions: pulumi.Int(1),
/// 						LaunchPath:           pulumi.String("C:\\game\\GomokuServer.exe"),
/// 					},
/// 				},
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
/// import com.pulumi.aws.gamelift.Fleet;
/// import com.pulumi.aws.gamelift.FleetArgs;
/// import com.pulumi.aws.gamelift.inputs.FleetRuntimeConfigurationArgs;
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
///         var example = new Fleet("example", FleetArgs.builder()
///             .buildId(exampleAwsGameliftBuild.id())
///             .ec2InstanceType("t2.micro")
///             .fleetType("ON_DEMAND")
///             .name("example-fleet-name")
///             .runtimeConfiguration(FleetRuntimeConfigurationArgs.builder()
///                 .serverProcesses(FleetRuntimeConfigurationServerProcessArgs.builder()
///                     .concurrentExecutions(1)
///                     .launchPath("C:\\game\\GomokuServer.exe")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:gamelift:Fleet
///     properties:
///       buildId: ${exampleAwsGameliftBuild.id}
///       ec2InstanceType: t2.micro
///       fleetType: ON_DEMAND
///       name: example-fleet-name
///       runtimeConfiguration:
///         serverProcesses:
///           - concurrentExecutions: 1
///             launchPath: C:\game\GomokuServer.exe
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Fleets using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/fleet:Fleet example <fleet-id>
/// ```
class Fleet extends pulumi.CustomResource {
  /// Fleet ARN.
  late final pulumi.Output<String> arn;
  /// Build ARN.
  late final pulumi.Output<String> buildArn;
  /// ID of the GameLift Build to be deployed on the fleet. Conflicts with `script_id`.
  late final pulumi.Output<String?> buildId;
  /// Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  late final pulumi.Output<FleetCertificateConfiguration> certificateConfiguration;
  /// Human-readable description of the fleet.
  late final pulumi.Output<String?> description;
  /// Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> ec2InboundPermissions;
  /// Name of an EC2 instance typeE.g., `t2.micro`
  late final pulumi.Output<String> ec2InstanceType;
  /// Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  late final pulumi.Output<String?> fleetType;
  /// ARN of an IAM role that instances in the fleet can assume.
  late final pulumi.Output<String?> instanceRoleArn;
  late final pulumi.Output<List<String>> logPaths;
  /// List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to `default`.
  late final pulumi.Output<List<String>> metricGroups;
  /// The name of the fleet.
  late final pulumi.Output<String> name;
  /// Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  late final pulumi.Output<String?> newGameSessionProtectionPolicy;
  /// Operating system of the fleet's computing resources.
  late final pulumi.Output<String> operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  late final pulumi.Output<FleetResourceCreationLimitPolicy?> resourceCreationLimitPolicy;
  /// Instructions for launching server processes on each instance in the fleet. See below.
  late final pulumi.Output<FleetRuntimeConfiguration?> runtimeConfiguration;
  /// Script ARN.
  late final pulumi.Output<String> scriptArn;
  /// ID of the GameLift Script to be deployed on the fleet. Conflicts with `build_id`.
  late final pulumi.Output<String?> scriptId;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_gamelift_fleet_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(
    String name, {
    FleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    buildArn = registerOutput<String>('buildArn');
    buildId = registerOutput<String?>('buildId');
    certificateConfiguration = registerOutput<FleetCertificateConfiguration>('certificateConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetCertificateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    ec2InboundPermissions = registerOutput<List<Map<String, dynamic>>>('ec2InboundPermissions');
    ec2InstanceType = registerOutput<String>('ec2InstanceType');
    fleetType = registerOutput<String?>('fleetType');
    instanceRoleArn = registerOutput<String?>('instanceRoleArn');
    logPaths = registerOutput<List<String>>('logPaths');
    metricGroups = registerOutput<List<String>>('metricGroups');
    this.name = registerOutput<String>('name');
    newGameSessionProtectionPolicy = registerOutput<String?>('newGameSessionProtectionPolicy');
    operatingSystem = registerOutput<String>('operatingSystem');
    region = registerOutput<String>('region');
    resourceCreationLimitPolicy = registerOutput<FleetResourceCreationLimitPolicy?>('resourceCreationLimitPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetResourceCreationLimitPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimeConfiguration = registerOutput<FleetRuntimeConfiguration?>('runtimeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetRuntimeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scriptArn = registerOutput<String>('scriptArn');
    scriptId = registerOutput<String?>('scriptId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Fleet] resource's state with the given [name] and [id].
  static Fleet get(
    String name,
    pulumi.Input<String> id, {
    FleetState? state,
  }) {
    return Fleet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Fleet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    buildArn = registerOutput<String>('buildArn');
    buildId = registerOutput<String?>('buildId');
    certificateConfiguration = registerOutput<FleetCertificateConfiguration>('certificateConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetCertificateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    ec2InboundPermissions = registerOutput<List<Map<String, dynamic>>>('ec2InboundPermissions');
    ec2InstanceType = registerOutput<String>('ec2InstanceType');
    fleetType = registerOutput<String?>('fleetType');
    instanceRoleArn = registerOutput<String?>('instanceRoleArn');
    logPaths = registerOutput<List<String>>('logPaths');
    metricGroups = registerOutput<List<String>>('metricGroups');
    this.name = registerOutput<String>('name');
    newGameSessionProtectionPolicy = registerOutput<String?>('newGameSessionProtectionPolicy');
    operatingSystem = registerOutput<String>('operatingSystem');
    region = registerOutput<String>('region');
    resourceCreationLimitPolicy = registerOutput<FleetResourceCreationLimitPolicy?>('resourceCreationLimitPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetResourceCreationLimitPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimeConfiguration = registerOutput<FleetRuntimeConfiguration?>('runtimeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetRuntimeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scriptArn = registerOutput<String>('scriptArn');
    scriptId = registerOutput<String?>('scriptId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
