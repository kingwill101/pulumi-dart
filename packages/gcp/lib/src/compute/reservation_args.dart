// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_delete_after_duration.dart';
import 'reservation_reservation_sharing_policy.dart';
import 'reservation_share_settings.dart';
import 'reservation_specific_reservation.dart';

/// {@template pulumi_compute_reservation_reservation_args_doc}
/// The set of arguments for Reservation.
/// {@endtemplate}
/// {@macro pulumi_compute_reservation_reservation_args_doc}
class ReservationArgs {
  /// Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// Structure is documented below.
  final pulumi.Input<ReservationDeleteAfterDuration>? deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// Cannot be used with delete_after_duration.
  final pulumi.Input<String>? deleteAtTime;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Indicates if this group of VMs have emergent maintenance enabled.
  final pulumi.Input<bool>? enableEmergentMaintenance;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Sharing policy for reservations with Google Cloud managed services.
  /// Structure is documented below.
  final pulumi.Input<ReservationReservationSharingPolicy>?
      reservationSharingPolicy;

  /// The share setting for reservations.
  /// Structure is documented below.
  final pulumi.Input<ReservationShareSettings>? shareSettings;

  /// Reservation for instances with specific machine shapes.
  /// Structure is documented below.
  final pulumi.Input<ReservationSpecificReservation> specificReservation;

  /// When set to true, only VMs that target this reservation by name can
  /// consume this reservation. Otherwise, it can be consumed by VMs with
  /// affinity for any reservation. Defaults to false.
  final pulumi.Input<bool>? specificReservationRequired;

  /// The zone where the reservation is made.
  final pulumi.Input<String> zone;

  /// Creates a new [ReservationArgs].
  /// [deleteAfterDuration] Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// [deleteAtTime] Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [enableEmergentMaintenance] Indicates if this group of VMs have emergent maintenance enabled.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [reservationSharingPolicy] Sharing policy for reservations with Google Cloud managed services.
  /// [shareSettings] The share setting for reservations.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] When set to true, only VMs that target this reservation by name can
  /// [zone] The zone where the reservation is made.
  ReservationArgs({
    ReservationDeleteAfterDuration? deleteAfterDuration,
    String? deleteAtTime,
    String? description,
    bool? enableEmergentMaintenance,
    String? name,
    String? project,
    ReservationReservationSharingPolicy? reservationSharingPolicy,
    ReservationShareSettings? shareSettings,
    required ReservationSpecificReservation specificReservation,
    bool? specificReservationRequired,
    required String zone,
  })  : deleteAfterDuration =
            pulumi.Input.asOptionalInput<ReservationDeleteAfterDuration>(
                deleteAfterDuration),
        deleteAtTime = pulumi.Input.asOptionalInput<String>(deleteAtTime),
        description = pulumi.Input.asOptionalInput<String>(description),
        enableEmergentMaintenance =
            pulumi.Input.asOptionalInput<bool>(enableEmergentMaintenance),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservationSharingPolicy =
            pulumi.Input.asOptionalInput<ReservationReservationSharingPolicy>(
                reservationSharingPolicy),
        shareSettings = pulumi.Input.asOptionalInput<ReservationShareSettings>(
            shareSettings),
        specificReservation =
            pulumi.Input.asInput<ReservationSpecificReservation>(
                specificReservation),
        specificReservationRequired =
            pulumi.Input.asOptionalInput<bool>(specificReservationRequired),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteAfterDurationValue = deleteAfterDuration;
    if (deleteAfterDurationValue != null) {
      map['deleteAfterDuration'] = pulumi.Input.mapOptionalInputValue<
              ReservationDeleteAfterDuration, Map<String, dynamic>>(
          deleteAfterDurationValue, (value) => value.toMap());
    }
    final deleteAtTimeValue = deleteAtTime;
    if (deleteAtTimeValue != null) {
      map['deleteAtTime'] = deleteAtTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableEmergentMaintenanceValue = enableEmergentMaintenance;
    if (enableEmergentMaintenanceValue != null) {
      map['enableEmergentMaintenance'] = enableEmergentMaintenanceValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationSharingPolicyValue = reservationSharingPolicy;
    if (reservationSharingPolicyValue != null) {
      map['reservationSharingPolicy'] = pulumi.Input.mapOptionalInputValue<
              ReservationReservationSharingPolicy, Map<String, dynamic>>(
          reservationSharingPolicyValue, (value) => value.toMap());
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] = pulumi.Input.mapOptionalInputValue<
          ReservationShareSettings,
          Map<String, dynamic>>(shareSettingsValue, (value) => value.toMap());
    }
    map['specificReservation'] = pulumi.Input.mapInputValue<
        ReservationSpecificReservation,
        Map<String, dynamic>>(specificReservation, (value) => value.toMap());
    final specificReservationRequiredValue = specificReservationRequired;
    if (specificReservationRequiredValue != null) {
      map['specificReservationRequired'] = specificReservationRequiredValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory ReservationArgs.fromMap(Map<String, dynamic> map) {
    return ReservationArgs(
      deleteAfterDuration: map['deleteAfterDuration'] == null
          ? null
          : ReservationDeleteAfterDuration.fromMap(
              (map['deleteAfterDuration'] as Map).cast<String, dynamic>()),
      deleteAtTime:
          map['deleteAtTime'] == null ? null : map['deleteAtTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      enableEmergentMaintenance: map['enableEmergentMaintenance'] == null
          ? null
          : map['enableEmergentMaintenance'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservationSharingPolicy: map['reservationSharingPolicy'] == null
          ? null
          : ReservationReservationSharingPolicy.fromMap(
              (map['reservationSharingPolicy'] as Map).cast<String, dynamic>()),
      shareSettings: map['shareSettings'] == null
          ? null
          : ReservationShareSettings.fromMap(
              (map['shareSettings'] as Map).cast<String, dynamic>()),
      specificReservation: ReservationSpecificReservation.fromMap(
          (map['specificReservation'] as Map).cast<String, dynamic>()),
      specificReservationRequired: map['specificReservationRequired'] == null
          ? null
          : map['specificReservationRequired'] as bool,
      zone: map['zone'] as String,
    );
  }
}
