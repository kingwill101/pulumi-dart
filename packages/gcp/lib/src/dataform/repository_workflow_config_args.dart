// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_workflow_config_invocation_config.dart';

/// {@template pulumi_dataform_repository_workflow_config_repository_workflow_config_args_doc}
/// The set of arguments for RepositoryWorkflowConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_workflow_config_repository_workflow_config_args_doc}
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

  /// Creates a new [RepositoryWorkflowConfigArgs].
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [invocationConfig] Optional. If left unset, a default InvocationConfig will be used.
  /// [name] The workflow's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [releaseConfig] The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  /// [repository] A reference to the Dataform repository
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  RepositoryWorkflowConfigArgs({
    String? cronSchedule,
    RepositoryWorkflowConfigInvocationConfig? invocationConfig,
    String? name,
    String? project,
    String? region,
    required String releaseConfig,
    String? repository,
    String? timeZone,
  })  : cronSchedule = pulumi.Input.asOptionalInput<String>(cronSchedule),
        invocationConfig = pulumi.Input.asOptionalInput<
            RepositoryWorkflowConfigInvocationConfig>(invocationConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        releaseConfig = pulumi.Input.asInput<String>(releaseConfig),
        repository = pulumi.Input.asOptionalInput<String>(repository),
        timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      cronSchedule:
          map['cronSchedule'] == null ? null : map['cronSchedule'] as String,
      invocationConfig: map['invocationConfig'] == null
          ? null
          : RepositoryWorkflowConfigInvocationConfig.fromMap(
              (map['invocationConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      releaseConfig: map['releaseConfig'] as String,
      repository:
          map['repository'] == null ? null : map['repository'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
