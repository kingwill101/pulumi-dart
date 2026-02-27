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
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Capacity Reservation using the `name`. For example:
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

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Number of data processing units requested. Must be at least `24` units.
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
    this.allocatedDpus = registerOutput<int>('allocatedDpus');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetDpus = registerOutput<int>('targetDpus');
    this.timeouts = registerOutput<CapacityReservationTimeouts?>('timeouts');
  }
}
