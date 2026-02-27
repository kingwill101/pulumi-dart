// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';
import 'future_reservation_planning_status.dart';
import 'future_reservation_specific_skuproperties.dart';
import 'future_reservation_time_window.dart';
import 'share_settings.dart';

/// The set of arguments for FutureReservation.
class FutureReservationArgs {
  /// Future timestamp when the FR auto-created reservations will be deleted by GCE. Format of this field must be a valid href="https://www.ietf.org/rfc/rfc3339.txt">RFC3339 value.
  final pulumi.Input<String>? autoCreatedReservationsDeleteTime;

  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation start_time when auto-created reservations will be automatically deleted by GCE. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  final pulumi.Input<Duration>? autoCreatedReservationsDuration;

  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [auto_created_reservations_delete_time, auto_created_reservations_duration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  final pulumi.Input<bool>? autoDeleteAutoCreatedReservations;

  /// An optional description of this resource. Provide this property when you create the future reservation.
  final pulumi.Input<String>? description;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  final pulumi.Input<String>? namePrefix;

  /// Planning state before being submitted for evaluation
  final pulumi.Input<FutureReservationPlanningStatus>? planningStatus;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// List of Projects/Folders to share with.
  final pulumi.Input<ShareSettings>? shareSettings;

  /// Future Reservation configuration to indicate instance properties and total count.
  final pulumi.Input<FutureReservationSpecificSKUProperties>?
      specificSkuProperties;

  /// Time window for this Future Reservation.
  final pulumi.Input<FutureReservationTimeWindow>? timeWindow;
  final pulumi.Input<String>? zone;

  FutureReservationArgs({
    this.autoCreatedReservationsDeleteTime,
    this.autoCreatedReservationsDuration,
    this.autoDeleteAutoCreatedReservations,
    this.description,
    this.name,
    this.namePrefix,
    this.planningStatus,
    this.project,
    this.requestId,
    this.shareSettings,
    this.specificSkuProperties,
    this.timeWindow,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoCreatedReservationsDeleteTimeValue =
        autoCreatedReservationsDeleteTime;
    if (autoCreatedReservationsDeleteTimeValue != null) {
      map['autoCreatedReservationsDeleteTime'] =
          autoCreatedReservationsDeleteTimeValue;
    }
    final autoCreatedReservationsDurationValue =
        autoCreatedReservationsDuration;
    if (autoCreatedReservationsDurationValue != null) {
      map['autoCreatedReservationsDuration'] =
          pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(
              autoCreatedReservationsDurationValue, (value) => value.toMap());
    }
    final autoDeleteAutoCreatedReservationsValue =
        autoDeleteAutoCreatedReservations;
    if (autoDeleteAutoCreatedReservationsValue != null) {
      map['autoDeleteAutoCreatedReservations'] =
          autoDeleteAutoCreatedReservationsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final planningStatusValue = planningStatus;
    if (planningStatusValue != null) {
      map['planningStatus'] = pulumi.Input.mapOptionalInputValue<
          FutureReservationPlanningStatus,
          String>(planningStatusValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] = pulumi.Input.mapOptionalInputValue<ShareSettings,
          Map<String, dynamic>>(shareSettingsValue, (value) => value.toMap());
    }
    final specificSkuPropertiesValue = specificSkuProperties;
    if (specificSkuPropertiesValue != null) {
      map['specificSkuProperties'] = pulumi.Input.mapOptionalInputValue<
              FutureReservationSpecificSKUProperties, Map<String, dynamic>>(
          specificSkuPropertiesValue, (value) => value.toMap());
    }
    final timeWindowValue = timeWindow;
    if (timeWindowValue != null) {
      map['timeWindow'] = pulumi.Input.mapOptionalInputValue<
          FutureReservationTimeWindow,
          Map<String, dynamic>>(timeWindowValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory FutureReservationArgs.fromMap(Map<String, dynamic> map) {
    return FutureReservationArgs(
      autoCreatedReservationsDeleteTime: pulumi.Input.asOptionalInput<String>(
          map['autoCreatedReservationsDeleteTime']),
      autoCreatedReservationsDuration: pulumi.Input.asOptionalInput<Duration>(
          map['autoCreatedReservationsDuration']),
      autoDeleteAutoCreatedReservations: pulumi.Input.asOptionalInput<bool>(
          map['autoDeleteAutoCreatedReservations']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      planningStatus:
          pulumi.Input.asOptionalInput<FutureReservationPlanningStatus>(
              map['planningStatus']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      shareSettings:
          pulumi.Input.asOptionalInput<ShareSettings>(map['shareSettings']),
      specificSkuProperties:
          pulumi.Input.asOptionalInput<FutureReservationSpecificSKUProperties>(
              map['specificSkuProperties']),
      timeWindow: pulumi.Input.asOptionalInput<FutureReservationTimeWindow>(
          map['timeWindow']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
