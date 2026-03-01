// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_basic_sli.dart';
import 'slo_request_based_sli.dart';
import 'slo_windows_based_sli.dart';

/// {@template pulumi_monitoring_slo_slo_args_doc}
/// The set of arguments for Slo.
/// {@endtemplate}
/// {@macro pulumi_monitoring_slo_slo_args_doc}
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

  /// Creates a new [SloArgs].
  /// [basicSli] Basic Service-Level Indicator (SLI) on a well-known service type.
  /// [calendarPeriod] A calendar period, semantically "since the start of the current
  /// [displayName] Name used for UI elements listing this SLO.
  /// [goal] The fraction of service that must be good in order for this objective
  /// [project] The ID of the project in which the resource belongs.
  /// [requestBasedSli] A request-based SLI defines a SLI for which atomic units of
  /// [rollingPeriodDays] A rolling time period, semantically "in the past X days".
  /// [service] ID of the service to which this SLO belongs.
  /// [sloId] The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead.
  /// [userLabels] This field is intended to be used for organizing and identifying the AlertPolicy
  /// [windowsBasedSli] A windows-based SLI defines the criteria for time windows.
  SloArgs({
    SloBasicSli? basicSli,
    String? calendarPeriod,
    String? displayName,
    required double goal,
    String? project,
    SloRequestBasedSli? requestBasedSli,
    int? rollingPeriodDays,
    required String service,
    String? sloId,
    Map<String, String>? userLabels,
    SloWindowsBasedSli? windowsBasedSli,
  }) : basicSli = pulumi.Input.asOptionalInput<SloBasicSli>(basicSli),
       calendarPeriod = pulumi.Input.asOptionalInput<String>(calendarPeriod),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       goal = pulumi.Input.asInput<double>(goal),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestBasedSli = pulumi.Input.asOptionalInput<SloRequestBasedSli>(
         requestBasedSli,
       ),
       rollingPeriodDays = pulumi.Input.asOptionalInput<int>(rollingPeriodDays),
       service = pulumi.Input.asInput<String>(service),
       sloId = pulumi.Input.asOptionalInput<String>(sloId),
       userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(
         userLabels,
       ),
       windowsBasedSli = pulumi.Input.asOptionalInput<SloWindowsBasedSli>(
         windowsBasedSli,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicSli':
          ?pulumi.Input.mapOptionalInputValue<
            SloBasicSli,
            Map<String, dynamic>
          >(basicSli, (value) => value.toMap()),
      'calendarPeriod': ?calendarPeriod,
      'displayName': ?displayName,
      'goal': goal,
      'project': ?project,
      'requestBasedSli':
          ?pulumi.Input.mapOptionalInputValue<
            SloRequestBasedSli,
            Map<String, dynamic>
          >(requestBasedSli, (value) => value.toMap()),
      'rollingPeriodDays': ?rollingPeriodDays,
      'service': service,
      'sloId': ?sloId,
      'userLabels': ?userLabels,
      'windowsBasedSli':
          ?pulumi.Input.mapOptionalInputValue<
            SloWindowsBasedSli,
            Map<String, dynamic>
          >(windowsBasedSli, (value) => value.toMap()),
    };
  }

  factory SloArgs.fromMap(Map<String, dynamic> map) {
    return SloArgs(
      basicSli: map['basicSli'] == null
          ? null
          : SloBasicSli.fromMap(
              (map['basicSli'] as Map).cast<String, dynamic>(),
            ),
      calendarPeriod: map['calendarPeriod'] == null
          ? null
          : map['calendarPeriod'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      goal: map['goal'] as double,
      project: map['project'] == null ? null : map['project'] as String,
      requestBasedSli: map['requestBasedSli'] == null
          ? null
          : SloRequestBasedSli.fromMap(
              (map['requestBasedSli'] as Map).cast<String, dynamic>(),
            ),
      rollingPeriodDays: map['rollingPeriodDays'] == null
          ? null
          : map['rollingPeriodDays'] as int,
      service: map['service'] as String,
      sloId: map['sloId'] == null ? null : map['sloId'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
      windowsBasedSli: map['windowsBasedSli'] == null
          ? null
          : SloWindowsBasedSli.fromMap(
              (map['windowsBasedSli'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
