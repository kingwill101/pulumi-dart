import 'package:pulumi/pulumi.dart';
import 'capacity_reservation_args2.dart';

/// Provides an EC2 Capacity Reservation. This allows you to reserve capacity for your Amazon EC2 instances in a specific Availability Zone for any duration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.ec2.CapacityReservation("default", {
/// instanceType: aws.ec2.InstanceType.T2_Micro,
/// instancePlatform: aws.ec2.InstancePlatform.LinuxUnix,
/// availabilityZone: "eu-west-1a",
/// instanceCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.CapacityReservation("default",
/// instance_type=aws.ec2.InstanceType.T2_MICRO,
/// instance_platform=aws.ec2.InstancePlatform.LINUX_UNIX,
/// availability_zone="eu-west-1a",
/// instance_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Ec2.CapacityReservation("default", new()
/// {
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// InstancePlatform = Aws.Ec2.InstancePlatform.LinuxUnix,
/// AvailabilityZone = "eu-west-1a",
/// InstanceCount = 1,
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
/// _, err := ec2.NewCapacityReservation(ctx, "default", &ec2.CapacityReservationArgs{
/// InstanceType:     pulumi.String(ec2.InstanceType_T2_Micro),
/// InstancePlatform: pulumi.String(ec2.InstancePlatformLinuxUnix),
/// AvailabilityZone: pulumi.String("eu-west-1a"),
/// InstanceCount:    pulumi.Int(1),
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
/// import com.pulumi.aws.ec2.CapacityReservation;
/// import com.pulumi.aws.ec2.CapacityReservationArgs;
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
/// var default_ = new CapacityReservation("default", CapacityReservationArgs.builder()
/// .instanceType("t2.micro")
/// .instancePlatform("Linux/UNIX")
/// .availabilityZone("eu-west-1a")
/// .instanceCount(1)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:ec2:CapacityReservation
/// properties:
/// instanceType: t2.micro
/// instancePlatform: Linux/UNIX
/// availabilityZone: eu-west-1a
/// instanceCount: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Capacity Reservations using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/capacityReservation:CapacityReservation web cr-0123456789abcdef0
/// ```
class CapacityReservation2 extends CustomResource {
  /// The ARN of the Capacity Reservation.
  late final Output<String> arn;

  /// The Availability Zone in which to create the Capacity Reservation.
  late final Output<String> availabilityZone;

  /// Indicates whether the Capacity Reservation supports EBS-optimized instances.
  late final Output<bool?> ebsOptimized;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final Output<String?> endDate;

  /// Indicates the way in which the Capacity Reservation ends. Specify either <span pulumi-lang-nodejs="`unlimited`" pulumi-lang-dotnet="`Unlimited`" pulumi-lang-go="`unlimited`" pulumi-lang-python="`unlimited`" pulumi-lang-yaml="`unlimited`" pulumi-lang-java="`unlimited`">`unlimited`</span> or <span pulumi-lang-nodejs="`limited`" pulumi-lang-dotnet="`Limited`" pulumi-lang-go="`limited`" pulumi-lang-python="`limited`" pulumi-lang-yaml="`limited`" pulumi-lang-java="`limited`">`limited`</span>.
  late final Output<String?> endDateType;

  /// Indicates whether the Capacity Reservation supports instances with temporary, block-level storage.
  late final Output<bool?> ephemeralStorage;

  /// The number of instances for which to reserve capacity.
  late final Output<int> instanceCount;

  /// Indicates the type of instance launches that the Capacity Reservation accepts. Specify either <span pulumi-lang-nodejs="`open`" pulumi-lang-dotnet="`Open`" pulumi-lang-go="`open`" pulumi-lang-python="`open`" pulumi-lang-yaml="`open`" pulumi-lang-java="`open`">`open`</span> or <span pulumi-lang-nodejs="`targeted`" pulumi-lang-dotnet="`Targeted`" pulumi-lang-go="`targeted`" pulumi-lang-python="`targeted`" pulumi-lang-yaml="`targeted`" pulumi-lang-java="`targeted`">`targeted`</span>.
  late final Output<String?> instanceMatchCriteria;

  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  late final Output<String> instancePlatform;

  /// The instance type for which to reserve capacity.
  late final Output<String> instanceType;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation.
  late final Output<String?> outpostArn;

  /// The ID of the AWS account that owns the Capacity Reservation.
  late final Output<String> ownerId;

  /// The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation.
  late final Output<String?> placementGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block
  late final Output<Map<String, String>> tagsAll;

  /// Indicates the tenancy of the Capacity Reservation. Specify either <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> or <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>.
  late final Output<String?> tenancy;

  CapacityReservation2(
    String name, {
    CapacityReservationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/capacityReservation:CapacityReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZone = Output.createUnknown<String>();
    this.ebsOptimized = Output.createUnknown<bool?>();
    this.endDate = Output.createUnknown<String?>();
    this.endDateType = Output.createUnknown<String?>();
    this.ephemeralStorage = Output.createUnknown<bool?>();
    this.instanceCount = Output.createUnknown<int>();
    this.instanceMatchCriteria = Output.createUnknown<String?>();
    this.instancePlatform = Output.createUnknown<String>();
    this.instanceType = Output.createUnknown<String>();
    this.outpostArn = Output.createUnknown<String?>();
    this.ownerId = Output.createUnknown<String>();
    this.placementGroupArn = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tenancy = Output.createUnknown<String?>();
  }
}
