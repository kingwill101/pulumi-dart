// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../reservation_delete_after_duration/reservation_delete_after_duration.dart';
import '../reservation_reservation_sharing_policy/reservation_reservation_sharing_policy.dart';
import '../reservation_share_settings/reservation_share_settings.dart';
import '../reservation_specific_reservation/reservation_specific_reservation.dart';

/// The set of arguments for Reservation.
class ReservationComputeArgs {
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

  ReservationComputeArgs({
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.description,
    this.enableEmergentMaintenance,
    this.name,
    this.project,
    this.reservationSharingPolicy,
    this.shareSettings,
    required this.specificReservation,
    this.specificReservationRequired,
    required this.zone,
  });

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

  factory ReservationComputeArgs.fromMap(Map<String, dynamic> map) {
    return ReservationComputeArgs(
      deleteAfterDuration:
          pulumi.Input.asOptionalInput<ReservationDeleteAfterDuration>(
              map['deleteAfterDuration']),
      deleteAtTime: pulumi.Input.asOptionalInput<String>(map['deleteAtTime']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableEmergentMaintenance:
          pulumi.Input.asOptionalInput<bool>(map['enableEmergentMaintenance']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservationSharingPolicy:
          pulumi.Input.asOptionalInput<ReservationReservationSharingPolicy>(
              map['reservationSharingPolicy']),
      shareSettings: pulumi.Input.asOptionalInput<ReservationShareSettings>(
          map['shareSettings']),
      specificReservation: pulumi.Input.asInput<ReservationSpecificReservation>(
          map['specificReservation']),
      specificReservationRequired: pulumi.Input.asOptionalInput<bool>(
          map['specificReservationRequired']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
