import 'package:pulumi/pulumi.dart';
import '../reservation_delete_after_duration/reservation_delete_after_duration.dart';
import '../reservation_reservation_sharing_policy/reservation_reservation_sharing_policy.dart';
import '../reservation_resource_status/reservation_resource_status.dart';
import '../reservation_share_settings/reservation_share_settings.dart';
import '../reservation_specific_reservation/reservation_specific_reservation.dart';
import 'reservation_args2.dart';

/// Represents a reservation resource. A reservation ensures that capacity is
/// held in a specific zone even if the reserved VMs are not running.
///
/// Reservations apply only to Compute Engine, Cloud Dataproc, and Google
/// Kubernetes Engine VM usage.Reservations do not apply to `f1-micro` or
/// `g1-small` machine types, preemptible VMs, sole tenant nodes, or other
/// services not listed above
/// like Cloud SQL and Dataflow.
///
///
/// To get more information about Reservation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/reservations)
/// * How-to Guides
/// * [Reserving zonal resources](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
///
/// ## Example Usage
///
/// ### Reservation Basic
///
///
///
/// ### Reservation Basic Beta
///
///
///
/// ### Reservation Source Instance Template
///
///
///
/// ### Reservation Sharing Policy
///
///
///
///
/// ## Import
///
/// Reservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/reservations/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Reservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default projects/{{project}}/zones/{{zone}}/reservations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default {{name}}
/// ```
class Reservation2 extends CustomResource {
  /// List of all reservation block names in the parent reservation.
  late final Output<List<String>> blockNames;

  /// Full or partial URL to a parent commitment. This field displays for
  /// reservations that are tied to a commitment.
  late final Output<String> commitment;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// Structure is documented below.
  late final Output<ReservationDeleteAfterDuration?> deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// Cannot be used with delete_after_duration.
  late final Output<String> deleteAtTime;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Indicates if this group of VMs have emergent maintenance enabled.
  late final Output<bool?> enableEmergentMaintenance;

  /// Type of the resource. Always compute#reservations for reservations.
  late final Output<String> kind;

  /// Full or partial URL to parent commitments. This field displays for reservations that are tied to multiple commitments.
  late final Output<List<String>> linkedCommitments;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// (Output)
  /// The number of reservation blocks associated with this reservation.
  late final Output<int> reservationBlockCount;

  /// Sharing policy for reservations with Google Cloud managed services.
  /// Structure is documented below.
  late final Output<ReservationReservationSharingPolicy>
      reservationSharingPolicy;

  /// Status information for Reservation resource.
  /// Structure is documented below.
  late final Output<List<ReservationResourceStatus>> resourceStatuses;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The share setting for reservations.
  /// Structure is documented below.
  late final Output<ReservationShareSettings> shareSettings;

  /// Reservation for instances with specific machine shapes.
  /// Structure is documented below.
  late final Output<ReservationSpecificReservation> specificReservation;

  /// When set to true, only VMs that target this reservation by name can
  /// consume this reservation. Otherwise, it can be consumed by VMs with
  /// affinity for any reservation. Defaults to false.
  late final Output<bool?> specificReservationRequired;

  /// The status of the reservation.
  late final Output<String> status;

  /// The zone where the reservation is made.
  late final Output<String> zone;

  Reservation2(
    String name, {
    ReservationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/reservation:Reservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blockNames = registerOutput<List<String>>('blockNames');
    this.commitment = registerOutput<String>('commitment');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.deleteAfterDuration =
        registerOutput<ReservationDeleteAfterDuration?>('deleteAfterDuration');
    this.deleteAtTime = registerOutput<String>('deleteAtTime');
    this.description = registerOutput<String?>('description');
    this.enableEmergentMaintenance =
        registerOutput<bool?>('enableEmergentMaintenance');
    this.kind = registerOutput<String>('kind');
    this.linkedCommitments = registerOutput<List<String>>('linkedCommitments');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reservationBlockCount = registerOutput<int>('reservationBlockCount');
    this.reservationSharingPolicy =
        registerOutput<ReservationReservationSharingPolicy>(
            'reservationSharingPolicy');
    this.resourceStatuses =
        registerOutput<List<ReservationResourceStatus>>('resourceStatuses');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.selfLink = registerOutput<String>('selfLink');
    this.shareSettings =
        registerOutput<ReservationShareSettings>('shareSettings');
    this.specificReservation =
        registerOutput<ReservationSpecificReservation>('specificReservation');
    this.specificReservationRequired =
        registerOutput<bool?>('specificReservationRequired');
    this.status = registerOutput<String>('status');
    this.zone = registerOutput<String>('zone');
  }
}
