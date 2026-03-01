// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_release_config_code_compilation_config.dart';

/// {@template pulumi_dataform_repository_release_config_repository_release_config_args_doc}
/// The set of arguments for RepositoryReleaseConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_release_config_repository_release_config_args_doc}
class RepositoryReleaseConfigArgs {
  /// Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// Structure is documented below.
  final pulumi.Input<RepositoryReleaseConfigCodeCompilationConfig>? codeCompilationConfig;
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

  /// Creates a new [RepositoryReleaseConfigArgs].
  /// [codeCompilationConfig] Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [gitCommitish] Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  /// [name] The release's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [repository] A reference to the Dataform repository
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  RepositoryReleaseConfigArgs({
    RepositoryReleaseConfigCodeCompilationConfig? codeCompilationConfig,
    String? cronSchedule,
    required String gitCommitish,
    String? name,
    String? project,
    String? region,
    String? repository,
    String? timeZone,
  }) :
      codeCompilationConfig = pulumi.Input.asOptionalInput<RepositoryReleaseConfigCodeCompilationConfig>(codeCompilationConfig),
      cronSchedule = pulumi.Input.asOptionalInput<String>(cronSchedule),
      gitCommitish = pulumi.Input.asInput<String>(gitCommitish),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asOptionalInput<String>(repository),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryReleaseConfigCodeCompilationConfig, Map<String, dynamic>>(codeCompilationConfig, (value) => value.toMap()),
      'cronSchedule': ?cronSchedule,
      'gitCommitish': gitCommitish,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'repository': ?repository,
      'timeZone': ?timeZone,
    };
  }

  factory RepositoryReleaseConfigArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryReleaseConfigArgs(
      codeCompilationConfig: map['codeCompilationConfig'] == null ? null : RepositoryReleaseConfigCodeCompilationConfig.fromMap((map['codeCompilationConfig'] as Map).cast<String, dynamic>()),
      cronSchedule: map['cronSchedule'] == null ? null : map['cronSchedule'] as String,
      gitCommitish: map['gitCommitish'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repository: map['repository'] == null ? null : map['repository'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

