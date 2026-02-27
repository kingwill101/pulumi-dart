// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_release_config_code_compilation_config/repository_release_config_code_compilation_config.dart';

/// The set of arguments for RepositoryReleaseConfig.
class RepositoryReleaseConfigArgs {
  /// Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// Structure is documented below.
  final pulumi.Input<RepositoryReleaseConfigCodeCompilationConfig>?
      codeCompilationConfig;

  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final pulumi.Input<String>? cronSchedule;

  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  final pulumi.Input<String> gitCommitish;

  /// The release's name.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region
  final pulumi.Input<String>? region;

  /// A reference to the Dataform repository
  final pulumi.Input<String>? repository;

  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  RepositoryReleaseConfigArgs({
    this.codeCompilationConfig,
    this.cronSchedule,
    required this.gitCommitish,
    this.name,
    this.project,
    this.region,
    this.repository,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeCompilationConfigValue = codeCompilationConfig;
    if (codeCompilationConfigValue != null) {
      map['codeCompilationConfig'] = pulumi.Input.mapOptionalInputValue<
              RepositoryReleaseConfigCodeCompilationConfig,
              Map<String, dynamic>>(
          codeCompilationConfigValue, (value) => value.toMap());
    }
    final cronScheduleValue = cronSchedule;
    if (cronScheduleValue != null) {
      map['cronSchedule'] = cronScheduleValue;
    }
    map['gitCommitish'] = gitCommitish;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory RepositoryReleaseConfigArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryReleaseConfigArgs(
      codeCompilationConfig: pulumi.Input.asOptionalInput<
              RepositoryReleaseConfigCodeCompilationConfig>(
          map['codeCompilationConfig']),
      cronSchedule: pulumi.Input.asOptionalInput<String>(map['cronSchedule']),
      gitCommitish: pulumi.Input.asInput<String>(map['gitCommitish']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asOptionalInput<String>(map['repository']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
