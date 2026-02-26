import 'package:pulumi/pulumi.dart';
import 'reservation_args6.dart';

/// Creates a new reservation.
class Reservation9 extends CustomResource {
  late final Output<String> location;

  /// The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The ID to use for the reservation, which will become the final component of the reservation's name. This value is structured like: `my-reservation-name`.
  late final Output<String> reservationId;

  /// The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.
  late final Output<String> throughputCapacity;

  Reservation9(
    String name, {
    ReservationArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsublite/v1:Reservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reservationId = registerOutput<String>('reservationId');
    this.throughputCapacity = registerOutput<String>('throughputCapacity');
  }
}
