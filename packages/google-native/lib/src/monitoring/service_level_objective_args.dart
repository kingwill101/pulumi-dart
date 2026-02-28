// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_indicator.dart';
import 'service_level_objective_calendar_period.dart';

/// {@template pulumi_monitoring_v3_service_level_objective_args_doc}
/// The set of arguments for ServiceLevelObjective.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_service_level_objective_args_doc}
class ServiceLevelObjectiveArgs {
  /// A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  final pulumi.Input<ServiceLevelObjectiveCalendarPeriod>? calendarPeriod;

  /// Name used for UI elements listing this SLO.
  final pulumi.Input<String>? displayName;

  /// The fraction of service that must be good in order for this objective to be met. 0 < goal <= 0.999.
  final pulumi.Input<double>? goal;

  /// Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  final pulumi.Input<String>? name;

  /// A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  final pulumi.Input<String>? rollingPeriod;
  final pulumi.Input<String> serviceId;

  /// The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  final pulumi.Input<ServiceLevelIndicator>? serviceLevelIndicator;

  /// Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern ^[a-zA-Z0-9-_:.]+$
  final pulumi.Input<String>? serviceLevelObjectiveId;

  /// Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;

  /// Creates a new [ServiceLevelObjectiveArgs].
  /// [calendarPeriod] A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  /// [displayName] Name used for UI elements listing this SLO.
  /// [goal] The fraction of service that must be good in order for this objective to be met. 0 < goal <= 0.999.
  /// [name] Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  /// [rollingPeriod] A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  /// [serviceId] Required.
  /// [serviceLevelIndicator] The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  /// [serviceLevelObjectiveId] Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern ^[a-zA-Z0-9-_:.]+$
  /// [userLabels] Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  /// [v3Id] Required.
  /// [v3Id1] Required.
  ServiceLevelObjectiveArgs({
    ServiceLevelObjectiveCalendarPeriod? calendarPeriod,
    String? displayName,
    double? goal,
    String? name,
    String? rollingPeriod,
    required String serviceId,
    ServiceLevelIndicator? serviceLevelIndicator,
    String? serviceLevelObjectiveId,
    Map<String, String>? userLabels,
    required String v3Id,
    required String v3Id1,
  })  : calendarPeriod =
            pulumi.Input.asOptionalInput<ServiceLevelObjectiveCalendarPeriod>(
                calendarPeriod),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        goal = pulumi.Input.asOptionalInput<double>(goal),
        name = pulumi.Input.asOptionalInput<String>(name),
        rollingPeriod = pulumi.Input.asOptionalInput<String>(rollingPeriod),
        serviceId = pulumi.Input.asInput<String>(serviceId),
        serviceLevelIndicator =
            pulumi.Input.asOptionalInput<ServiceLevelIndicator>(
                serviceLevelIndicator),
        serviceLevelObjectiveId =
            pulumi.Input.asOptionalInput<String>(serviceLevelObjectiveId),
        userLabels =
            pulumi.Input.asOptionalInput<Map<String, String>>(userLabels),
        v3Id = pulumi.Input.asInput<String>(v3Id),
        v3Id1 = pulumi.Input.asInput<String>(v3Id1);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final calendarPeriodValue = calendarPeriod;
    if (calendarPeriodValue != null) {
      map['calendarPeriod'] = pulumi.Input.mapOptionalInputValue<
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
      map['serviceLevelIndicator'] = pulumi.Input.mapOptionalInputValue<
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
      calendarPeriod: map['calendarPeriod'] == null
          ? null
          : ServiceLevelObjectiveCalendarPeriod.fromValue(
              map['calendarPeriod'] as String),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      goal: map['goal'] == null ? null : map['goal'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      rollingPeriod:
          map['rollingPeriod'] == null ? null : map['rollingPeriod'] as String,
      serviceId: map['serviceId'] as String,
      serviceLevelIndicator: map['serviceLevelIndicator'] == null
          ? null
          : ServiceLevelIndicator.fromMap(
              (map['serviceLevelIndicator'] as Map).cast<String, dynamic>()),
      serviceLevelObjectiveId: map['serviceLevelObjectiveId'] == null
          ? null
          : map['serviceLevelObjectiveId'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
      v3Id: map['v3Id'] as String,
      v3Id1: map['v3Id1'] as String,
    );
  }
}
