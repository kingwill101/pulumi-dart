import 'package:pulumi/pulumi.dart';
import 'lite_reservation_args.dart';

/// > **Warning:** [Pubsub Lite is deprecated and will be turned down effective March 18, 2026](https://cloud.google.com/pubsub/lite/docs/release-notes#June_17_2024). The resource will be removed in a future major release, please use `google_pubsub_reservation` instead.
///
/// A named resource representing a shared pool of capacity.
///
///
/// To get more information about Reservation, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/lite/docs/reference/rest/v1/admin.projects.locations.reservations)
/// * How-to Guides
/// * [Managing Reservations](https://cloud.google.com/pubsub/lite/docs/reservations)
///
/// ## Example Usage
///
/// ### Pubsub Lite Reservation Basic
///
///
///
///
/// ## Import
///
/// Reservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/reservations/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Reservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default projects/{{project}}/locations/{{region}}/reservations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/liteReservation:LiteReservation default {{name}}
/// ```
class LiteReservation extends CustomResource {
  /// Name of the reservation.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the pubsub lite reservation.
  late final Output<String?> region;

  /// The reserved throughput capacity. Every unit of throughput capacity is
  /// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
  /// messages.
  late final Output<int> throughputCapacity;

  LiteReservation(
    String name, {
    LiteReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/liteReservation:LiteReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String?>('region');
    this.throughputCapacity = registerOutput<int>('throughputCapacity');
  }
}
