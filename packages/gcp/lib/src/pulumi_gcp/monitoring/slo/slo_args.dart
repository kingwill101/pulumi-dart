// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../slo_basic_sli/slo_basic_sli.dart';
import '../slo_request_based_sli/slo_request_based_sli.dart';
import '../slo_windows_based_sli/slo_windows_based_sli.dart';

/// The set of arguments for Slo.
class SloArgs {
  /// Basic Service-Level Indicator (SLI) on a well-known service type.
  /// Performance will be computed on the basis of pre-defined metrics.
  /// SLIs are used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  final pulumi.Input<SloBasicSli>? basicSli;

  /// A calendar period, semantically "since the start of the current
  /// <calendarPeriod>".
  /// Possible values are: `DAY`, `WEEK`, `FORTNIGHT`, `MONTH`.
  final pulumi.Input<String>? calendarPeriod;

  /// Name used for UI elements listing this SLO.
  final pulumi.Input<String>? displayName;

  /// The fraction of service that must be good in order for this objective
  /// to be met. 0 < goal <= 0.999
  final pulumi.Input<double> goal;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A request-based SLI defines a SLI for which atomic units of
  /// service are counted directly.
  /// A SLI describes a good service.
  /// It is used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  final pulumi.Input<SloRequestBasedSli>? requestBasedSli;

  /// A rolling time period, semantically "in the past X days".
  /// Must be between 1 to 30 days, inclusive.
  final pulumi.Input<int>? rollingPeriodDays;

  /// ID of the service to which this SLO belongs.
  final pulumi.Input<String> service;

  /// The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead.
  final pulumi.Input<String>? sloId;

  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// A windows-based SLI defines the criteria for time windows.
  /// good_service is defined based off the count of these time windows
  /// for which the provided service was of good quality.
  /// A SLI describes a good service. It is used to measure and calculate
  /// the quality of the Service's performance with respect to a single
  /// aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  final pulumi.Input<SloWindowsBasedSli>? windowsBasedSli;

  SloArgs({
    this.basicSli,
    this.calendarPeriod,
    this.displayName,
    required this.goal,
    this.project,
    this.requestBasedSli,
    this.rollingPeriodDays,
    required this.service,
    this.sloId,
    this.userLabels,
    this.windowsBasedSli,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicSliValue = basicSli;
    if (basicSliValue != null) {
      map['basicSli'] =
          pulumi.Input.mapOptionalInputValue<SloBasicSli, Map<String, dynamic>>(
              basicSliValue, (value) => value.toMap());
    }
    final calendarPeriodValue = calendarPeriod;
    if (calendarPeriodValue != null) {
      map['calendarPeriod'] = calendarPeriodValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['goal'] = goal;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestBasedSliValue = requestBasedSli;
    if (requestBasedSliValue != null) {
      map['requestBasedSli'] = pulumi.Input.mapOptionalInputValue<
          SloRequestBasedSli,
          Map<String, dynamic>>(requestBasedSliValue, (value) => value.toMap());
    }
    final rollingPeriodDaysValue = rollingPeriodDays;
    if (rollingPeriodDaysValue != null) {
      map['rollingPeriodDays'] = rollingPeriodDaysValue;
    }
    map['service'] = service;
    final sloIdValue = sloId;
    if (sloIdValue != null) {
      map['sloId'] = sloIdValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    final windowsBasedSliValue = windowsBasedSli;
    if (windowsBasedSliValue != null) {
      map['windowsBasedSli'] = pulumi.Input.mapOptionalInputValue<
          SloWindowsBasedSli,
          Map<String, dynamic>>(windowsBasedSliValue, (value) => value.toMap());
    }
    return map;
  }

  factory SloArgs.fromMap(Map<String, dynamic> map) {
    return SloArgs(
      basicSli: pulumi.Input.asOptionalInput<SloBasicSli>(map['basicSli']),
      calendarPeriod:
          pulumi.Input.asOptionalInput<String>(map['calendarPeriod']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      goal: pulumi.Input.asInput<double>(map['goal']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestBasedSli: pulumi.Input.asOptionalInput<SloRequestBasedSli>(
          map['requestBasedSli']),
      rollingPeriodDays:
          pulumi.Input.asOptionalInput<int>(map['rollingPeriodDays']),
      service: pulumi.Input.asInput<String>(map['service']),
      sloId: pulumi.Input.asOptionalInput<String>(map['sloId']),
      userLabels:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['userLabels']),
      windowsBasedSli: pulumi.Input.asOptionalInput<SloWindowsBasedSli>(
          map['windowsBasedSli']),
    );
  }
}
