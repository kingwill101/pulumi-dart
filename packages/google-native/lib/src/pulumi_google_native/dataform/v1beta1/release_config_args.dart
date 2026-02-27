// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'code_compilation_config.dart';

/// The set of arguments for ReleaseConfig.
class ReleaseConfigArgs {
  /// Optional. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final Input<CodeCompilationConfig>? codeCompilationConfig;

  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final Input<String>? cronSchedule;

  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final Input<String> gitCommitish;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. The name of the currently released compilation result for this release config. This value is updated when a compilation result is created from this release config, or when this resource is updated by API call (perhaps to roll back to an earlier release). The compilation result must have been created using this release config. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final Input<String>? releaseCompilationResult;

  /// Required. The ID to use for the release config, which will become the final component of the release config's resource name.
  final Input<String> releaseConfigId;
  final Input<String> repositoryId;

  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final Input<String>? timeZone;

  ReleaseConfigArgs({
    this.codeCompilationConfig,
    this.cronSchedule,
    required this.gitCommitish,
    this.location,
    this.project,
    this.releaseCompilationResult,
    required this.releaseConfigId,
    required this.repositoryId,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeCompilationConfigValue = codeCompilationConfig;
    if (codeCompilationConfigValue != null) {
      map['codeCompilationConfig'] = Input.mapOptionalInputValue<
              CodeCompilationConfig, Map<String, dynamic>>(
          codeCompilationConfigValue, (value) => value.toMap());
    }
    final cronScheduleValue = cronSchedule;
    if (cronScheduleValue != null) {
      map['cronSchedule'] = cronScheduleValue;
    }
    map['gitCommitish'] = gitCommitish;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final releaseCompilationResultValue = releaseCompilationResult;
    if (releaseCompilationResultValue != null) {
      map['releaseCompilationResult'] = releaseCompilationResultValue;
    }
    map['releaseConfigId'] = releaseConfigId;
    map['repositoryId'] = repositoryId;
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory ReleaseConfigArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseConfigArgs(
      codeCompilationConfig: Input.asOptionalInput<CodeCompilationConfig>(
          map['codeCompilationConfig']),
      cronSchedule: Input.asOptionalInput<String>(map['cronSchedule']),
      gitCommitish: Input.asInput<String>(map['gitCommitish']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseCompilationResult:
          Input.asOptionalInput<String>(map['releaseCompilationResult']),
      releaseConfigId: Input.asInput<String>(map['releaseConfigId']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
