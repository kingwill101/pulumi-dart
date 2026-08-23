import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_args.dart';
import 'capacity_reservation_state.dart';

/// Provides an EC2 Capacity Reservation. This allows you to reserve capacity for your Amazon EC2 instances in a specific Availability Zone for any duration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.ec2.CapacityReservation("default", {
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     instancePlatform: aws.ec2.InstancePlatform.LinuxUnix,
///     availabilityZone: "eu-west-1a",
///     instanceCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.CapacityReservation("default",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     instance_platform=aws.ec2.InstancePlatform.LINUX_UNIX,
///     availability_zone="eu-west-1a",
///     instance_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Ec2.CapacityReservation("default", new()
///     {
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         InstancePlatform = Aws.Ec2.InstancePlatform.LinuxUnix,
///         AvailabilityZone = "eu-west-1a",
///         InstanceCount = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewCapacityReservation(ctx, "default", &ec2.CapacityReservationArgs{
/// 			InstanceType:     pulumi.String(ec2.InstanceType_T2_Micro),
/// 			InstancePlatform: pulumi.String(ec2.InstancePlatformLinuxUnix),
/// 			AvailabilityZone: pulumi.String("eu-west-1a"),
/// 			InstanceCount:    pulumi.Int(1),
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
/// resource "aws_ec2_capacityreservation" "default" {
///   instance_type     = "t2.micro"
///   instance_platform = "Linux/UNIX"
///   availability_zone = "eu-west-1a"
///   instance_count    = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.CapacityReservation;
/// import com.pulumi.aws.ec2.CapacityReservationArgs;
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
///         var default_ = new CapacityReservation("default", CapacityReservationArgs.builder()
///             .instanceType("t2.micro")
///             .instancePlatform("Linux/UNIX")
///             .availabilityZone("eu-west-1a")
///             .instanceCount(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:ec2:CapacityReservation
///     properties:
///       instanceType: t2.micro
///       instancePlatform: Linux/UNIX
///       availabilityZone: eu-west-1a
///       instanceCount: 1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Capacity Reservations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/capacityReservation:CapacityReservation web cr-0123456789abcdef0
/// ```
class CapacityReservation extends pulumi.CustomResource {
  /// The ARN of the Capacity Reservation.
  late final pulumi.Output<String> arn;
  /// The Availability Zone in which to create the Capacity Reservation.
  late final pulumi.Output<String> availabilityZone;
  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  late final pulumi.Output<bool?> ebsOptimized;
  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String?> endDate;
  /// Indicates the way in which the Capacity Reservation ends. Specify either `unlimited` or `limited`.
  late final pulumi.Output<String?> endDateType;
  /// Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  late final pulumi.Output<bool?> ephemeralStorage;
  /// The number of instances for which to reserve capacity.
  late final pulumi.Output<int> instanceCount;
  /// Indicates the type of instance launches that the Capacity Reservation accepts. Specify either `open` or `targeted`.
  late final pulumi.Output<String?> instanceMatchCriteria;
  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  late final pulumi.Output<String> instancePlatform;
  /// The instance type for which to reserve capacity.
  late final pulumi.Output<String> instanceType;
  /// The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  late final pulumi.Output<String?> outpostArn;
  /// The ID of the AWS account that owns the Capacity Reservation.
  late final pulumi.Output<String> ownerId;
  /// The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  late final pulumi.Output<String?> placementGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  late final pulumi.Output<String?> tenancy;

  /// Creates a new [CapacityReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityReservation]. {@macro pulumi_ec2_capacity_reservation_capacity_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityReservation(
    String name, {
    CapacityReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityReservation:CapacityReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    ebsOptimized = registerOutput<bool?>('ebsOptimized');
    endDate = registerOutput<String?>('endDate');
    endDateType = registerOutput<String?>('endDateType');
    ephemeralStorage = registerOutput<bool?>('ephemeralStorage');
    instanceCount = registerOutput<int>('instanceCount');
    instanceMatchCriteria = registerOutput<String?>('instanceMatchCriteria');
    instancePlatform = registerOutput<String>('instancePlatform');
    instanceType = registerOutput<String>('instanceType');
    outpostArn = registerOutput<String?>('outpostArn');
    ownerId = registerOutput<String>('ownerId');
    placementGroupArn = registerOutput<String?>('placementGroupArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tenancy = registerOutput<String?>('tenancy');
  }

  /// Gets an existing [CapacityReservation] resource's state with the given [name] and [id].
  static CapacityReservation get(
    String name,
    pulumi.Input<String> id, {
    CapacityReservationState? state,
  }) {
    return CapacityReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CapacityReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityReservation:CapacityReservation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    ebsOptimized = registerOutput<bool?>('ebsOptimized');
    endDate = registerOutput<String?>('endDate');
    endDateType = registerOutput<String?>('endDateType');
    ephemeralStorage = registerOutput<bool?>('ephemeralStorage');
    instanceCount = registerOutput<int>('instanceCount');
    instanceMatchCriteria = registerOutput<String?>('instanceMatchCriteria');
    instancePlatform = registerOutput<String>('instancePlatform');
    instanceType = registerOutput<String>('instanceType');
    outpostArn = registerOutput<String?>('outpostArn');
    ownerId = registerOutput<String>('ownerId');
    placementGroupArn = registerOutput<String?>('placementGroupArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tenancy = registerOutput<String?>('tenancy');
  }
}
