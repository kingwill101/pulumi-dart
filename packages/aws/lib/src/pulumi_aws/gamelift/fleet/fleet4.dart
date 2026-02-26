import 'package:pulumi/pulumi.dart';
import '../fleet_certificate_configuration/fleet_certificate_configuration.dart';
import '../fleet_ec2_inbound_permission/fleet_ec2_inbound_permission.dart';
import '../fleet_resource_creation_limit_policy/fleet_resource_creation_limit_policy.dart';
import '../fleet_runtime_configuration/fleet_runtime_configuration.dart';
import 'fleet_args4.dart';

/// Provides a GameLift Fleet resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.gamelift.Fleet("example", {
/// buildId: exampleAwsGameliftBuild.id,
/// ec2InstanceType: "t2.micro",
/// fleetType: "ON_DEMAND",
/// name: "example-fleet-name",
/// runtimeConfiguration: {
/// serverProcesses: [{
/// concurrentExecutions: 1,
/// launchPath: "C:\\game\\GomokuServer.exe",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.gamelift.Fleet("example",
/// build_id=example_aws_gamelift_build["id"],
/// ec2_instance_type="t2.micro",
/// fleet_type="ON_DEMAND",
/// name="example-fleet-name",
/// runtime_configuration={
/// "server_processes": [{
/// "concurrent_executions": 1,
/// "launch_path": "C:\\game\\GomokuServer.exe",
/// }],
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
/// var example = new Aws.GameLift.Fleet("example", new()
/// {
/// BuildId = exampleAwsGameliftBuild.Id,
/// Ec2InstanceType = "t2.micro",
/// FleetType = "ON_DEMAND",
/// Name = "example-fleet-name",
/// RuntimeConfiguration = new Aws.GameLift.Inputs.FleetRuntimeConfigurationArgs
/// {
/// ServerProcesses = new[]
/// {
/// new Aws.GameLift.Inputs.FleetRuntimeConfigurationServerProcessArgs
/// {
/// ConcurrentExecutions = 1,
/// LaunchPath = "C:\\game\\GomokuServer.exe",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gamelift.NewFleet(ctx, "example", &gamelift.FleetArgs{
/// BuildId:         pulumi.Any(exampleAwsGameliftBuild.Id),
/// Ec2InstanceType: pulumi.String("t2.micro"),
/// FleetType:       pulumi.String("ON_DEMAND"),
/// Name:            pulumi.String("example-fleet-name"),
/// RuntimeConfiguration: &gamelift.FleetRuntimeConfigurationArgs{
/// ServerProcesses: gamelift.FleetRuntimeConfigurationServerProcessArray{
/// &gamelift.FleetRuntimeConfigurationServerProcessArgs{
/// ConcurrentExecutions: pulumi.Int(1),
/// LaunchPath:           pulumi.String("C:\\game\\GomokuServer.exe"),
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Fleet("example", FleetArgs.builder()
/// .buildId(exampleAwsGameliftBuild.id())
/// .ec2InstanceType("t2.micro")
/// .fleetType("ON_DEMAND")
/// .name("example-fleet-name")
/// .runtimeConfiguration(FleetRuntimeConfigurationArgs.builder()
/// .serverProcesses(FleetRuntimeConfigurationServerProcessArgs.builder()
/// .concurrentExecutions(1)
/// .launchPath("C:\\game\\GomokuServer.exe")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:gamelift:Fleet
/// properties:
/// buildId: ${exampleAwsGameliftBuild.id}
/// ec2InstanceType: t2.micro
/// fleetType: ON_DEMAND
/// name: example-fleet-name
/// runtimeConfiguration:
/// serverProcesses:
/// - concurrentExecutions: 1
/// launchPath: C:\game\GomokuServer.exe
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Fleets using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/fleet:Fleet example <fleet-id>
/// ```
class Fleet4 extends CustomResource {
  /// Fleet ARN.
  late final Output<String> arn;

  /// Build ARN.
  late final Output<String> buildArn;

  /// ID of the GameLift Build to be deployed on the fleet. Conflicts with <span pulumi-lang-nodejs="`scriptId`" pulumi-lang-dotnet="`ScriptId`" pulumi-lang-go="`scriptId`" pulumi-lang-python="`script_id`" pulumi-lang-yaml="`scriptId`" pulumi-lang-java="`scriptId`">`script_id`</span>.
  late final Output<String?> buildId;

  /// Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  late final Output<FleetCertificateConfiguration> certificateConfiguration;

  /// Human-readable description of the fleet.
  late final Output<String?> description;

  /// Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  late final Output<List<FleetEc2InboundPermission>> ec2InboundPermissions;

  /// Name of an EC2 instance typeE.g., `t2.micro`
  late final Output<String> ec2InstanceType;

  /// Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  late final Output<String?> fleetType;

  /// ARN of an IAM role that instances in the fleet can assume.
  late final Output<String?> instanceRoleArn;
  late final Output<List<String>> logPaths;

  /// List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  late final Output<List<String>> metricGroups;

  /// The name of the fleet.
  late final Output<String> name;

  /// Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  late final Output<String?> newGameSessionProtectionPolicy;

  /// Operating system of the fleet's computing resources.
  late final Output<String> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  late final Output<FleetResourceCreationLimitPolicy?>
      resourceCreationLimitPolicy;

  /// Instructions for launching server processes on each instance in the fleet. See below.
  late final Output<FleetRuntimeConfiguration?> runtimeConfiguration;

  /// Script ARN.
  late final Output<String> scriptArn;

  /// ID of the GameLift Script to be deployed on the fleet. Conflicts with <span pulumi-lang-nodejs="`buildId`" pulumi-lang-dotnet="`BuildId`" pulumi-lang-go="`buildId`" pulumi-lang-python="`build_id`" pulumi-lang-yaml="`buildId`" pulumi-lang-java="`buildId`">`build_id`</span>.
  late final Output<String?> scriptId;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Fleet4(
    String name, {
    FleetArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/fleet:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.buildArn = Output.createUnknown<String>();
    this.buildId = Output.createUnknown<String?>();
    this.certificateConfiguration =
        Output.createUnknown<FleetCertificateConfiguration>();
    this.description = Output.createUnknown<String?>();
    this.ec2InboundPermissions =
        Output.createUnknown<List<FleetEc2InboundPermission>>();
    this.ec2InstanceType = Output.createUnknown<String>();
    this.fleetType = Output.createUnknown<String?>();
    this.instanceRoleArn = Output.createUnknown<String?>();
    this.logPaths = Output.createUnknown<List<String>>();
    this.metricGroups = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.newGameSessionProtectionPolicy = Output.createUnknown<String?>();
    this.operatingSystem = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceCreationLimitPolicy =
        Output.createUnknown<FleetResourceCreationLimitPolicy?>();
    this.runtimeConfiguration =
        Output.createUnknown<FleetRuntimeConfiguration?>();
    this.scriptArn = Output.createUnknown<String>();
    this.scriptId = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
