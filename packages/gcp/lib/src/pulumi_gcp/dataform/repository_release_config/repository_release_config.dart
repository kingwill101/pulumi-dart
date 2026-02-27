import 'package:pulumi/pulumi.dart';
import '../repository_release_config_code_compilation_config/repository_release_config_code_compilation_config.dart';
import '../repository_release_config_recent_scheduled_release_record/repository_release_config_recent_scheduled_release_record.dart';
import 'repository_release_config_args.dart';

/// A resource represents a Dataform release configuration
///
/// To get more information about RepositoryReleaseConfig, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories.releaseConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/release-configurations)
///
/// ## Example Usage
///
/// ### Dataform Repository Release Config
///
///
///
///
/// ## Import
///
/// RepositoryReleaseConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/repositories/{{repository}}/releaseConfigs/{{name}}`
///
/// * `{{project}}/{{region}}/{{repository}}/{{name}}`
///
/// * `{{region}}/{{repository}}/{{name}}`
///
/// * `{{repository}}/{{name}}`
///
/// When using the `pulumi import` command, RepositoryReleaseConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default projects/{{project}}/locations/{{region}}/repositories/{{repository}}/releaseConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default {{project}}/{{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default {{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default {{repository}}/{{name}}
/// ```
class RepositoryReleaseConfig extends CustomResource {
  /// Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// Structure is documented below.
  late final Output<RepositoryReleaseConfigCodeCompilationConfig?>
      codeCompilationConfig;

  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  late final Output<String?> cronSchedule;

  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  late final Output<String> gitCommitish;

  /// The release's name.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Records of the 10 most recent scheduled release attempts, ordered in in descending order of releaseTime. Updated whenever automatic creation of a compilation result is triggered by cronSchedule.
  /// Structure is documented below.
  late final Output<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>
      recentScheduledReleaseRecords;

  /// A reference to the region
  late final Output<String?> region;

  /// A reference to the Dataform repository
  late final Output<String?> repository;

  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  late final Output<String?> timeZone;

  RepositoryReleaseConfig(
    String name, {
    RepositoryReleaseConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeCompilationConfig =
        registerOutput<RepositoryReleaseConfigCodeCompilationConfig?>(
            'codeCompilationConfig');
    this.cronSchedule = registerOutput<String?>('cronSchedule');
    this.gitCommitish = registerOutput<String>('gitCommitish');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recentScheduledReleaseRecords = registerOutput<
            List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>(
        'recentScheduledReleaseRecords');
    this.region = registerOutput<String?>('region');
    this.repository = registerOutput<String?>('repository');
    this.timeZone = registerOutput<String?>('timeZone');
  }
}
