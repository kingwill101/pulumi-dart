import 'package:pulumi/pulumi.dart';
import '../capacity_block_reservation_timeouts/capacity_block_reservation_timeouts.dart';
import 'capacity_block_reservation_args.dart';

/// Provides an EC2 Capacity Block Reservation. This allows you to purchase capacity block for your Amazon EC2 instances in a specific Availability Zone for machine learning (ML) Workloads.
///
/// > **NOTE:** Once created, a reservation is valid for the <span pulumi-lang-nodejs="`duration`" pulumi-lang-dotnet="`Duration`" pulumi-lang-go="`duration`" pulumi-lang-python="`duration`" pulumi-lang-yaml="`duration`" pulumi-lang-java="`duration`">`duration`</span> of the provided <span pulumi-lang-nodejs="`capacityBlockOfferingId`" pulumi-lang-dotnet="`CapacityBlockOfferingId`" pulumi-lang-go="`capacityBlockOfferingId`" pulumi-lang-python="`capacity_block_offering_id`" pulumi-lang-yaml="`capacityBlockOfferingId`" pulumi-lang-java="`capacityBlockOfferingId`">`capacity_block_offering_id`</span> and cannot be deleted. Performing a <span pulumi-lang-nodejs="`destroy`" pulumi-lang-dotnet="`Destroy`" pulumi-lang-go="`destroy`" pulumi-lang-python="`destroy`" pulumi-lang-yaml="`destroy`" pulumi-lang-java="`destroy`">`destroy`</span> will only remove the resource from state. For more information see [EC2 Capacity Block Reservation Documentation](https://aws.amazon.com/ec2/instance-types/p5/) and [PurchaseReservedDBInstancesOffering](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-blocks-pricing-billing.html).
///
/// > **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getCapacityBlockOffering({
/// capacityDurationHours: 24,
/// endDateRange: "2024-05-30T15:04:05Z",
/// instanceCount: 1,
/// instanceType: "p4d.24xlarge",
/// startDateRange: "2024-04-28T15:04:05Z",
/// });
/// const example = new aws.ec2.CapacityBlockReservation("example", {
/// capacityBlockOfferingId: test.then(test => test.capacityBlockOfferingId),
/// instancePlatform: "Linux/UNIX",
/// tags: {
/// Environment: "dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_capacity_block_offering(capacity_duration_hours=24,
/// end_date_range="2024-05-30T15:04:05Z",
/// instance_count=1,
/// instance_type="p4d.24xlarge",
/// start_date_range="2024-04-28T15:04:05Z")
/// example = aws.ec2.CapacityBlockReservation("example",
/// capacity_block_offering_id=test.capacity_block_offering_id,
/// instance_platform="Linux/UNIX",
/// tags={
/// "Environment": "dev",
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
/// var test = Aws.Ec2.GetCapacityBlockOffering.Invoke(new()
/// {
/// CapacityDurationHours = 24,
/// EndDateRange = "2024-05-30T15:04:05Z",
/// InstanceCount = 1,
/// InstanceType = "p4d.24xlarge",
/// StartDateRange = "2024-04-28T15:04:05Z",
/// });
///
/// var example = new Aws.Ec2.CapacityBlockReservation("example", new()
/// {
/// CapacityBlockOfferingId = test.Apply(getCapacityBlockOfferingResult => getCapacityBlockOfferingResult.CapacityBlockOfferingId),
/// InstancePlatform = "Linux/UNIX",
/// Tags =
/// {
/// { "Environment", "dev" },
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
/// test, err := ec2.GetCapacityBlockOffering(ctx, &ec2.GetCapacityBlockOfferingArgs{
/// CapacityDurationHours: 24,
/// EndDateRange:          pulumi.StringRef("2024-05-30T15:04:05Z"),
/// InstanceCount:         1,
/// InstanceType:          "p4d.24xlarge",
/// StartDateRange:        pulumi.StringRef("2024-04-28T15:04:05Z"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewCapacityBlockReservation(ctx, "example", &ec2.CapacityBlockReservationArgs{
/// CapacityBlockOfferingId: pulumi.String(test.CapacityBlockOfferingId),
/// InstancePlatform:        pulumi.String("Linux/UNIX"),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("dev"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = Ec2Functions.getCapacityBlockOffering(GetCapacityBlockOfferingArgs.builder()
/// .capacityDurationHours(24)
/// .endDateRange("2024-05-30T15:04:05Z")
/// .instanceCount(1)
/// .instanceType("p4d.24xlarge")
/// .startDateRange("2024-04-28T15:04:05Z")
/// .build());
///
/// var example = new CapacityBlockReservation("example", CapacityBlockReservationArgs.builder()
/// .capacityBlockOfferingId(test.capacityBlockOfferingId())
/// .instancePlatform("Linux/UNIX")
/// .tags(Map.of("Environment", "dev"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:CapacityBlockReservation
/// properties:
/// capacityBlockOfferingId: ${test.capacityBlockOfferingId}
/// instancePlatform: Linux/UNIX
/// tags:
/// Environment: dev
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2:getCapacityBlockOffering
/// arguments:
/// capacityDurationHours: 24
/// endDateRange: 2024-05-30T15:04:05Z
/// instanceCount: 1
/// instanceType: p4d.24xlarge
/// startDateRange: 2024-04-28T15:04:05Z
/// ```
/// <!--End PulumiCodeChooser -->
class CapacityBlockReservation extends CustomResource {
  /// The ARN of the reservation.
  late final Output<String> arn;

  /// The Availability Zone in which to create the Capacity Block Reservation.
  late final Output<String> availabilityZone;

  /// The Capacity Block Reservation ID.
  late final Output<String> capacityBlockOfferingId;

  /// The date and time at which the Capacity Block Reservation was created.
  late final Output<String> createdDate;

  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  late final Output<bool> ebsOptimized;

  /// The date and time at which the Capacity Block Reservation expires. When a Capacity Block Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final Output<String> endDate;

  /// Indicates the way in which the Capacity Reservation ends.
  late final Output<String> endDateType;

  /// The number of instances for which to reserve capacity.
  late final Output<int> instanceCount;

  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  late final Output<String> instancePlatform;

  /// The instance type for which to reserve capacity.
  late final Output<String> instanceType;

  /// The ARN of the Outpost on which to create the Capacity Block Reservation.
  late final Output<String> outpostArn;

  /// The ARN of the placement group in which to create the Capacity Block Reservation.
  late final Output<String> placementGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The type of Capacity Reservation.
  late final Output<String> reservationType;

  /// The date and time at which the Capacity Block Reservation starts. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final Output<String> startDate;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block
  late final Output<Map<String, String>> tagsAll;

  /// Indicates the tenancy of the Capacity Block Reservation. Specify either <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> or <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>.
  late final Output<String> tenancy;
  late final Output<CapacityBlockReservationTimeouts?> timeouts;

  CapacityBlockReservation(
    String name, {
    CapacityBlockReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityBlockReservation:CapacityBlockReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZone = Output.createUnknown<String>();
    this.capacityBlockOfferingId = Output.createUnknown<String>();
    this.createdDate = Output.createUnknown<String>();
    this.ebsOptimized = Output.createUnknown<bool>();
    this.endDate = Output.createUnknown<String>();
    this.endDateType = Output.createUnknown<String>();
    this.instanceCount = Output.createUnknown<int>();
    this.instancePlatform = Output.createUnknown<String>();
    this.instanceType = Output.createUnknown<String>();
    this.outpostArn = Output.createUnknown<String>();
    this.placementGroupArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.reservationType = Output.createUnknown<String>();
    this.startDate = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tenancy = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<CapacityBlockReservationTimeouts?>();
  }
}
