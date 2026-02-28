import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'fleet_compute_capacity.dart';
import 'fleet_domain_join_info.dart';
import 'fleet_vpc_config.dart';

/// Provides an AppStream fleet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testFleet = new aws.appstream.Fleet("test_fleet", {
///     name: "test-fleet",
///     computeCapacity: {
///         desiredInstances: 1,
///     },
///     description: "test fleet",
///     idleDisconnectTimeoutInSeconds: 60,
///     displayName: "test-fleet",
///     enableDefaultInternetAccess: false,
///     fleetType: "ON_DEMAND",
///     imageName: "Amazon-AppStream2-Sample-Image-03-11-2023",
///     instanceType: "stream.standard.large",
///     maxUserDurationInSeconds: 600,
///     vpcConfig: {
///         subnetIds: ["subnet-06e9b13400c225127"],
///     },
///     tags: {
///         TagName: "tag-value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_fleet = aws.appstream.Fleet("test_fleet",
///     name="test-fleet",
///     compute_capacity={
///         "desired_instances": 1,
///     },
///     description="test fleet",
///     idle_disconnect_timeout_in_seconds=60,
///     display_name="test-fleet",
///     enable_default_internet_access=False,
///     fleet_type="ON_DEMAND",
///     image_name="Amazon-AppStream2-Sample-Image-03-11-2023",
///     instance_type="stream.standard.large",
///     max_user_duration_in_seconds=600,
///     vpc_config={
///         "subnet_ids": ["subnet-06e9b13400c225127"],
///     },
///     tags={
///         "TagName": "tag-value",
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
///     var testFleet = new Aws.AppStream.Fleet("test_fleet", new()
///     {
///         Name = "test-fleet",
///         ComputeCapacity = new Aws.AppStream.Inputs.FleetComputeCapacityArgs
///         {
///             DesiredInstances = 1,
///         },
///         Description = "test fleet",
///         IdleDisconnectTimeoutInSeconds = 60,
///         DisplayName = "test-fleet",
///         EnableDefaultInternetAccess = false,
///         FleetType = "ON_DEMAND",
///         ImageName = "Amazon-AppStream2-Sample-Image-03-11-2023",
///         InstanceType = "stream.standard.large",
///         MaxUserDurationInSeconds = 600,
///         VpcConfig = new Aws.AppStream.Inputs.FleetVpcConfigArgs
///         {
///             SubnetIds = new[]
///             {
///                 "subnet-06e9b13400c225127",
///             },
///         },
///         Tags =
///         {
///             { "TagName", "tag-value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appstream.NewFleet(ctx, "test_fleet", &appstream.FleetArgs{
/// 			Name: pulumi.String("test-fleet"),
/// 			ComputeCapacity: &appstream.FleetComputeCapacityArgs{
/// 				DesiredInstances: pulumi.Int(1),
/// 			},
/// 			Description:                    pulumi.String("test fleet"),
/// 			IdleDisconnectTimeoutInSeconds: pulumi.Int(60),
/// 			DisplayName:                    pulumi.String("test-fleet"),
/// 			EnableDefaultInternetAccess:    pulumi.Bool(false),
/// 			FleetType:                      pulumi.String("ON_DEMAND"),
/// 			ImageName:                      pulumi.String("Amazon-AppStream2-Sample-Image-03-11-2023"),
/// 			InstanceType:                   pulumi.String("stream.standard.large"),
/// 			MaxUserDurationInSeconds:       pulumi.Int(600),
/// 			VpcConfig: &appstream.FleetVpcConfigArgs{
/// 				SubnetIds: pulumi.StringArray{
/// 					pulumi.String("subnet-06e9b13400c225127"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"TagName": pulumi.String("tag-value"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var testFleet = new Fleet("testFleet", FleetArgs.builder()
///             .name("test-fleet")
///             .computeCapacity(FleetComputeCapacityArgs.builder()
///                 .desiredInstances(1)
///                 .build())
///             .description("test fleet")
///             .idleDisconnectTimeoutInSeconds(60)
///             .displayName("test-fleet")
///             .enableDefaultInternetAccess(false)
///             .fleetType("ON_DEMAND")
///             .imageName("Amazon-AppStream2-Sample-Image-03-11-2023")
///             .instanceType("stream.standard.large")
///             .maxUserDurationInSeconds(600)
///             .vpcConfig(FleetVpcConfigArgs.builder()
///                 .subnetIds("subnet-06e9b13400c225127")
///                 .build())
///             .tags(Map.of("TagName", "tag-value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testFleet:
///     type: aws:appstream:Fleet
///     name: test_fleet
///     properties:
///       name: test-fleet
///       computeCapacity:
///         desiredInstances: 1
///       description: test fleet
///       idleDisconnectTimeoutInSeconds: 60
///       displayName: test-fleet
///       enableDefaultInternetAccess: false
///       fleetType: ON_DEMAND
///       imageName: Amazon-AppStream2-Sample-Image-03-11-2023
///       instanceType: stream.standard.large
///       maxUserDurationInSeconds: 600
///       vpcConfig:
///         subnetIds:
///           - subnet-06e9b13400c225127
///       tags:
///         TagName: tag-value
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.Fleet` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/fleet:Fleet example fleetNameExample
/// ```
class Fleet extends pulumi.CustomResource {
  /// ARN of the appstream fleet.
  late final pulumi.Output<String> arn;
  /// Configuration block for the desired capacity of the fleet. See below.
  late final pulumi.Output<FleetComputeCapacity> computeCapacity;
  /// Date and time, in UTC and extended RFC 3339 format, when the fleet was created.
  late final pulumi.Output<String> createdTime;
  /// Description to display.
  late final pulumi.Output<String> description;
  /// Amount of time that a streaming session remains active after users disconnect.
  late final pulumi.Output<int> disconnectTimeoutInSeconds;
  /// Human-readable friendly name for the AppStream fleet.
  late final pulumi.Output<String> displayName;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below.
  late final pulumi.Output<FleetDomainJoinInfo> domainJoinInfo;
  /// Enables or disables default internet access for the fleet.
  late final pulumi.Output<bool> enableDefaultInternetAccess;
  /// Fleet type. Valid values are: `ON_DEMAND`, `ALWAYS_ON`
  late final pulumi.Output<String> fleetType;
  /// ARN of the IAM role to apply to the fleet.
  late final pulumi.Output<String> iamRoleArn;
  /// Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the `disconnect_timeout_in_seconds` time interval begins. Defaults to `0`. Valid value is between `60` and `3600 `seconds.
  late final pulumi.Output<int?> idleDisconnectTimeoutInSeconds;
  /// ARN of the public, private, or shared image to use.
  late final pulumi.Output<String> imageArn;
  /// Name of the image used to create the fleet.
  late final pulumi.Output<String> imageName;
  /// Instance type to use when launching fleet instances.
  late final pulumi.Output<String> instanceType;
  /// The maximum number of user sessions on an instance. This only applies to multi-session fleets.
  late final pulumi.Output<int?> maxSessionsPerInstance;
  /// Maximum amount of time that a streaming session can remain active, in seconds.
  late final pulumi.Output<int> maxUserDurationInSeconds;
  /// Unique name for the fleet.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the fleet. Can be `STARTING`, `RUNNING`, `STOPPING` or `STOPPED`
  late final pulumi.Output<String> state;
  /// AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  late final pulumi.Output<String> streamView;
  /// Map of tags to attach to AppStream instances.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for the VPC configuration for the image builder. See below.
  late final pulumi.Output<FleetVpcConfig> vpcConfig;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_appstream_fleet_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(
    String name, {
    FleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.computeCapacity = registerOutput<FleetComputeCapacity>('computeCapacity');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String>('description');
    this.disconnectTimeoutInSeconds = registerOutput<int>('disconnectTimeoutInSeconds');
    this.displayName = registerOutput<String>('displayName');
    this.domainJoinInfo = registerOutput<FleetDomainJoinInfo>('domainJoinInfo');
    this.enableDefaultInternetAccess = registerOutput<bool>('enableDefaultInternetAccess');
    this.fleetType = registerOutput<String>('fleetType');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.idleDisconnectTimeoutInSeconds = registerOutput<int?>('idleDisconnectTimeoutInSeconds');
    this.imageArn = registerOutput<String>('imageArn');
    this.imageName = registerOutput<String>('imageName');
    this.instanceType = registerOutput<String>('instanceType');
    this.maxSessionsPerInstance = registerOutput<int?>('maxSessionsPerInstance');
    this.maxUserDurationInSeconds = registerOutput<int>('maxUserDurationInSeconds');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.streamView = registerOutput<String>('streamView');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<FleetVpcConfig>('vpcConfig');
  }
}
