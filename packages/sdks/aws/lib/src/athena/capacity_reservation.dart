import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_args.dart';
import 'capacity_reservation_state.dart';
import 'capacity_reservation_timeouts.dart';

/// Resource for managing an AWS Athena Capacity Reservation.
///
/// &gt; Destruction of this resource will both [cancel](https://docs.aws.amazon.com/athena/latest/ug/capacity-management-cancelling-a-capacity-reservation.html) and [delete](https://docs.aws.amazon.com/athena/latest/ug/capacity-management-deleting-a-capacity-reservation.html) the capacity reservation.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.CapacityReservation("example", {
///     name: "example-reservation",
///     targetDpus: 24,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.CapacityReservation("example",
///     name="example-reservation",
///     target_dpus=24)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Athena.CapacityReservation("example", new()
///     {
///         Name = "example-reservation",
///         TargetDpus = 24,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.NewCapacityReservation(ctx, "example", &athena.CapacityReservationArgs{
/// 			Name:       pulumi.String("example-reservation"),
/// 			TargetDpus: pulumi.Int(24),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CapacityReservation("example", CapacityReservationArgs.builder()
///             .name("example-reservation")
///             .targetDpus(24)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:athena:CapacityReservation
///     properties:
///       name: example-reservation
///       targetDpus: 24
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Capacity Reservation using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:athena/capacityReservation:CapacityReservation example example-reservation
/// ```
class CapacityReservation extends pulumi.CustomResource {
  /// Number of data processing units currently allocated.
  late final pulumi.Output<int> allocatedDpus;
  /// ARN of the Capacity Reservation.
  late final pulumi.Output<String> arn;
  /// Name of the capacity reservation.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the capacity reservation.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Number of data processing units requested. Must be at least `24` units.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> targetDpus;
  late final pulumi.Output<CapacityReservationTimeouts?> timeouts;

  /// Creates a new [CapacityReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityReservation]. {@macro pulumi_athena_capacity_reservation_capacity_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityReservation(
    String name, {
    CapacityReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/capacityReservation:CapacityReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedDpus = registerOutput<int>('allocatedDpus');
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetDpus = registerOutput<int>('targetDpus');
    timeouts = registerOutput<CapacityReservationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityReservationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
          'aws:athena/capacityReservation:CapacityReservation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedDpus = registerOutput<int>('allocatedDpus');
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetDpus = registerOutput<int>('targetDpus');
    timeouts = registerOutput<CapacityReservationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityReservationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
