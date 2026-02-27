// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_workflow_config_invocation_config/repository_workflow_config_invocation_config.dart';

/// The set of arguments for RepositoryWorkflowConfig.
class RepositoryWorkflowConfigArgs {
  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final pulumi.Input<String>? cronSchedule;

  /// Optional. If left unset, a default InvocationConfig will be used.
  /// Structure is documented below.
  final pulumi.Input<RepositoryWorkflowConfigInvocationConfig>?
      invocationConfig;

  /// The workflow's name.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region
  final pulumi.Input<String>? region;

  /// The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  final pulumi.Input<String> releaseConfig;

  /// A reference to the Dataform repository
  final pulumi.Input<String>? repository;

  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  RepositoryWorkflowConfigArgs({
    this.cronSchedule,
    this.invocationConfig,
    this.name,
    this.project,
    this.region,
    required this.releaseConfig,
    this.repository,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cronScheduleValue = cronSchedule;
    if (cronScheduleValue != null) {
      map['cronSchedule'] = cronScheduleValue;
    }
    final invocationConfigValue = invocationConfig;
    if (invocationConfigValue != null) {
      map['invocationConfig'] = pulumi.Input.mapOptionalInputValue<
              RepositoryWorkflowConfigInvocationConfig, Map<String, dynamic>>(
          invocationConfigValue, (value) => value.toMap());
    }
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
    map['releaseConfig'] = releaseConfig;
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

  factory RepositoryWorkflowConfigArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigArgs(
      cronSchedule: pulumi.Input.asOptionalInput<String>(map['cronSchedule']),
      invocationConfig: pulumi.Input.asOptionalInput<
          RepositoryWorkflowConfigInvocationConfig>(map['invocationConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      releaseConfig: pulumi.Input.asInput<String>(map['releaseConfig']),
      repository: pulumi.Input.asOptionalInput<String>(map['repository']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
