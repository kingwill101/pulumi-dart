import 'package:pulumi/pulumi.dart';
import '../fleet_fleet_instance_set/fleet_fleet_instance_set.dart';
import '../fleet_launch_template_config/fleet_launch_template_config.dart';
import '../fleet_on_demand_options/fleet_on_demand_options.dart';
import '../fleet_spot_options/fleet_spot_options.dart';
import '../fleet_target_capacity_specification/fleet_target_capacity_specification.dart';
import 'fleet_args3.dart';

/// Provides a resource to manage EC2 Fleets.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Fleet("example", {
/// launchTemplateConfigs: [{
/// launchTemplateSpecification: {
/// launchTemplateId: exampleAwsLaunchTemplate.id,
/// version: exampleAwsLaunchTemplate.latestVersion,
/// },
/// }],
/// targetCapacitySpecification: {
/// defaultTargetCapacityType: "spot",
/// totalTargetCapacity: 5,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Fleet("example",
/// launch_template_configs=[{
/// "launch_template_specification": {
/// "launch_template_id": example_aws_launch_template["id"],
/// "version": example_aws_launch_template["latestVersion"],
/// },
/// }],
/// target_capacity_specification={
/// "default_target_capacity_type": "spot",
/// "total_target_capacity": 5,
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
/// var example = new Aws.Ec2.Fleet("example", new()
/// {
/// LaunchTemplateConfigs = new[]
/// {
/// new Aws.Ec2.Inputs.FleetLaunchTemplateConfigArgs
/// {
/// LaunchTemplateSpecification = new Aws.Ec2.Inputs.FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs
/// {
/// LaunchTemplateId = exampleAwsLaunchTemplate.Id,
/// Version = exampleAwsLaunchTemplate.LatestVersion,
/// },
/// },
/// },
/// TargetCapacitySpecification = new Aws.Ec2.Inputs.FleetTargetCapacitySpecificationArgs
/// {
/// DefaultTargetCapacityType = "spot",
/// TotalTargetCapacity = 5,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewFleet(ctx, "example", &ec2.FleetArgs{
/// LaunchTemplateConfigs: ec2.FleetLaunchTemplateConfigArray{
/// &ec2.FleetLaunchTemplateConfigArgs{
/// LaunchTemplateSpecification: &ec2.FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs{
/// LaunchTemplateId: pulumi.Any(exampleAwsLaunchTemplate.Id),
/// Version:          pulumi.Any(exampleAwsLaunchTemplate.LatestVersion),
/// },
/// },
/// },
/// TargetCapacitySpecification: &ec2.FleetTargetCapacitySpecificationArgs{
/// DefaultTargetCapacityType: pulumi.String("spot"),
/// TotalTargetCapacity:       pulumi.Int(5),
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
/// import com.pulumi.aws.ec2.Fleet;
/// import com.pulumi.aws.ec2.FleetArgs;
/// import com.pulumi.aws.ec2.inputs.FleetLaunchTemplateConfigArgs;
/// import com.pulumi.aws.ec2.inputs.FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs;
/// import com.pulumi.aws.ec2.inputs.FleetTargetCapacitySpecificationArgs;
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
/// .launchTemplateConfigs(FleetLaunchTemplateConfigArgs.builder()
/// .launchTemplateSpecification(FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs.builder()
/// .launchTemplateId(exampleAwsLaunchTemplate.id())
/// .version(exampleAwsLaunchTemplate.latestVersion())
/// .build())
/// .build())
/// .targetCapacitySpecification(FleetTargetCapacitySpecificationArgs.builder()
/// .defaultTargetCapacityType("spot")
/// .totalTargetCapacity(5)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Fleet
/// properties:
/// launchTemplateConfigs:
/// - launchTemplateSpecification:
/// launchTemplateId: ${exampleAwsLaunchTemplate.id}
/// version: ${exampleAwsLaunchTemplate.latestVersion}
/// targetCapacitySpecification:
/// defaultTargetCapacityType: spot
/// totalTargetCapacity: 5
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2.Fleet`" pulumi-lang-dotnet="`aws.ec2.Fleet`" pulumi-lang-go="`ec2.Fleet`" pulumi-lang-python="`ec2.Fleet`" pulumi-lang-yaml="`aws.ec2.Fleet`" pulumi-lang-java="`aws.ec2.Fleet`">`aws.ec2.Fleet`</span> using the Fleet identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/fleet:Fleet example fleet-b9b55d27-c5fc-41ac-a6f3-48fcc91f080c
/// ```
class Fleet3 extends CustomResource {
  /// The ARN of the fleet
  late final Output<String> arn;

  /// Reserved.
  late final Output<String?> context;

  /// Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: `no-termination`, <span pulumi-lang-nodejs="`termination`" pulumi-lang-dotnet="`Termination`" pulumi-lang-go="`termination`" pulumi-lang-python="`termination`" pulumi-lang-yaml="`termination`" pulumi-lang-java="`termination`">`termination`</span>. Defaults to <span pulumi-lang-nodejs="`termination`" pulumi-lang-dotnet="`Termination`" pulumi-lang-go="`termination`" pulumi-lang-python="`termination`" pulumi-lang-yaml="`termination`" pulumi-lang-java="`termination`">`termination`</span>. Supported only for fleets of type <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>.
  late final Output<String?> excessCapacityTerminationPolicy;

  /// Information about the instances that were launched by the fleet. Available only when <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>.
  late final Output<List<FleetFleetInstanceSet>> fleetInstanceSets;

  /// The state of the EC2 Fleet.
  late final Output<String> fleetState;

  /// The number of units fulfilled by this request compared to the set target capacity.
  late final Output<double> fulfilledCapacity;

  /// The number of units fulfilled by this request compared to the set target On-Demand capacity.
  late final Output<double> fulfilledOnDemandCapacity;

  /// Nested argument containing EC2 Launch Template configurations. Defined below.
  late final Output<List<FleetLaunchTemplateConfig>> launchTemplateConfigs;

  /// Nested argument containing On-Demand configurations. Defined below.
  late final Output<FleetOnDemandOptions?> onDemandOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether EC2 Fleet should replace unhealthy instances. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Supported only for fleets of type <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>.
  late final Output<bool?> replaceUnhealthyInstances;

  /// Nested argument containing Spot configurations. Defined below.
  late final Output<FleetSpotOptions?> spotOptions;

  /// Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Nested argument containing target capacity configurations. Defined below.
  late final Output<FleetTargetCapacitySpecification>
      targetCapacitySpecification;

  /// Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> terminateInstances;

  /// Whether running instances should be terminated when the EC2 Fleet expires. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> terminateInstancesWithExpiration;

  /// The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>, <span pulumi-lang-nodejs="`request`" pulumi-lang-dotnet="`Request`" pulumi-lang-go="`request`" pulumi-lang-python="`request`" pulumi-lang-yaml="`request`" pulumi-lang-java="`request`">`request`</span>, <span pulumi-lang-nodejs="`instant`" pulumi-lang-dotnet="`Instant`" pulumi-lang-go="`instant`" pulumi-lang-python="`instant`" pulumi-lang-yaml="`instant`" pulumi-lang-java="`instant`">`instant`</span>. Defaults to <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>.
  late final Output<String?> type;

  /// The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  late final Output<String?> validFrom;

  /// The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  late final Output<String?> validUntil;

  Fleet3(
    String name, {
    FleetArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/fleet:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.context = registerOutput<String?>('context');
    this.excessCapacityTerminationPolicy =
        registerOutput<String?>('excessCapacityTerminationPolicy');
    this.fleetInstanceSets =
        registerOutput<List<FleetFleetInstanceSet>>('fleetInstanceSets');
    this.fleetState = registerOutput<String>('fleetState');
    this.fulfilledCapacity = registerOutput<double>('fulfilledCapacity');
    this.fulfilledOnDemandCapacity =
        registerOutput<double>('fulfilledOnDemandCapacity');
    this.launchTemplateConfigs =
        registerOutput<List<FleetLaunchTemplateConfig>>(
            'launchTemplateConfigs');
    this.onDemandOptions =
        registerOutput<FleetOnDemandOptions?>('onDemandOptions');
    this.region = registerOutput<String>('region');
    this.replaceUnhealthyInstances =
        registerOutput<bool?>('replaceUnhealthyInstances');
    this.spotOptions = registerOutput<FleetSpotOptions?>('spotOptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetCapacitySpecification =
        registerOutput<FleetTargetCapacitySpecification>(
            'targetCapacitySpecification');
    this.terminateInstances = registerOutput<bool?>('terminateInstances');
    this.terminateInstancesWithExpiration =
        registerOutput<bool?>('terminateInstancesWithExpiration');
    this.type = registerOutput<String?>('type');
    this.validFrom = registerOutput<String?>('validFrom');
    this.validUntil = registerOutput<String?>('validUntil');
  }
}
