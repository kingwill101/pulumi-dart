import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_artifacts/project_artifacts.dart';
import '../project_build_batch_config/project_build_batch_config.dart';
import '../project_cache/project_cache.dart';
import '../project_environment/project_environment.dart';
import '../project_file_system_location/project_file_system_location.dart';
import '../project_logs_config/project_logs_config.dart';
import '../project_secondary_artifact/project_secondary_artifact.dart';
import '../project_secondary_source/project_secondary_source.dart';
import '../project_secondary_source_version/project_secondary_source_version.dart';
import '../project_source/project_source.dart';
import '../project_vpc_config/project_vpc_config.dart';
import 'project_args.dart';

/// Provides a CodeBuild Project resource. See also the
/// `aws.codebuild.Webhook` resource, which manages the webhook to the
/// source (e.g., the "rebuild every time a code change is pushed" option in the CodeBuild web console).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Runner Project
///
/// While no special configuration is required for `aws.codebuild.Project` to create a project as a Runner Project, an `aws.codebuild.Webhook` resource with an appropriate `filter_group` is required.
/// See the `aws.codebuild.Webhook` resource documentation example for more details.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild project.
///
///
/// Using `pulumi import`, import CodeBuild Project using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/project:Project name project-name
/// ```
class Project extends pulumi.CustomResource {
  /// ARN of the CodeBuild project.
  late final pulumi.Output<String> arn;

  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectArtifacts> artifacts;

  /// Specify a maximum number of additional automatic retries after a failed build.
  /// The default is 0.
  late final pulumi.Output<int> autoRetryLimit;

  /// Generates a publicly-accessible URL for the projects build badge. Available as
  /// `badge_url` attribute when enabled.
  late final pulumi.Output<bool?> badgeEnabled;

  /// URL of the build badge when `badge_enabled` is enabled.
  late final pulumi.Output<String> badgeUrl;

  /// Defines the batch build options for the project.
  late final pulumi.Output<ProjectBuildBatchConfig?> buildBatchConfig;

  /// Number of minutes, from 5 to 2160 (36 hours), for AWS CodeBuild to wait until timing out
  /// any related build that does not get marked as completed. The default is 60 minutes. The `build_timeout` property is
  /// not available on the `Lambda` compute type.
  late final pulumi.Output<int?> buildTimeout;

  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectCache?> cache;

  /// Specify a maximum number of concurrent builds for the project. The value
  /// specified must be greater than 0 and less than the account concurrent running builds limit.
  late final pulumi.Output<int?> concurrentBuildLimit;

  /// Short description of the project.
  late final pulumi.Output<String> description;

  /// AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting
  /// the build project's build output artifacts.
  late final pulumi.Output<String> encryptionKey;

  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectEnvironment> environment;

  /// A set of file system locations to mount inside the build. File system locations
  /// are documented below.
  late final pulumi.Output<List<ProjectFileSystemLocation>?>
      fileSystemLocations;

  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectLogsConfig?> logsConfig;

  /// Project's name.
  late final pulumi.Output<String> name;

  /// Specifies the visibility of the project's builds. Possible values are: `PUBLIC_READ`
  /// and `PRIVATE`. Default value is `PRIVATE`.
  late final pulumi.Output<String?> projectVisibility;

  /// The project identifier used with the public build APIs.
  late final pulumi.Output<String> publicProjectAlias;

  /// Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it
  /// times out. The default is 8 hours. The `queued_timeout` property is not available on the `Lambda` compute type.
  late final pulumi.Output<int?> queuedTimeout;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and
  /// Amazon S3 artifacts for the project's builds in order to display them publicly. Only applicable if
  /// `project_visibility` is `PUBLIC_READ`.
  late final pulumi.Output<String?> resourceAccessRole;

  /// Configuration block. Detailed below.
  late final pulumi.Output<List<ProjectSecondaryArtifact>?> secondaryArtifacts;

  /// Configuration block. Detailed below.
  late final pulumi.Output<List<ProjectSecondarySourceVersion>?>
      secondarySourceVersions;

  /// Configuration block. Detailed below.
  late final pulumi.Output<List<ProjectSecondarySource>?> secondarySources;

  /// Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
  /// enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
  late final pulumi.Output<String> serviceRole;

  /// Configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ProjectSource> source;

  /// Version of the build input to be built for this project. If not specified, the latest
  /// version is used.
  late final pulumi.Output<String?> sourceVersion;

  /// Map of tags to assign to the resource. If configured with a provider
  /// `default_tags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider
  /// `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block. Detailed below.
  late final pulumi.Output<ProjectVpcConfig?> vpcConfig;

  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.artifacts = registerOutput<ProjectArtifacts>('artifacts');
    this.autoRetryLimit = registerOutput<int>('autoRetryLimit');
    this.badgeEnabled = registerOutput<bool?>('badgeEnabled');
    this.badgeUrl = registerOutput<String>('badgeUrl');
    this.buildBatchConfig =
        registerOutput<ProjectBuildBatchConfig?>('buildBatchConfig');
    this.buildTimeout = registerOutput<int?>('buildTimeout');
    this.cache = registerOutput<ProjectCache?>('cache');
    this.concurrentBuildLimit = registerOutput<int?>('concurrentBuildLimit');
    this.description = registerOutput<String>('description');
    this.encryptionKey = registerOutput<String>('encryptionKey');
    this.environment = registerOutput<ProjectEnvironment>('environment');
    this.fileSystemLocations =
        registerOutput<List<ProjectFileSystemLocation>?>('fileSystemLocations');
    this.logsConfig = registerOutput<ProjectLogsConfig?>('logsConfig');
    this.name = registerOutput<String>('name');
    this.projectVisibility = registerOutput<String?>('projectVisibility');
    this.publicProjectAlias = registerOutput<String>('publicProjectAlias');
    this.queuedTimeout = registerOutput<int?>('queuedTimeout');
    this.region = registerOutput<String>('region');
    this.resourceAccessRole = registerOutput<String?>('resourceAccessRole');
    this.secondaryArtifacts =
        registerOutput<List<ProjectSecondaryArtifact>?>('secondaryArtifacts');
    this.secondarySourceVersions =
        registerOutput<List<ProjectSecondarySourceVersion>?>(
            'secondarySourceVersions');
    this.secondarySources =
        registerOutput<List<ProjectSecondarySource>?>('secondarySources');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.source = registerOutput<ProjectSource>('source');
    this.sourceVersion = registerOutput<String?>('sourceVersion');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<ProjectVpcConfig?>('vpcConfig');
  }
}
