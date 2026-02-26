// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../reservation_delete_after_duration/reservation_delete_after_duration.dart';
import '../reservation_reservation_sharing_policy/reservation_reservation_sharing_policy.dart';
import '../reservation_share_settings/reservation_share_settings.dart';
import '../reservation_specific_reservation/reservation_specific_reservation.dart';

/// The set of arguments for Reservation.
class ReservationArgs2 {
  /// Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// Structure is documented below.
  final Input<ReservationDeleteAfterDuration>? deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// Cannot be used with delete_after_duration.
  final Input<String>? deleteAtTime;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Indicates if this group of VMs have emergent maintenance enabled.
  final Input<bool>? enableEmergentMaintenance;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Sharing policy for reservations with Google Cloud managed services.
  /// Structure is documented below.
  final Input<ReservationReservationSharingPolicy>? reservationSharingPolicy;

  /// The share setting for reservations.
  /// Structure is documented below.
  final Input<ReservationShareSettings>? shareSettings;

  /// Reservation for instances with specific machine shapes.
  /// Structure is documented below.
  final Input<ReservationSpecificReservation> specificReservation;

  /// When set to true, only VMs that target this reservation by name can
  /// consume this reservation. Otherwise, it can be consumed by VMs with
  /// affinity for any reservation. Defaults to false.
  final Input<bool>? specificReservationRequired;

  /// The zone where the reservation is made.
  final Input<String> zone;

  ReservationArgs2({
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
      map['deleteAfterDuration'] = Input.mapOptionalInputValue<
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
      map['reservationSharingPolicy'] = Input.mapOptionalInputValue<
              ReservationReservationSharingPolicy, Map<String, dynamic>>(
          reservationSharingPolicyValue, (value) => value.toMap());
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] = Input.mapOptionalInputValue<
          ReservationShareSettings,
          Map<String, dynamic>>(shareSettingsValue, (value) => value.toMap());
    }
    map['specificReservation'] = Input.mapInputValue<
        ReservationSpecificReservation,
        Map<String, dynamic>>(specificReservation, (value) => value.toMap());
    final specificReservationRequiredValue = specificReservationRequired;
    if (specificReservationRequiredValue != null) {
      map['specificReservationRequired'] = specificReservationRequiredValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory ReservationArgs2.fromMap(Map<String, dynamic> map) {
    return ReservationArgs2(
      deleteAfterDuration:
          Input.asOptionalInput<ReservationDeleteAfterDuration>(
              map['deleteAfterDuration']),
      deleteAtTime: Input.asOptionalInput<String>(map['deleteAtTime']),
      description: Input.asOptionalInput<String>(map['description']),
      enableEmergentMaintenance:
          Input.asOptionalInput<bool>(map['enableEmergentMaintenance']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      reservationSharingPolicy:
          Input.asOptionalInput<ReservationReservationSharingPolicy>(
              map['reservationSharingPolicy']),
      shareSettings:
          Input.asOptionalInput<ReservationShareSettings>(map['shareSettings']),
      specificReservation: Input.asInput<ReservationSpecificReservation>(
          map['specificReservation']),
      specificReservationRequired:
          Input.asOptionalInput<bool>(map['specificReservationRequired']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
