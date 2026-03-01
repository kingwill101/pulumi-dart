// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_aggregate_reservation.dart';
import 'future_reservation_auto_created_reservations_duration.dart';
import 'future_reservation_commitment_info.dart';
import 'future_reservation_share_settings.dart';
import 'future_reservation_specific_sku_properties.dart';
import 'future_reservation_time_window.dart';

/// {@template pulumi_compute_future_reservation_future_reservation_args_doc}
/// The set of arguments for FutureReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_future_reservation_future_reservation_args_doc}
class FutureReservationArgs {
  /// Aggregate reservation details for the future reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationAggregateReservation>? aggregateReservation;
  /// Future timestamp when the FR auto-created reservations will be deleted by Compute Engine.
  final pulumi.Input<String>? autoCreatedReservationsDeleteTime;
  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation startTime when auto-created reservations will be automatically deleted by Compute Engine. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationAutoCreatedReservationsDuration>? autoCreatedReservationsDuration;
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
  final pulumi.Input<FutureReservationSpecificSkuProperties>? specificSkuProperties;
  /// Time window for this Future Reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationTimeWindow> timeWindow;

  /// Creates a new [FutureReservationArgs].
  /// [aggregateReservation] Aggregate reservation details for the future reservation.
  /// [autoCreatedReservationsDeleteTime] Future timestamp when the FR auto-created reservations will be deleted by Compute Engine.
  /// [autoCreatedReservationsDuration] Specifies the duration of auto-created reservations. It represents relative time to future reservation startTime when auto-created reservations will be automatically deleted by Compute Engine. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// [autoDeleteAutoCreatedReservations] Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [autoCreatedReservationsDeleteTime, autoCreatedReservationsDuration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  /// [commitmentInfo] If not present, then FR will not deliver a new commitment or update an existing commitment.
  /// [deploymentType] Type of the deployment requested as part of future reservation.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [namePrefix] Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  /// [planningStatus] Planning state before being submitted for evaluation
  /// [project] The ID of the project in which the resource belongs.
  /// [reservationMode] The reservation mode which determines reservation-termination behavior and expected pricing.
  /// [reservationName] Name of reservations where the capacity is provisioned at the time of delivery of future reservations. If the reservation with the given name does not exist already, it is created automatically at the time of Approval with INACTIVE state till specified start-time. Either provide the reservationName or a namePrefix.
  /// [schedulingType] Maintenance information for this reservation
  /// [shareSettings] Settings for sharing the future reservation
  /// [specificReservationRequired] Indicates whether the auto-created reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from the delivered reservation.
  /// [specificSkuProperties] Future Reservation configuration to indicate instance properties and total count.
  /// [timeWindow] Time window for this Future Reservation.
  FutureReservationArgs({
    FutureReservationAggregateReservation? aggregateReservation,
    String? autoCreatedReservationsDeleteTime,
    FutureReservationAutoCreatedReservationsDuration? autoCreatedReservationsDuration,
    bool? autoDeleteAutoCreatedReservations,
    FutureReservationCommitmentInfo? commitmentInfo,
    String? deploymentType,
    String? description,
    String? name,
    String? namePrefix,
    String? planningStatus,
    String? project,
    String? reservationMode,
    String? reservationName,
    String? schedulingType,
    FutureReservationShareSettings? shareSettings,
    bool? specificReservationRequired,
    FutureReservationSpecificSkuProperties? specificSkuProperties,
    required FutureReservationTimeWindow timeWindow,
  }) :
      aggregateReservation = pulumi.Input.asOptionalInput<FutureReservationAggregateReservation>(aggregateReservation),
      autoCreatedReservationsDeleteTime = pulumi.Input.asOptionalInput<String>(autoCreatedReservationsDeleteTime),
      autoCreatedReservationsDuration = pulumi.Input.asOptionalInput<FutureReservationAutoCreatedReservationsDuration>(autoCreatedReservationsDuration),
      autoDeleteAutoCreatedReservations = pulumi.Input.asOptionalInput<bool>(autoDeleteAutoCreatedReservations),
      commitmentInfo = pulumi.Input.asOptionalInput<FutureReservationCommitmentInfo>(commitmentInfo),
      deploymentType = pulumi.Input.asOptionalInput<String>(deploymentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      planningStatus = pulumi.Input.asOptionalInput<String>(planningStatus),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservationMode = pulumi.Input.asOptionalInput<String>(reservationMode),
      reservationName = pulumi.Input.asOptionalInput<String>(reservationName),
      schedulingType = pulumi.Input.asOptionalInput<String>(schedulingType),
      shareSettings = pulumi.Input.asOptionalInput<FutureReservationShareSettings>(shareSettings),
      specificReservationRequired = pulumi.Input.asOptionalInput<bool>(specificReservationRequired),
      specificSkuProperties = pulumi.Input.asOptionalInput<FutureReservationSpecificSkuProperties>(specificSkuProperties),
      timeWindow = pulumi.Input.asInput<FutureReservationTimeWindow>(timeWindow);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateReservation': ?pulumi.Input.mapOptionalInputValue<FutureReservationAggregateReservation, Map<String, dynamic>>(aggregateReservation, (value) => value.toMap()),
      'autoCreatedReservationsDeleteTime': ?autoCreatedReservationsDeleteTime,
      'autoCreatedReservationsDuration': ?pulumi.Input.mapOptionalInputValue<FutureReservationAutoCreatedReservationsDuration, Map<String, dynamic>>(autoCreatedReservationsDuration, (value) => value.toMap()),
      'autoDeleteAutoCreatedReservations': ?autoDeleteAutoCreatedReservations,
      'commitmentInfo': ?pulumi.Input.mapOptionalInputValue<FutureReservationCommitmentInfo, Map<String, dynamic>>(commitmentInfo, (value) => value.toMap()),
      'deploymentType': ?deploymentType,
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'planningStatus': ?planningStatus,
      'project': ?project,
      'reservationMode': ?reservationMode,
      'reservationName': ?reservationName,
      'schedulingType': ?schedulingType,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<FutureReservationShareSettings, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'specificSkuProperties': ?pulumi.Input.mapOptionalInputValue<FutureReservationSpecificSkuProperties, Map<String, dynamic>>(specificSkuProperties, (value) => value.toMap()),
      'timeWindow': pulumi.Input.mapInputValue<FutureReservationTimeWindow, Map<String, dynamic>>(timeWindow, (value) => value.toMap()),
    };
  }

  factory FutureReservationArgs.fromMap(Map<String, dynamic> map) {
    return FutureReservationArgs(
      aggregateReservation: map['aggregateReservation'] == null ? null : FutureReservationAggregateReservation.fromMap((map['aggregateReservation'] as Map).cast<String, dynamic>()),
      autoCreatedReservationsDeleteTime: map['autoCreatedReservationsDeleteTime'] == null ? null : map['autoCreatedReservationsDeleteTime'] as String,
      autoCreatedReservationsDuration: map['autoCreatedReservationsDuration'] == null ? null : FutureReservationAutoCreatedReservationsDuration.fromMap((map['autoCreatedReservationsDuration'] as Map).cast<String, dynamic>()),
      autoDeleteAutoCreatedReservations: map['autoDeleteAutoCreatedReservations'] == null ? null : map['autoDeleteAutoCreatedReservations'] as bool,
      commitmentInfo: map['commitmentInfo'] == null ? null : FutureReservationCommitmentInfo.fromMap((map['commitmentInfo'] as Map).cast<String, dynamic>()),
      deploymentType: map['deploymentType'] == null ? null : map['deploymentType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      planningStatus: map['planningStatus'] == null ? null : map['planningStatus'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      reservationMode: map['reservationMode'] == null ? null : map['reservationMode'] as String,
      reservationName: map['reservationName'] == null ? null : map['reservationName'] as String,
      schedulingType: map['schedulingType'] == null ? null : map['schedulingType'] as String,
      shareSettings: map['shareSettings'] == null ? null : FutureReservationShareSettings.fromMap((map['shareSettings'] as Map).cast<String, dynamic>()),
      specificReservationRequired: map['specificReservationRequired'] == null ? null : map['specificReservationRequired'] as bool,
      specificSkuProperties: map['specificSkuProperties'] == null ? null : FutureReservationSpecificSkuProperties.fromMap((map['specificSkuProperties'] as Map).cast<String, dynamic>()),
      timeWindow: FutureReservationTimeWindow.fromMap((map['timeWindow'] as Map).cast<String, dynamic>()),
    );
  }
}

