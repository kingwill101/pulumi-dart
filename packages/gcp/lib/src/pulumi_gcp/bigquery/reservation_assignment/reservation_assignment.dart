import 'package:pulumi/pulumi.dart';
import 'reservation_assignment_args.dart';

/// The BigqueryReservation Assignment resource.
///
///
/// To get more information about ReservationAssignment, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/reservations/rest/v1/projects.locations.reservations.assignments)
/// * How-to Guides
/// * [Work with reservation assignments](https://cloud.google.com/bigquery/docs/reservations-assignments)
///
/// ## Example Usage
///
/// ### Bigquery Reservation Assignment Basic
///
///
///
///
/// ## Import
///
/// ReservationAssignment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/reservations/{{reservation}}/assignments/{{name}}`
///
/// * `{{project}}/{{location}}/{{reservation}}/{{name}}`
///
/// * `{{location}}/{{reservation}}/{{name}}`
///
/// When using the `pulumi import` command, ReservationAssignment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservationAssignment:ReservationAssignment default projects/{{project}}/locations/{{location}}/reservations/{{reservation}}/assignments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservationAssignment:ReservationAssignment default {{project}}/{{location}}/{{reservation}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/reservationAssignment:ReservationAssignment default {{location}}/{{reservation}}/{{name}}
/// ```
class ReservationAssignment extends CustomResource {
  /// The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  late final Output<String> assignee;

  /// Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  late final Output<String> jobType;

  /// The location for the resource
  late final Output<String> location;

  /// Output only. The resource name of the assignment.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The reservation for the resource
  late final Output<String> reservation;

  /// Assignment will remain in PENDING state if no active capacity commitment is present. It will become ACTIVE when some capacity commitment becomes active.
  /// Possible values: STATE_UNSPECIFIED, PENDING, ACTIVE
  late final Output<String> state;

  ReservationAssignment(
    String name, {
    ReservationAssignmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/reservationAssignment:ReservationAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assignee = registerOutput<String>('assignee');
    this.jobType = registerOutput<String>('jobType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reservation = registerOutput<String>('reservation');
    this.state = registerOutput<String>('state');
  }
}
