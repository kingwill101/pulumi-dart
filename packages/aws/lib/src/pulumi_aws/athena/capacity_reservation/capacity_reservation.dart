import 'package:pulumi/pulumi.dart';
import '../capacity_reservation_timeouts/capacity_reservation_timeouts.dart';
import 'capacity_reservation_args.dart';

/// Resource for managing an AWS Athena Capacity Reservation.
///
/// > Destruction of this resource will both [cancel](https://docs.aws.amazon.com/athena/latest/ug/capacity-management-cancelling-a-capacity-reservation.html) and [delete](https://docs.aws.amazon.com/athena/latest/ug/capacity-management-deleting-a-capacity-reservation.html) the capacity reservation.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.CapacityReservation("example", {
/// name: "example-reservation",
/// targetDpus: 24,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.CapacityReservation("example",
/// name="example-reservation",
/// target_dpus=24)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Athena.CapacityReservation("example", new()
/// {
/// Name = "example-reservation",
/// TargetDpus = 24,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := athena.NewCapacityReservation(ctx, "example", &athena.CapacityReservationArgs{
/// Name:       pulumi.String("example-reservation"),
/// TargetDpus: pulumi.Int(24),
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
/// import com.pulumi.aws.athena.CapacityReservation;
/// import com.pulumi.aws.athena.CapacityReservationArgs;
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
/// var example = new CapacityReservation("example", CapacityReservationArgs.builder()
/// .name("example-reservation")
/// .targetDpus(24)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:athena:CapacityReservation
/// properties:
/// name: example-reservation
/// targetDpus: 24
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Athena Capacity Reservation using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:athena/capacityReservation:CapacityReservation example example-reservation
/// ```
class CapacityReservation extends CustomResource {
  /// Number of data processing units currently allocated.
  late final Output<int> allocatedDpus;

  /// ARN of the Capacity Reservation.
  late final Output<String> arn;

  /// Name of the capacity reservation.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the capacity reservation.
  late final Output<String> status;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Number of data processing units requested. Must be at least <span pulumi-lang-nodejs="`24`" pulumi-lang-dotnet="`24`" pulumi-lang-go="`24`" pulumi-lang-python="`24`" pulumi-lang-yaml="`24`" pulumi-lang-java="`24`">`24`</span> units.
  ///
  /// The following arguments are optional:
  late final Output<int> targetDpus;
  late final Output<CapacityReservationTimeouts?> timeouts;

  CapacityReservation(
    String name, {
    CapacityReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:athena/capacityReservation:CapacityReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedDpus = Output.createUnknown<int>();
    this.arn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.targetDpus = Output.createUnknown<int>();
    this.timeouts = Output.createUnknown<CapacityReservationTimeouts?>();
  }
}
