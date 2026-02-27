// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for Project.
class ProjectArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectArtifacts> artifacts;

  /// Specify a maximum number of additional automatic retries after a failed build.
  /// The default is 0.
  final pulumi.Input<int>? autoRetryLimit;

  /// Generates a publicly-accessible URL for the projects build badge. Available as
  /// `badge_url` attribute when enabled.
  final pulumi.Input<bool>? badgeEnabled;

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
  final pulumi.Input<ProjectEnvironment> environment;

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
  final pulumi.Input<List<ProjectSecondarySourceVersion>>?
      secondarySourceVersions;

  /// Configuration block. Detailed below.
  final pulumi.Input<List<ProjectSecondarySource>>? secondarySources;

  /// Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
  /// enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
  final pulumi.Input<String> serviceRole;

  /// Configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ProjectSource> source;

  /// Version of the build input to be built for this project. If not specified, the latest
  /// version is used.
  final pulumi.Input<String>? sourceVersion;

  /// Map of tags to assign to the resource. If configured with a provider
  /// `default_tags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectVpcConfig>? vpcConfig;

  ProjectArgs({
    required this.artifacts,
    this.autoRetryLimit,
    this.badgeEnabled,
    this.buildBatchConfig,
    this.buildTimeout,
    this.cache,
    this.concurrentBuildLimit,
    this.description,
    this.encryptionKey,
    required this.environment,
    this.fileSystemLocations,
    this.logsConfig,
    this.name,
    this.projectVisibility,
    this.queuedTimeout,
    this.region,
    this.resourceAccessRole,
    this.secondaryArtifacts,
    this.secondarySourceVersions,
    this.secondarySources,
    required this.serviceRole,
    required this.source,
    this.sourceVersion,
    this.tags,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifacts'] =
        pulumi.Input.mapInputValue<ProjectArtifacts, Map<String, dynamic>>(
            artifacts, (value) => value.toMap());
    final autoRetryLimitValue = autoRetryLimit;
    if (autoRetryLimitValue != null) {
      map['autoRetryLimit'] = autoRetryLimitValue;
    }
    final badgeEnabledValue = badgeEnabled;
    if (badgeEnabledValue != null) {
      map['badgeEnabled'] = badgeEnabledValue;
    }
    final buildBatchConfigValue = buildBatchConfig;
    if (buildBatchConfigValue != null) {
      map['buildBatchConfig'] = pulumi.Input.mapOptionalInputValue<
              ProjectBuildBatchConfig, Map<String, dynamic>>(
          buildBatchConfigValue, (value) => value.toMap());
    }
    final buildTimeoutValue = buildTimeout;
    if (buildTimeoutValue != null) {
      map['buildTimeout'] = buildTimeoutValue;
    }
    final cacheValue = cache;
    if (cacheValue != null) {
      map['cache'] = pulumi.Input.mapOptionalInputValue<ProjectCache,
          Map<String, dynamic>>(cacheValue, (value) => value.toMap());
    }
    final concurrentBuildLimitValue = concurrentBuildLimit;
    if (concurrentBuildLimitValue != null) {
      map['concurrentBuildLimit'] = concurrentBuildLimitValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = encryptionKeyValue;
    }
    map['environment'] =
        pulumi.Input.mapInputValue<ProjectEnvironment, Map<String, dynamic>>(
            environment, (value) => value.toMap());
    final fileSystemLocationsValue = fileSystemLocations;
    if (fileSystemLocationsValue != null) {
      map['fileSystemLocations'] = pulumi.Input.mapOptionalInputValue<
              List<ProjectFileSystemLocation>, List<Map<String, dynamic>>>(
          fileSystemLocationsValue,
          (value) => pulumi.Input.encodeList<ProjectFileSystemLocation,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final logsConfigValue = logsConfig;
    if (logsConfigValue != null) {
      map['logsConfig'] = pulumi.Input.mapOptionalInputValue<ProjectLogsConfig,
          Map<String, dynamic>>(logsConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectVisibilityValue = projectVisibility;
    if (projectVisibilityValue != null) {
      map['projectVisibility'] = projectVisibilityValue;
    }
    final queuedTimeoutValue = queuedTimeout;
    if (queuedTimeoutValue != null) {
      map['queuedTimeout'] = queuedTimeoutValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceAccessRoleValue = resourceAccessRole;
    if (resourceAccessRoleValue != null) {
      map['resourceAccessRole'] = resourceAccessRoleValue;
    }
    final secondaryArtifactsValue = secondaryArtifacts;
    if (secondaryArtifactsValue != null) {
      map['secondaryArtifacts'] = pulumi.Input.mapOptionalInputValue<
              List<ProjectSecondaryArtifact>, List<Map<String, dynamic>>>(
          secondaryArtifactsValue,
          (value) => pulumi.Input.encodeList<ProjectSecondaryArtifact,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final secondarySourceVersionsValue = secondarySourceVersions;
    if (secondarySourceVersionsValue != null) {
      map['secondarySourceVersions'] = pulumi.Input.mapOptionalInputValue<
              List<ProjectSecondarySourceVersion>, List<Map<String, dynamic>>>(
          secondarySourceVersionsValue,
          (value) => pulumi.Input.encodeList<ProjectSecondarySourceVersion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final secondarySourcesValue = secondarySources;
    if (secondarySourcesValue != null) {
      map['secondarySources'] = pulumi.Input.mapOptionalInputValue<
              List<ProjectSecondarySource>, List<Map<String, dynamic>>>(
          secondarySourcesValue,
          (value) => pulumi.Input.encodeList<ProjectSecondarySource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['serviceRole'] = serviceRole;
    map['source'] =
        pulumi.Input.mapInputValue<ProjectSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    final sourceVersionValue = sourceVersion;
    if (sourceVersionValue != null) {
      map['sourceVersion'] = sourceVersionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = pulumi.Input.mapOptionalInputValue<ProjectVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      artifacts: pulumi.Input.asInput<ProjectArtifacts>(map['artifacts']),
      autoRetryLimit: pulumi.Input.asOptionalInput<int>(map['autoRetryLimit']),
      badgeEnabled: pulumi.Input.asOptionalInput<bool>(map['badgeEnabled']),
      buildBatchConfig: pulumi.Input.asOptionalInput<ProjectBuildBatchConfig>(
          map['buildBatchConfig']),
      buildTimeout: pulumi.Input.asOptionalInput<int>(map['buildTimeout']),
      cache: pulumi.Input.asOptionalInput<ProjectCache>(map['cache']),
      concurrentBuildLimit:
          pulumi.Input.asOptionalInput<int>(map['concurrentBuildLimit']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      encryptionKey: pulumi.Input.asOptionalInput<String>(map['encryptionKey']),
      environment: pulumi.Input.asInput<ProjectEnvironment>(map['environment']),
      fileSystemLocations:
          pulumi.Input.asOptionalInput<List<ProjectFileSystemLocation>>(
              map['fileSystemLocations']),
      logsConfig:
          pulumi.Input.asOptionalInput<ProjectLogsConfig>(map['logsConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      projectVisibility:
          pulumi.Input.asOptionalInput<String>(map['projectVisibility']),
      queuedTimeout: pulumi.Input.asOptionalInput<int>(map['queuedTimeout']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceAccessRole:
          pulumi.Input.asOptionalInput<String>(map['resourceAccessRole']),
      secondaryArtifacts:
          pulumi.Input.asOptionalInput<List<ProjectSecondaryArtifact>>(
              map['secondaryArtifacts']),
      secondarySourceVersions:
          pulumi.Input.asOptionalInput<List<ProjectSecondarySourceVersion>>(
              map['secondarySourceVersions']),
      secondarySources:
          pulumi.Input.asOptionalInput<List<ProjectSecondarySource>>(
              map['secondarySources']),
      serviceRole: pulumi.Input.asInput<String>(map['serviceRole']),
      source: pulumi.Input.asInput<ProjectSource>(map['source']),
      sourceVersion: pulumi.Input.asOptionalInput<String>(map['sourceVersion']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfig:
          pulumi.Input.asOptionalInput<ProjectVpcConfig>(map['vpcConfig']),
    );
  }
}
