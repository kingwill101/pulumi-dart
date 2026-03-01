// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_artifacts.dart';
import 'project_build_batch_config.dart';
import 'project_cache.dart';
import 'project_environment.dart';
import 'project_file_system_location.dart';
import 'project_logs_config.dart';
import 'project_secondary_artifact.dart';
import 'project_secondary_source.dart';
import 'project_secondary_source_version.dart';
import 'project_source.dart';
import 'project_vpc_config.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// ARN of the CodeBuild project.
  final pulumi.Input<String>? arn;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectArtifacts>? artifacts;
  /// Specify a maximum number of additional automatic retries after a failed build.
  /// The default is 0.
  final pulumi.Input<int>? autoRetryLimit;
  /// Generates a publicly-accessible URL for the projects build badge. Available as
  /// `badge_url` attribute when enabled.
  final pulumi.Input<bool>? badgeEnabled;
  /// URL of the build badge when `badge_enabled` is enabled.
  final pulumi.Input<String>? badgeUrl;
  /// Defines the batch build options for the project.
  final pulumi.Input<ProjectBuildBatchConfig>? buildBatchConfig;
  /// Number of minutes, from 5 to 2160 (36 hours), for AWS CodeBuild to wait until timing out
  /// any related build that does not get marked as completed. The default is 60 minutes. The `build_timeout` property is
  /// not available on the `Lambda` compute type.
  final pulumi.Input<int>? buildTimeout;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectCache>? cache;
  /// Specify a maximum number of concurrent builds for the project. The value
  /// specified must be greater than 0 and less than the account concurrent running builds limit.
  final pulumi.Input<int>? concurrentBuildLimit;
  /// Short description of the project.
  final pulumi.Input<String>? description;
  /// AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting
  /// the build project's build output artifacts.
  final pulumi.Input<String>? encryptionKey;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectEnvironment>? environment;
  /// A set of file system locations to mount inside the build. File system locations
  /// are documented below.
  final pulumi.Input<List<ProjectFileSystemLocation>>? fileSystemLocations;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectLogsConfig>? logsConfig;
  /// Project's name.
  final pulumi.Input<String>? name;
  /// Specifies the visibility of the project's builds. Possible values are: `PUBLIC_READ`
  /// and `PRIVATE`. Default value is `PRIVATE`.
  final pulumi.Input<String>? projectVisibility;
  /// The project identifier used with the public build APIs.
  final pulumi.Input<String>? publicProjectAlias;
  /// Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it
  /// times out. The default is 8 hours. The `queued_timeout` property is not available on the `Lambda` compute type.
  final pulumi.Input<int>? queuedTimeout;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and
  /// Amazon S3 artifacts for the project's builds in order to display them publicly. Only applicable if
  /// `project_visibility` is `PUBLIC_READ`.
  final pulumi.Input<String>? resourceAccessRole;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<ProjectSecondaryArtifact>>? secondaryArtifacts;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<ProjectSecondarySourceVersion>>? secondarySourceVersions;
  /// Configuration block. Detailed below.
  final pulumi.Input<List<ProjectSecondarySource>>? secondarySources;
  /// Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
  /// enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
  final pulumi.Input<String>? serviceRole;
  /// Configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ProjectSource>? source;
  /// Version of the build input to be built for this project. If not specified, the latest
  /// version is used.
  final pulumi.Input<String>? sourceVersion;
  /// Map of tags to assign to the resource. If configured with a provider
  /// `default_tags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider
  /// `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectVpcConfig>? vpcConfig;

  /// Creates a new [ProjectState].
  /// [arn] ARN of the CodeBuild project.
  /// [artifacts] Configuration block. Detailed below.
  /// [autoRetryLimit] Specify a maximum number of additional automatic retries after a failed build.
  /// [badgeEnabled] Generates a publicly-accessible URL for the projects build badge. Available as
  /// [badgeUrl] URL of the build badge when `badge_enabled` is enabled.
  /// [buildBatchConfig] Defines the batch build options for the project.
  /// [buildTimeout] Number of minutes, from 5 to 2160 (36 hours), for AWS CodeBuild to wait until timing out
  /// [cache] Configuration block. Detailed below.
  /// [concurrentBuildLimit] Specify a maximum number of concurrent builds for the project. The value
  /// [description] Short description of the project.
  /// [encryptionKey] AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting
  /// [environment] Configuration block. Detailed below.
  /// [fileSystemLocations] A set of file system locations to mount inside the build. File system locations
  /// [logsConfig] Configuration block. Detailed below.
  /// [name] Project's name.
  /// [projectVisibility] Specifies the visibility of the project's builds. Possible values are: `PUBLIC_READ`
  /// [publicProjectAlias] The project identifier used with the public build APIs.
  /// [queuedTimeout] Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceAccessRole] The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and
  /// [secondaryArtifacts] Configuration block. Detailed below.
  /// [secondarySourceVersions] Configuration block. Detailed below.
  /// [secondarySources] Configuration block. Detailed below.
  /// [serviceRole] Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
  /// [source] Configuration block. Detailed below.
  /// [sourceVersion] Version of the build input to be built for this project. If not specified, the latest
  /// [tags] Map of tags to assign to the resource. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider
  /// [vpcConfig] Configuration block. Detailed below.
  ProjectState({
    pulumi.Output<String>? arn,
    pulumi.Output<ProjectArtifacts>? artifacts,
    pulumi.Output<int>? autoRetryLimit,
    pulumi.Output<bool>? badgeEnabled,
    pulumi.Output<String>? badgeUrl,
    pulumi.Output<ProjectBuildBatchConfig>? buildBatchConfig,
    pulumi.Output<int>? buildTimeout,
    pulumi.Output<ProjectCache>? cache,
    pulumi.Output<int>? concurrentBuildLimit,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<ProjectEnvironment>? environment,
    pulumi.Output<List<ProjectFileSystemLocation>>? fileSystemLocations,
    pulumi.Output<ProjectLogsConfig>? logsConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectVisibility,
    pulumi.Output<String>? publicProjectAlias,
    pulumi.Output<int>? queuedTimeout,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceAccessRole,
    pulumi.Output<List<ProjectSecondaryArtifact>>? secondaryArtifacts,
    pulumi.Output<List<ProjectSecondarySourceVersion>>? secondarySourceVersions,
    pulumi.Output<List<ProjectSecondarySource>>? secondarySources,
    pulumi.Output<String>? serviceRole,
    pulumi.Output<ProjectSource>? source,
    pulumi.Output<String>? sourceVersion,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ProjectVpcConfig>? vpcConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      artifacts = pulumi.Input.asOptionalInput<ProjectArtifacts>(artifacts),
      autoRetryLimit = pulumi.Input.asOptionalInput<int>(autoRetryLimit),
      badgeEnabled = pulumi.Input.asOptionalInput<bool>(badgeEnabled),
      badgeUrl = pulumi.Input.asOptionalInput<String>(badgeUrl),
      buildBatchConfig = pulumi.Input.asOptionalInput<ProjectBuildBatchConfig>(buildBatchConfig),
      buildTimeout = pulumi.Input.asOptionalInput<int>(buildTimeout),
      cache = pulumi.Input.asOptionalInput<ProjectCache>(cache),
      concurrentBuildLimit = pulumi.Input.asOptionalInput<int>(concurrentBuildLimit),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      environment = pulumi.Input.asOptionalInput<ProjectEnvironment>(environment),
      fileSystemLocations = pulumi.Input.asOptionalInput<List<ProjectFileSystemLocation>>(fileSystemLocations),
      logsConfig = pulumi.Input.asOptionalInput<ProjectLogsConfig>(logsConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectVisibility = pulumi.Input.asOptionalInput<String>(projectVisibility),
      publicProjectAlias = pulumi.Input.asOptionalInput<String>(publicProjectAlias),
      queuedTimeout = pulumi.Input.asOptionalInput<int>(queuedTimeout),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceAccessRole = pulumi.Input.asOptionalInput<String>(resourceAccessRole),
      secondaryArtifacts = pulumi.Input.asOptionalInput<List<ProjectSecondaryArtifact>>(secondaryArtifacts),
      secondarySourceVersions = pulumi.Input.asOptionalInput<List<ProjectSecondarySourceVersion>>(secondarySourceVersions),
      secondarySources = pulumi.Input.asOptionalInput<List<ProjectSecondarySource>>(secondarySources),
      serviceRole = pulumi.Input.asOptionalInput<String>(serviceRole),
      source = pulumi.Input.asOptionalInput<ProjectSource>(source),
      sourceVersion = pulumi.Input.asOptionalInput<String>(sourceVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcConfig = pulumi.Input.asOptionalInput<ProjectVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'artifacts': ?pulumi.Input.mapOptionalInputValue<ProjectArtifacts, Map<String, dynamic>>(artifacts, (value) => value.toMap()),
      'autoRetryLimit': ?autoRetryLimit,
      'badgeEnabled': ?badgeEnabled,
      'badgeUrl': ?badgeUrl,
      'buildBatchConfig': ?pulumi.Input.mapOptionalInputValue<ProjectBuildBatchConfig, Map<String, dynamic>>(buildBatchConfig, (value) => value.toMap()),
      'buildTimeout': ?buildTimeout,
      'cache': ?pulumi.Input.mapOptionalInputValue<ProjectCache, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'concurrentBuildLimit': ?concurrentBuildLimit,
      'description': ?description,
      'encryptionKey': ?encryptionKey,
      'environment': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'fileSystemLocations': ?pulumi.Input.mapOptionalInputValue<List<ProjectFileSystemLocation>, List<Map<String, dynamic>>>(fileSystemLocations, (value) => pulumi.Input.encodeList<ProjectFileSystemLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logsConfig': ?pulumi.Input.mapOptionalInputValue<ProjectLogsConfig, Map<String, dynamic>>(logsConfig, (value) => value.toMap()),
      'name': ?name,
      'projectVisibility': ?projectVisibility,
      'publicProjectAlias': ?publicProjectAlias,
      'queuedTimeout': ?queuedTimeout,
      'region': ?region,
      'resourceAccessRole': ?resourceAccessRole,
      'secondaryArtifacts': ?pulumi.Input.mapOptionalInputValue<List<ProjectSecondaryArtifact>, List<Map<String, dynamic>>>(secondaryArtifacts, (value) => pulumi.Input.encodeList<ProjectSecondaryArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondarySourceVersions': ?pulumi.Input.mapOptionalInputValue<List<ProjectSecondarySourceVersion>, List<Map<String, dynamic>>>(secondarySourceVersions, (value) => pulumi.Input.encodeList<ProjectSecondarySourceVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondarySources': ?pulumi.Input.mapOptionalInputValue<List<ProjectSecondarySource>, List<Map<String, dynamic>>>(secondarySources, (value) => pulumi.Input.encodeList<ProjectSecondarySource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceRole': ?serviceRole,
      'source': ?pulumi.Input.mapOptionalInputValue<ProjectSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'sourceVersion': ?sourceVersion,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ProjectVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      artifacts: map['artifacts'] == null ? null : pulumi.Output.create<ProjectArtifacts>(ProjectArtifacts.fromMap((map['artifacts'] as Map).cast<String, dynamic>())),
      autoRetryLimit: map['autoRetryLimit'] == null ? null : pulumi.Output.create<int>(map['autoRetryLimit'] as int),
      badgeEnabled: map['badgeEnabled'] == null ? null : pulumi.Output.create<bool>(map['badgeEnabled'] as bool),
      badgeUrl: map['badgeUrl'] == null ? null : pulumi.Output.create<String>(map['badgeUrl'] as String),
      buildBatchConfig: map['buildBatchConfig'] == null ? null : pulumi.Output.create<ProjectBuildBatchConfig>(ProjectBuildBatchConfig.fromMap((map['buildBatchConfig'] as Map).cast<String, dynamic>())),
      buildTimeout: map['buildTimeout'] == null ? null : pulumi.Output.create<int>(map['buildTimeout'] as int),
      cache: map['cache'] == null ? null : pulumi.Output.create<ProjectCache>(ProjectCache.fromMap((map['cache'] as Map).cast<String, dynamic>())),
      concurrentBuildLimit: map['concurrentBuildLimit'] == null ? null : pulumi.Output.create<int>(map['concurrentBuildLimit'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<ProjectEnvironment>(ProjectEnvironment.fromMap((map['environment'] as Map).cast<String, dynamic>())),
      fileSystemLocations: map['fileSystemLocations'] == null ? null : pulumi.Output.create<List<ProjectFileSystemLocation>>(pulumi.Input.decodeList<ProjectFileSystemLocation>(map['fileSystemLocations'], (value) => ProjectFileSystemLocation.fromMap((value as Map).cast<String, dynamic>()))),
      logsConfig: map['logsConfig'] == null ? null : pulumi.Output.create<ProjectLogsConfig>(ProjectLogsConfig.fromMap((map['logsConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectVisibility: map['projectVisibility'] == null ? null : pulumi.Output.create<String>(map['projectVisibility'] as String),
      publicProjectAlias: map['publicProjectAlias'] == null ? null : pulumi.Output.create<String>(map['publicProjectAlias'] as String),
      queuedTimeout: map['queuedTimeout'] == null ? null : pulumi.Output.create<int>(map['queuedTimeout'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceAccessRole: map['resourceAccessRole'] == null ? null : pulumi.Output.create<String>(map['resourceAccessRole'] as String),
      secondaryArtifacts: map['secondaryArtifacts'] == null ? null : pulumi.Output.create<List<ProjectSecondaryArtifact>>(pulumi.Input.decodeList<ProjectSecondaryArtifact>(map['secondaryArtifacts'], (value) => ProjectSecondaryArtifact.fromMap((value as Map).cast<String, dynamic>()))),
      secondarySourceVersions: map['secondarySourceVersions'] == null ? null : pulumi.Output.create<List<ProjectSecondarySourceVersion>>(pulumi.Input.decodeList<ProjectSecondarySourceVersion>(map['secondarySourceVersions'], (value) => ProjectSecondarySourceVersion.fromMap((value as Map).cast<String, dynamic>()))),
      secondarySources: map['secondarySources'] == null ? null : pulumi.Output.create<List<ProjectSecondarySource>>(pulumi.Input.decodeList<ProjectSecondarySource>(map['secondarySources'], (value) => ProjectSecondarySource.fromMap((value as Map).cast<String, dynamic>()))),
      serviceRole: map['serviceRole'] == null ? null : pulumi.Output.create<String>(map['serviceRole'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<ProjectSource>(ProjectSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      sourceVersion: map['sourceVersion'] == null ? null : pulumi.Output.create<String>(map['sourceVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<ProjectVpcConfig>(ProjectVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

