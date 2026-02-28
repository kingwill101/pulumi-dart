import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_block_reservation_args.dart';
import 'capacity_block_reservation_timeouts.dart';

/// Provides an EC2 Capacity Block Reservation. This allows you to purchase capacity block for your Amazon EC2 instances in a specific Availability Zone for machine learning (ML) Workloads.
///
/// > **NOTE:** Once created, a reservation is valid for the `duration` of the provided `capacity_block_offering_id` and cannot be deleted. Performing a `destroy` will only remove the resource from state. For more information see [EC2 Capacity Block Reservation Documentation](https://aws.amazon.com/ec2/instance-types/p5/) and [PurchaseReservedDBInstancesOffering](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-blocks-pricing-billing.html).
///
/// > **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getCapacityBlockOffering({
///     capacityDurationHours: 24,
///     endDateRange: "2024-05-30T15:04:05Z",
///     instanceCount: 1,
///     instanceType: "p4d.24xlarge",
///     startDateRange: "2024-04-28T15:04:05Z",
/// });
/// const example = new aws.ec2.CapacityBlockReservation("example", {
///     capacityBlockOfferingId: test.then(test => test.capacityBlockOfferingId),
///     instancePlatform: "Linux/UNIX",
///     tags: {
///         Environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_capacity_block_offering(capacity_duration_hours=24,
///     end_date_range="2024-05-30T15:04:05Z",
///     instance_count=1,
///     instance_type="p4d.24xlarge",
///     start_date_range="2024-04-28T15:04:05Z")
/// example = aws.ec2.CapacityBlockReservation("example",
///     capacity_block_offering_id=test.capacity_block_offering_id,
///     instance_platform="Linux/UNIX",
///     tags={
///         "Environment": "dev",
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
///     var test = Aws.Ec2.GetCapacityBlockOffering.Invoke(new()
///     {
///         CapacityDurationHours = 24,
///         EndDateRange = "2024-05-30T15:04:05Z",
///         InstanceCount = 1,
///         InstanceType = "p4d.24xlarge",
///         StartDateRange = "2024-04-28T15:04:05Z",
///     });
///
///     var example = new Aws.Ec2.CapacityBlockReservation("example", new()
///     {
///         CapacityBlockOfferingId = test.Apply(getCapacityBlockOfferingResult => getCapacityBlockOfferingResult.CapacityBlockOfferingId),
///         InstancePlatform = "Linux/UNIX",
///         Tags =
///         {
///             { "Environment", "dev" },
///         },
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
/// 		test, err := ec2.GetCapacityBlockOffering(ctx, &ec2.GetCapacityBlockOfferingArgs{
/// 			CapacityDurationHours: 24,
/// 			EndDateRange:          pulumi.StringRef("2024-05-30T15:04:05Z"),
/// 			InstanceCount:         1,
/// 			InstanceType:          "p4d.24xlarge",
/// 			StartDateRange:        pulumi.StringRef("2024-04-28T15:04:05Z"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewCapacityBlockReservation(ctx, "example", &ec2.CapacityBlockReservationArgs{
/// 			CapacityBlockOfferingId: pulumi.String(test.CapacityBlockOfferingId),
/// 			InstancePlatform:        pulumi.String("Linux/UNIX"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("dev"),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockOfferingArgs;
/// import com.pulumi.aws.ec2.CapacityBlockReservation;
/// import com.pulumi.aws.ec2.CapacityBlockReservationArgs;
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
///         final var test = Ec2Functions.getCapacityBlockOffering(GetCapacityBlockOfferingArgs.builder()
///             .capacityDurationHours(24)
///             .endDateRange("2024-05-30T15:04:05Z")
///             .instanceCount(1)
///             .instanceType("p4d.24xlarge")
///             .startDateRange("2024-04-28T15:04:05Z")
///             .build());
///
///         var example = new CapacityBlockReservation("example", CapacityBlockReservationArgs.builder()
///             .capacityBlockOfferingId(test.capacityBlockOfferingId())
///             .instancePlatform("Linux/UNIX")
///             .tags(Map.of("Environment", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:CapacityBlockReservation
///     properties:
///       capacityBlockOfferingId: ${test.capacityBlockOfferingId}
///       instancePlatform: Linux/UNIX
///       tags:
///         Environment: dev
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getCapacityBlockOffering
///       arguments:
///         capacityDurationHours: 24
///         endDateRange: 2024-05-30T15:04:05Z
///         instanceCount: 1
///         instanceType: p4d.24xlarge
///         startDateRange: 2024-04-28T15:04:05Z
/// ```
class CapacityBlockReservation extends pulumi.CustomResource {
  /// The ARN of the reservation.
  late final pulumi.Output<String> arn;
  /// The Availability Zone in which to create the Capacity Block Reservation.
  late final pulumi.Output<String> availabilityZone;
  /// The Capacity Block Reservation ID.
  late final pulumi.Output<String> capacityBlockOfferingId;
  /// The date and time at which the Capacity Block Reservation was created.
  late final pulumi.Output<String> createdDate;
  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  late final pulumi.Output<bool> ebsOptimized;
  /// The date and time at which the Capacity Block Reservation expires. When a Capacity Block Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String> endDate;
  /// Indicates the way in which the Capacity Reservation ends.
  late final pulumi.Output<String> endDateType;
  /// The number of instances for which to reserve capacity.
  late final pulumi.Output<int> instanceCount;
  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  late final pulumi.Output<String> instancePlatform;
  /// The instance type for which to reserve capacity.
  late final pulumi.Output<String> instanceType;
  /// The ARN of the Outpost on which to create the Capacity Block Reservation.
  late final pulumi.Output<String> outpostArn;
  /// The ARN of the placement group in which to create the Capacity Block Reservation.
  late final pulumi.Output<String> placementGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The type of Capacity Reservation.
  late final pulumi.Output<String> reservationType;
  /// The date and time at which the Capacity Block Reservation starts. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String> startDate;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Indicates the tenancy of the Capacity Block Reservation. Specify either `default` or `dedicated`.
  late final pulumi.Output<String> tenancy;
  late final pulumi.Output<CapacityBlockReservationTimeouts?> timeouts;

  /// Creates a new [CapacityBlockReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityBlockReservation]. {@macro pulumi_ec2_capacity_block_reservation_capacity_block_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityBlockReservation(
    String name, {
    CapacityBlockReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityBlockReservation:CapacityBlockReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.capacityBlockOfferingId = registerOutput<String>('capacityBlockOfferingId');
    this.createdDate = registerOutput<String>('createdDate');
    this.ebsOptimized = registerOutput<bool>('ebsOptimized');
    this.endDate = registerOutput<String>('endDate');
    this.endDateType = registerOutput<String>('endDateType');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.instancePlatform = registerOutput<String>('instancePlatform');
    this.instanceType = registerOutput<String>('instanceType');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.placementGroupArn = registerOutput<String>('placementGroupArn');
    this.region = registerOutput<String>('region');
    this.reservationType = registerOutput<String>('reservationType');
    this.startDate = registerOutput<String>('startDate');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String>('tenancy');
    this.timeouts = registerOutput<CapacityBlockReservationTimeouts?>('timeouts');
  }
}
