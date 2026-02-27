// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'service_level_indicator.dart';
import 'service_level_objective_calendar_period.dart';

/// The set of arguments for ServiceLevelObjective.
class ServiceLevelObjectiveArgs {
  /// A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  final Input<ServiceLevelObjectiveCalendarPeriod>? calendarPeriod;

  /// Name used for UI elements listing this SLO.
  final Input<String>? displayName;

  /// The fraction of service that must be good in order for this objective to be met. 0 < goal <= 0.999.
  final Input<double>? goal;

  /// Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  final Input<String>? name;

  /// A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  final Input<String>? rollingPeriod;
  final Input<String> serviceId;

  /// The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  final Input<ServiceLevelIndicator>? serviceLevelIndicator;

  /// Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern ^[a-zA-Z0-9-_:.]+$
  final Input<String>? serviceLevelObjectiveId;

  /// Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  final Input<Map<String, String>>? userLabels;
  final Input<String> v3Id;
  final Input<String> v3Id1;

  ServiceLevelObjectiveArgs({
    this.calendarPeriod,
    this.displayName,
    this.goal,
    this.name,
    this.rollingPeriod,
    required this.serviceId,
    this.serviceLevelIndicator,
    this.serviceLevelObjectiveId,
    this.userLabels,
    required this.v3Id,
    required this.v3Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final calendarPeriodValue = calendarPeriod;
    if (calendarPeriodValue != null) {
      map['calendarPeriod'] = Input.mapOptionalInputValue<
          ServiceLevelObjectiveCalendarPeriod,
          String>(calendarPeriodValue, (value) => value.value);
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final goalValue = goal;
    if (goalValue != null) {
      map['goal'] = goalValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final rollingPeriodValue = rollingPeriod;
    if (rollingPeriodValue != null) {
      map['rollingPeriod'] = rollingPeriodValue;
    }
    map['serviceId'] = serviceId;
    final serviceLevelIndicatorValue = serviceLevelIndicator;
    if (serviceLevelIndicatorValue != null) {
      map['serviceLevelIndicator'] = Input.mapOptionalInputValue<
              ServiceLevelIndicator, Map<String, dynamic>>(
          serviceLevelIndicatorValue, (value) => value.toMap());
    }
    final serviceLevelObjectiveIdValue = serviceLevelObjectiveId;
    if (serviceLevelObjectiveIdValue != null) {
      map['serviceLevelObjectiveId'] = serviceLevelObjectiveIdValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    map['v3Id'] = v3Id;
    map['v3Id1'] = v3Id1;
    return map;
  }

  factory ServiceLevelObjectiveArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLevelObjectiveArgs(
      calendarPeriod:
          Input.asOptionalInput<ServiceLevelObjectiveCalendarPeriod>(
              map['calendarPeriod']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      goal: Input.asOptionalInput<double>(map['goal']),
      name: Input.asOptionalInput<String>(map['name']),
      rollingPeriod: Input.asOptionalInput<String>(map['rollingPeriod']),
      serviceId: Input.asInput<String>(map['serviceId']),
      serviceLevelIndicator: Input.asOptionalInput<ServiceLevelIndicator>(
          map['serviceLevelIndicator']),
      serviceLevelObjectiveId:
          Input.asOptionalInput<String>(map['serviceLevelObjectiveId']),
      userLabels: Input.asOptionalInput<Map<String, String>>(map['userLabels']),
      v3Id: Input.asInput<String>(map['v3Id']),
      v3Id1: Input.asInput<String>(map['v3Id1']),
    );
  }
}
