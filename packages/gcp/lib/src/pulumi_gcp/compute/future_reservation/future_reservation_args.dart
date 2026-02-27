// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../future_reservation_aggregate_reservation/future_reservation_aggregate_reservation.dart';
import '../future_reservation_auto_created_reservations_duration/future_reservation_auto_created_reservations_duration.dart';
import '../future_reservation_commitment_info/future_reservation_commitment_info.dart';
import '../future_reservation_share_settings/future_reservation_share_settings.dart';
import '../future_reservation_specific_sku_properties/future_reservation_specific_sku_properties.dart';
import '../future_reservation_time_window/future_reservation_time_window.dart';

/// The set of arguments for FutureReservation.
class FutureReservationArgs {
  /// Aggregate reservation details for the future reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationAggregateReservation>?
      aggregateReservation;

  /// Future timestamp when the FR auto-created reservations will be deleted by Compute Engine.
  final pulumi.Input<String>? autoCreatedReservationsDeleteTime;

  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation startTime when auto-created reservations will be automatically deleted by Compute Engine. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationAutoCreatedReservationsDuration>?
      autoCreatedReservationsDuration;

  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [autoCreatedReservationsDeleteTime, autoCreatedReservationsDuration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  final pulumi.Input<bool>? autoDeleteAutoCreatedReservations;

  /// If not present, then FR will not deliver a new commitment or update an existing commitment.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationCommitmentInfo>? commitmentInfo;

  /// Type of the deployment requested as part of future reservation.
  /// Possible values are: `DENSE`, `FLEXIBLE`.
  final pulumi.Input<String>? deploymentType;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the las
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  final pulumi.Input<String>? namePrefix;

  /// Planning state before being submitted for evaluation
  /// Possible values are: `DRAFT`, `SUBMITTED`.
  final pulumi.Input<String>? planningStatus;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The reservation mode which determines reservation-termination behavior and expected pricing.
  /// Possible values are: `CALENDAR`, `DEFAULT`.
  final pulumi.Input<String>? reservationMode;

  /// Name of reservations where the capacity is provisioned at the time of delivery of future reservations. If the reservation with the given name does not exist already, it is created automatically at the time of Approval with INACTIVE state till specified start-time. Either provide the reservationName or a namePrefix.
  final pulumi.Input<String>? reservationName;

  /// Maintenance information for this reservation
  /// Possible values are: `GROUPED`, `INDEPENDENT`.
  final pulumi.Input<String>? schedulingType;

  /// Settings for sharing the future reservation
  /// Structure is documented below.
  final pulumi.Input<FutureReservationShareSettings>? shareSettings;

  /// Indicates whether the auto-created reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from the delivered reservation.
  final pulumi.Input<bool>? specificReservationRequired;

  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationSpecificSkuProperties>?
      specificSkuProperties;

  /// Time window for this Future Reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationTimeWindow> timeWindow;

  FutureReservationArgs({
    this.aggregateReservation,
    this.autoCreatedReservationsDeleteTime,
    this.autoCreatedReservationsDuration,
    this.autoDeleteAutoCreatedReservations,
    this.commitmentInfo,
    this.deploymentType,
    this.description,
    this.name,
    this.namePrefix,
    this.planningStatus,
    this.project,
    this.reservationMode,
    this.reservationName,
    this.schedulingType,
    this.shareSettings,
    this.specificReservationRequired,
    this.specificSkuProperties,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregateReservationValue = aggregateReservation;
    if (aggregateReservationValue != null) {
      map['aggregateReservation'] = pulumi.Input.mapOptionalInputValue<
              FutureReservationAggregateReservation, Map<String, dynamic>>(
          aggregateReservationValue, (value) => value.toMap());
    }
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
          pulumi.Input.mapOptionalInputValue<
                  FutureReservationAutoCreatedReservationsDuration,
                  Map<String, dynamic>>(
              autoCreatedReservationsDurationValue, (value) => value.toMap());
    }
    final autoDeleteAutoCreatedReservationsValue =
        autoDeleteAutoCreatedReservations;
    if (autoDeleteAutoCreatedReservationsValue != null) {
      map['autoDeleteAutoCreatedReservations'] =
          autoDeleteAutoCreatedReservationsValue;
    }
    final commitmentInfoValue = commitmentInfo;
    if (commitmentInfoValue != null) {
      map['commitmentInfo'] = pulumi.Input.mapOptionalInputValue<
          FutureReservationCommitmentInfo,
          Map<String, dynamic>>(commitmentInfoValue, (value) => value.toMap());
    }
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] = deploymentTypeValue;
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
      map['planningStatus'] = planningStatusValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationModeValue = reservationMode;
    if (reservationModeValue != null) {
      map['reservationMode'] = reservationModeValue;
    }
    final reservationNameValue = reservationName;
    if (reservationNameValue != null) {
      map['reservationName'] = reservationNameValue;
    }
    final schedulingTypeValue = schedulingType;
    if (schedulingTypeValue != null) {
      map['schedulingType'] = schedulingTypeValue;
    }
    final shareSettingsValue = shareSettings;
    if (shareSettingsValue != null) {
      map['shareSettings'] = pulumi.Input.mapOptionalInputValue<
          FutureReservationShareSettings,
          Map<String, dynamic>>(shareSettingsValue, (value) => value.toMap());
    }
    final specificReservationRequiredValue = specificReservationRequired;
    if (specificReservationRequiredValue != null) {
      map['specificReservationRequired'] = specificReservationRequiredValue;
    }
    final specificSkuPropertiesValue = specificSkuProperties;
    if (specificSkuPropertiesValue != null) {
      map['specificSkuProperties'] = pulumi.Input.mapOptionalInputValue<
              FutureReservationSpecificSkuProperties, Map<String, dynamic>>(
          specificSkuPropertiesValue, (value) => value.toMap());
    }
    map['timeWindow'] = pulumi.Input.mapInputValue<FutureReservationTimeWindow,
        Map<String, dynamic>>(timeWindow, (value) => value.toMap());
    return map;
  }

  factory FutureReservationArgs.fromMap(Map<String, dynamic> map) {
    return FutureReservationArgs(
      aggregateReservation:
          pulumi.Input.asOptionalInput<FutureReservationAggregateReservation>(
              map['aggregateReservation']),
      autoCreatedReservationsDeleteTime: pulumi.Input.asOptionalInput<String>(
          map['autoCreatedReservationsDeleteTime']),
      autoCreatedReservationsDuration: pulumi.Input.asOptionalInput<
              FutureReservationAutoCreatedReservationsDuration>(
          map['autoCreatedReservationsDuration']),
      autoDeleteAutoCreatedReservations: pulumi.Input.asOptionalInput<bool>(
          map['autoDeleteAutoCreatedReservations']),
      commitmentInfo:
          pulumi.Input.asOptionalInput<FutureReservationCommitmentInfo>(
              map['commitmentInfo']),
      deploymentType:
          pulumi.Input.asOptionalInput<String>(map['deploymentType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      planningStatus:
          pulumi.Input.asOptionalInput<String>(map['planningStatus']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservationMode:
          pulumi.Input.asOptionalInput<String>(map['reservationMode']),
      reservationName:
          pulumi.Input.asOptionalInput<String>(map['reservationName']),
      schedulingType:
          pulumi.Input.asOptionalInput<String>(map['schedulingType']),
      shareSettings:
          pulumi.Input.asOptionalInput<FutureReservationShareSettings>(
              map['shareSettings']),
      specificReservationRequired: pulumi.Input.asOptionalInput<bool>(
          map['specificReservationRequired']),
      specificSkuProperties:
          pulumi.Input.asOptionalInput<FutureReservationSpecificSkuProperties>(
              map['specificSkuProperties']),
      timeWindow:
          pulumi.Input.asInput<FutureReservationTimeWindow>(map['timeWindow']),
    );
  }
}
