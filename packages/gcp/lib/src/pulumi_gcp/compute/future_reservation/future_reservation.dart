import 'package:pulumi/pulumi.dart';
import '../future_reservation_aggregate_reservation/future_reservation_aggregate_reservation.dart';
import '../future_reservation_auto_created_reservations_duration/future_reservation_auto_created_reservations_duration.dart';
import '../future_reservation_commitment_info/future_reservation_commitment_info.dart';
import '../future_reservation_share_settings/future_reservation_share_settings.dart';
import '../future_reservation_specific_sku_properties/future_reservation_specific_sku_properties.dart';
import '../future_reservation_status/future_reservation_status.dart';
import '../future_reservation_time_window/future_reservation_time_window.dart';
import 'future_reservation_args.dart';

/// Represents a future reservation resource in Compute Engine. Future reservations allow users
/// to reserve capacity for a specified time window, ensuring that resources are available
/// when needed.
///
/// Reservations apply only to Compute Engine, Cloud Dataproc, and Google
/// Kubernetes Engine VM usage.Reservations do not apply to `f1-micro` or
/// `g1-small` machine types, preemptible VMs, sole tenant nodes, or other
/// services not listed above
/// like Cloud SQL and Dataflow.
///
/// To get more information about FutureReservation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/futureReservations)
/// * How-to Guides
/// * [Future Reservations Guide](https://cloud.google.com/compute/docs/instances/future-reservations-overview)
///
/// ## Example Usage
///
/// ### Future Reservation Basic
///
///
///
/// ### Future Reservation Aggregate Reservation
///
///
///
///
/// ## Import
///
/// FutureReservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/futureReservations/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FutureReservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default projects/{{project}}/zones/{{zone}}/futureReservations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/futureReservation:FutureReservation default {{name}}
/// ```
class FutureReservation extends CustomResource {
  /// Aggregate reservation details for the future reservation.
  /// Structure is documented below.
  late final Output<FutureReservationAggregateReservation?>
      aggregateReservation;

  /// Future timestamp when the FR auto-created reservations will be deleted by Compute Engine.
  late final Output<String?> autoCreatedReservationsDeleteTime;

  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation startTime when auto-created reservations will be automatically deleted by Compute Engine. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// Structure is documented below.
  late final Output<FutureReservationAutoCreatedReservationsDuration?>
      autoCreatedReservationsDuration;

  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [autoCreatedReservationsDeleteTime, autoCreatedReservationsDuration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  late final Output<bool?> autoDeleteAutoCreatedReservations;

  /// If not present, then FR will not deliver a new commitment or update an existing commitment.
  /// Structure is documented below.
  late final Output<FutureReservationCommitmentInfo?> commitmentInfo;

  /// The creation timestamp for this future reservation in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Type of the deployment requested as part of future reservation.
  /// Possible values are: `DENSE`, `FLEXIBLE`.
  late final Output<String?> deploymentType;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the las
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  late final Output<String?> namePrefix;

  /// Planning state before being submitted for evaluation
  /// Possible values are: `DRAFT`, `SUBMITTED`.
  late final Output<String> planningStatus;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The reservation mode which determines reservation-termination behavior and expected pricing.
  /// Possible values are: `CALENDAR`, `DEFAULT`.
  late final Output<String?> reservationMode;

  /// Name of reservations where the capacity is provisioned at the time of delivery of future reservations. If the reservation with the given name does not exist already, it is created automatically at the time of Approval with INACTIVE state till specified start-time. Either provide the reservationName or a namePrefix.
  late final Output<String?> reservationName;

  /// Maintenance information for this reservation
  /// Possible values are: `GROUPED`, `INDEPENDENT`.
  late final Output<String?> schedulingType;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// Settings for sharing the future reservation
  /// Structure is documented below.
  late final Output<FutureReservationShareSettings?> shareSettings;

  /// Indicates whether the auto-created reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from the delivered reservation.
  late final Output<bool?> specificReservationRequired;

  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  late final Output<FutureReservationSpecificSkuProperties?>
      specificSkuProperties;

  /// [Output only] Status of the Future Reservation
  /// Structure is documented below.
  late final Output<List<FutureReservationStatus>> statuses;

  /// Time window for this Future Reservation.
  /// Structure is documented below.
  late final Output<FutureReservationTimeWindow> timeWindow;

  /// URL of the Zone where this future reservation resides.
  late final Output<String> zone;

  FutureReservation(
    String name, {
    FutureReservationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/futureReservation:FutureReservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aggregateReservation =
        registerOutput<FutureReservationAggregateReservation?>(
            'aggregateReservation');
    this.autoCreatedReservationsDeleteTime =
        registerOutput<String?>('autoCreatedReservationsDeleteTime');
    this.autoCreatedReservationsDuration =
        registerOutput<FutureReservationAutoCreatedReservationsDuration?>(
            'autoCreatedReservationsDuration');
    this.autoDeleteAutoCreatedReservations =
        registerOutput<bool?>('autoDeleteAutoCreatedReservations');
    this.commitmentInfo =
        registerOutput<FutureReservationCommitmentInfo?>('commitmentInfo');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.deploymentType = registerOutput<String?>('deploymentType');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.planningStatus = registerOutput<String>('planningStatus');
    this.project = registerOutput<String>('project');
    this.reservationMode = registerOutput<String?>('reservationMode');
    this.reservationName = registerOutput<String?>('reservationName');
    this.schedulingType = registerOutput<String?>('schedulingType');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.shareSettings =
        registerOutput<FutureReservationShareSettings?>('shareSettings');
    this.specificReservationRequired =
        registerOutput<bool?>('specificReservationRequired');
    this.specificSkuProperties =
        registerOutput<FutureReservationSpecificSkuProperties?>(
            'specificSkuProperties');
    this.statuses = registerOutput<List<FutureReservationStatus>>('statuses');
    this.timeWindow = registerOutput<FutureReservationTimeWindow>('timeWindow');
    this.zone = registerOutput<String>('zone');
  }
}
