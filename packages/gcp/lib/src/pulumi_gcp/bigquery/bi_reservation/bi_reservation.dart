import 'package:pulumi/pulumi.dart' as pulumi;
import '../bi_reservation_preferred_table/bi_reservation_preferred_table.dart';
import 'bi_reservation_args.dart';

/// Represents a BI Reservation.
///
///
/// To get more information about BiReservation, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/BiReservation)
/// * How-to Guides
/// * [Introduction to Reservations](https://cloud.google.com/bigquery/docs/reservations-intro)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Bi Reservation Basic
///
///
///
///
/// ## Import
///
/// BiReservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/biReservation`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, BiReservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default projects/{{project}}/locations/{{location}}/biReservation
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/biReservation:BiReservation default {{location}}
/// ```
class BiReservation extends pulumi.CustomResource {
  /// LOCATION_DESCRIPTION
  late final pulumi.Output<String> location;

  /// The resource name of the singleton BI reservation. Reservation names have the form `projects/{projectId}/locations/{locationId}/biReservation`.
  late final pulumi.Output<String> name;

  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  late final pulumi.Output<List<BiReservationPreferredTable>?> preferredTables;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Size of a reservation, in bytes.
  late final pulumi.Output<int?> size;

  /// The last update timestamp of a reservation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  BiReservation(
    String name, {
    BiReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/biReservation:BiReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.preferredTables =
        registerOutput<List<BiReservationPreferredTable>?>('preferredTables');
    this.project = registerOutput<String>('project');
    this.size = registerOutput<int?>('size');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
