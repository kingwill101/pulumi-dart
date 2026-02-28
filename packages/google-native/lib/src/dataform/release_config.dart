import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config_response.dart';
import 'release_config_args.dart';
import 'scheduled_release_record_response.dart';

/// Creates a new ReleaseConfig in a given Repository.
/// Auto-naming is currently not supported for this resource.
class ReleaseConfig extends pulumi.CustomResource {
  /// Optional. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  late final pulumi.Output<CodeCompilationConfigResponse> codeCompilationConfig;

  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  late final pulumi.Output<String> cronSchedule;

  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  late final pulumi.Output<String> gitCommitish;
  late final pulumi.Output<String> location;

  /// The release config's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Records of the 10 most recent scheduled release attempts, ordered in in descending order of `release_time`. Updated whenever automatic creation of a compilation result is triggered by cron_schedule.
  late final pulumi.Output<List<ScheduledReleaseRecordResponse>>
      recentScheduledReleaseRecords;

  /// Optional. The name of the currently released compilation result for this release config. This value is updated when a compilation result is created from this release config, or when this resource is updated by API call (perhaps to roll back to an earlier release). The compilation result must have been created using this release config. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  late final pulumi.Output<String> releaseCompilationResult;

  /// Required. The ID to use for the release config, which will become the final component of the release config's resource name.
  late final pulumi.Output<String> releaseConfigId;
  late final pulumi.Output<String> repositoryId;

  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [ReleaseConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReleaseConfig]. {@macro pulumi_dataform_v1beta1_release_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReleaseConfig(
    String name, {
    ReleaseConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:ReleaseConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.codeCompilationConfig =
        registerOutput<CodeCompilationConfigResponse>('codeCompilationConfig');
    this.cronSchedule = registerOutput<String>('cronSchedule');
    this.gitCommitish = registerOutput<String>('gitCommitish');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recentScheduledReleaseRecords =
        registerOutput<List<ScheduledReleaseRecordResponse>>(
            'recentScheduledReleaseRecords');
    this.releaseCompilationResult =
        registerOutput<String>('releaseCompilationResult');
    this.releaseConfigId = registerOutput<String>('releaseConfigId');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
