import 'package:pulumi/pulumi.dart';
import '../fleet_compute_capacity/fleet_compute_capacity.dart';
import '../fleet_domain_join_info/fleet_domain_join_info.dart';
import '../fleet_vpc_config/fleet_vpc_config.dart';
import 'fleet_args.dart';

/// Provides an AppStream fleet.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testFleet = new aws.appstream.Fleet("test_fleet", {
/// name: "test-fleet",
/// computeCapacity: {
/// desiredInstances: 1,
/// },
/// description: "test fleet",
/// idleDisconnectTimeoutInSeconds: 60,
/// displayName: "test-fleet",
/// enableDefaultInternetAccess: false,
/// fleetType: "ON_DEMAND",
/// imageName: "Amazon-AppStream2-Sample-Image-03-11-2023",
/// instanceType: "stream.standard.large",
/// maxUserDurationInSeconds: 600,
/// vpcConfig: {
/// subnetIds: ["subnet-06e9b13400c225127"],
/// },
/// tags: {
/// TagName: "tag-value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_fleet = aws.appstream.Fleet("test_fleet",
/// name="test-fleet",
/// compute_capacity={
/// "desired_instances": 1,
/// },
/// description="test fleet",
/// idle_disconnect_timeout_in_seconds=60,
/// display_name="test-fleet",
/// enable_default_internet_access=False,
/// fleet_type="ON_DEMAND",
/// image_name="Amazon-AppStream2-Sample-Image-03-11-2023",
/// instance_type="stream.standard.large",
/// max_user_duration_in_seconds=600,
/// vpc_config={
/// "subnet_ids": ["subnet-06e9b13400c225127"],
/// },
/// tags={
/// "TagName": "tag-value",
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
/// var testFleet = new Aws.AppStream.Fleet("test_fleet", new()
/// {
/// Name = "test-fleet",
/// ComputeCapacity = new Aws.AppStream.Inputs.FleetComputeCapacityArgs
/// {
/// DesiredInstances = 1,
/// },
/// Description = "test fleet",
/// IdleDisconnectTimeoutInSeconds = 60,
/// DisplayName = "test-fleet",
/// EnableDefaultInternetAccess = false,
/// FleetType = "ON_DEMAND",
/// ImageName = "Amazon-AppStream2-Sample-Image-03-11-2023",
/// InstanceType = "stream.standard.large",
/// MaxUserDurationInSeconds = 600,
/// VpcConfig = new Aws.AppStream.Inputs.FleetVpcConfigArgs
/// {
/// SubnetIds = new[]
/// {
/// "subnet-06e9b13400c225127",
/// },
/// },
/// Tags =
/// {
/// { "TagName", "tag-value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appstream.NewFleet(ctx, "test_fleet", &appstream.FleetArgs{
/// Name: pulumi.String("test-fleet"),
/// ComputeCapacity: &appstream.FleetComputeCapacityArgs{
/// DesiredInstances: pulumi.Int(1),
/// },
/// Description:                    pulumi.String("test fleet"),
/// IdleDisconnectTimeoutInSeconds: pulumi.Int(60),
/// DisplayName:                    pulumi.String("test-fleet"),
/// EnableDefaultInternetAccess:    pulumi.Bool(false),
/// FleetType:                      pulumi.String("ON_DEMAND"),
/// ImageName:                      pulumi.String("Amazon-AppStream2-Sample-Image-03-11-2023"),
/// InstanceType:                   pulumi.String("stream.standard.large"),
/// MaxUserDurationInSeconds:       pulumi.Int(600),
/// VpcConfig: &appstream.FleetVpcConfigArgs{
/// SubnetIds: pulumi.StringArray{
/// pulumi.String("subnet-06e9b13400c225127"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "TagName": pulumi.String("tag-value"),
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
/// import com.pulumi.aws.appstream.Fleet;
/// import com.pulumi.aws.appstream.FleetArgs;
/// import com.pulumi.aws.appstream.inputs.FleetComputeCapacityArgs;
/// import com.pulumi.aws.appstream.inputs.FleetVpcConfigArgs;
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
/// var testFleet = new Fleet("testFleet", FleetArgs.builder()
/// .name("test-fleet")
/// .computeCapacity(FleetComputeCapacityArgs.builder()
/// .desiredInstances(1)
/// .build())
/// .description("test fleet")
/// .idleDisconnectTimeoutInSeconds(60)
/// .displayName("test-fleet")
/// .enableDefaultInternetAccess(false)
/// .fleetType("ON_DEMAND")
/// .imageName("Amazon-AppStream2-Sample-Image-03-11-2023")
/// .instanceType("stream.standard.large")
/// .maxUserDurationInSeconds(600)
/// .vpcConfig(FleetVpcConfigArgs.builder()
/// .subnetIds("subnet-06e9b13400c225127")
/// .build())
/// .tags(Map.of("TagName", "tag-value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testFleet:
/// type: aws:appstream:Fleet
/// name: test_fleet
/// properties:
/// name: test-fleet
/// computeCapacity:
/// desiredInstances: 1
/// description: test fleet
/// idleDisconnectTimeoutInSeconds: 60
/// displayName: test-fleet
/// enableDefaultInternetAccess: false
/// fleetType: ON_DEMAND
/// imageName: Amazon-AppStream2-Sample-Image-03-11-2023
/// instanceType: stream.standard.large
/// maxUserDurationInSeconds: 600
/// vpcConfig:
/// subnetIds:
/// - subnet-06e9b13400c225127
/// tags:
/// TagName: tag-value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appstream.Fleet`" pulumi-lang-dotnet="`aws.appstream.Fleet`" pulumi-lang-go="`appstream.Fleet`" pulumi-lang-python="`appstream.Fleet`" pulumi-lang-yaml="`aws.appstream.Fleet`" pulumi-lang-java="`aws.appstream.Fleet`">`aws.appstream.Fleet`</span> using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/fleet:Fleet example fleetNameExample
/// ```
class Fleet extends CustomResource {
  /// ARN of the appstream fleet.
  late final Output<String> arn;

  /// Configuration block for the desired capacity of the fleet. See below.
  late final Output<FleetComputeCapacity> computeCapacity;

  /// Date and time, in UTC and extended RFC 3339 format, when the fleet was created.
  late final Output<String> createdTime;

  /// Description to display.
  late final Output<String> description;

  /// Amount of time that a streaming session remains active after users disconnect.
  late final Output<int> disconnectTimeoutInSeconds;

  /// Human-readable friendly name for the AppStream fleet.
  late final Output<String> displayName;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below.
  late final Output<FleetDomainJoinInfo> domainJoinInfo;

  /// Enables or disables default internet access for the fleet.
  late final Output<bool> enableDefaultInternetAccess;

  /// Fleet type. Valid values are: `ON_DEMAND`, `ALWAYS_ON`
  late final Output<String> fleetType;

  /// ARN of the IAM role to apply to the fleet.
  late final Output<String> iamRoleArn;

  /// Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the <span pulumi-lang-nodejs="`disconnectTimeoutInSeconds`" pulumi-lang-dotnet="`DisconnectTimeoutInSeconds`" pulumi-lang-go="`disconnectTimeoutInSeconds`" pulumi-lang-python="`disconnect_timeout_in_seconds`" pulumi-lang-yaml="`disconnectTimeoutInSeconds`" pulumi-lang-java="`disconnectTimeoutInSeconds`">`disconnect_timeout_in_seconds`</span> time interval begins. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Valid value is between <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> and `3600 `seconds.
  late final Output<int?> idleDisconnectTimeoutInSeconds;

  /// ARN of the public, private, or shared image to use.
  late final Output<String> imageArn;

  /// Name of the image used to create the fleet.
  late final Output<String> imageName;

  /// Instance type to use when launching fleet instances.
  late final Output<String> instanceType;

  /// The maximum number of user sessions on an instance. This only applies to multi-session fleets.
  late final Output<int?> maxSessionsPerInstance;

  /// Maximum amount of time that a streaming session can remain active, in seconds.
  late final Output<int> maxUserDurationInSeconds;

  /// Unique name for the fleet.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the fleet. Can be `STARTING`, `RUNNING`, `STOPPING` or `STOPPED`
  late final Output<String> state;

  /// AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  late final Output<String> streamView;

  /// Map of tags to attach to AppStream instances.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for the VPC configuration for the image builder. See below.
  late final Output<FleetVpcConfig> vpcConfig;

  Fleet(
    String name, {
    FleetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleet:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.computeCapacity = Output.createUnknown<FleetComputeCapacity>();
    this.createdTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.disconnectTimeoutInSeconds = Output.createUnknown<int>();
    this.displayName = Output.createUnknown<String>();
    this.domainJoinInfo = Output.createUnknown<FleetDomainJoinInfo>();
    this.enableDefaultInternetAccess = Output.createUnknown<bool>();
    this.fleetType = Output.createUnknown<String>();
    this.iamRoleArn = Output.createUnknown<String>();
    this.idleDisconnectTimeoutInSeconds = Output.createUnknown<int?>();
    this.imageArn = Output.createUnknown<String>();
    this.imageName = Output.createUnknown<String>();
    this.instanceType = Output.createUnknown<String>();
    this.maxSessionsPerInstance = Output.createUnknown<int?>();
    this.maxUserDurationInSeconds = Output.createUnknown<int>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.streamView = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcConfig = Output.createUnknown<FleetVpcConfig>();
  }
}
