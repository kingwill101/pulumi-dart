import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_pubsublite_v1_args.dart';

/// Creates a new reservation.
class ReservationPubsubliteV1 extends pulumi.CustomResource {
  late final pulumi.Output<String> location;

  /// The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. The ID to use for the reservation, which will become the final component of the reservation's name. This value is structured like: `my-reservation-name`.
  late final pulumi.Output<String> reservationId;

  /// The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.
  late final pulumi.Output<String> throughputCapacity;

  ReservationPubsubliteV1(
    String name, {
    ReservationPubsubliteV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsublite/v1:Reservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reservationId = registerOutput<String>('reservationId');
    this.throughputCapacity = registerOutput<String>('throughputCapacity');
  }
}
