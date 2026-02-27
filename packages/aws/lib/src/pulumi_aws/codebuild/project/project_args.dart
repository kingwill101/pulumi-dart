// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<ProjectArtifacts> artifacts;

  /// Specify a maximum number of additional automatic retries after a failed build.
  /// The default is 0.
  final Input<int>? autoRetryLimit;

  /// Generates a publicly-accessible URL for the projects build badge. Available as
  /// `badge_url` attribute when enabled.
  final Input<bool>? badgeEnabled;

  /// Defines the batch build options for the project.
  final Input<ProjectBuildBatchConfig>? buildBatchConfig;

  /// Number of minutes, from 5 to 2160 (36 hours), for AWS CodeBuild to wait until timing out
  /// any related build that does not get marked as completed. The default is 60 minutes. The `build_timeout` property is
  /// not available on the `Lambda` compute type.
  final Input<int>? buildTimeout;

  /// Configuration block. Detailed below.
  final Input<ProjectCache>? cache;

  /// Specify a maximum number of concurrent builds for the project. The value
  /// specified must be greater than 0 and less than the account concurrent running builds limit.
  final Input<int>? concurrentBuildLimit;

  /// Short description of the project.
  final Input<String>? description;

  /// AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting
  /// the build project's build output artifacts.
  final Input<String>? encryptionKey;

  /// Configuration block. Detailed below.
  final Input<ProjectEnvironment> environment;

  /// A set of file system locations to mount inside the build. File system locations
  /// are documented below.
  final Input<List<ProjectFileSystemLocation>>? fileSystemLocations;

  /// Configuration block. Detailed below.
  final Input<ProjectLogsConfig>? logsConfig;

  /// Project's name.
  final Input<String>? name;

  /// Specifies the visibility of the project's builds. Possible values are: `PUBLIC_READ`
  /// and `PRIVATE`. Default value is `PRIVATE`.
  final Input<String>? projectVisibility;

  /// Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it
  /// times out. The default is 8 hours. The `queued_timeout` property is not available on the `Lambda` compute type.
  final Input<int>? queuedTimeout;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and
  /// Amazon S3 artifacts for the project's builds in order to display them publicly. Only applicable if
  /// `project_visibility` is `PUBLIC_READ`.
  final Input<String>? resourceAccessRole;

  /// Configuration block. Detailed below.
  final Input<List<ProjectSecondaryArtifact>>? secondaryArtifacts;

  /// Configuration block. Detailed below.
  final Input<List<ProjectSecondarySourceVersion>>? secondarySourceVersions;

  /// Configuration block. Detailed below.
  final Input<List<ProjectSecondarySource>>? secondarySources;

  /// Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
  /// enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.
  final Input<String> serviceRole;

  /// Configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<ProjectSource> source;

  /// Version of the build input to be built for this project. If not specified, the latest
  /// version is used.
  final Input<String>? sourceVersion;

  /// Map of tags to assign to the resource. If configured with a provider
  /// `default_tags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block. Detailed below.
  final Input<ProjectVpcConfig>? vpcConfig;

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
        Input.mapInputValue<ProjectArtifacts, Map<String, dynamic>>(
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
      map['buildBatchConfig'] = Input.mapOptionalInputValue<
              ProjectBuildBatchConfig, Map<String, dynamic>>(
          buildBatchConfigValue, (value) => value.toMap());
    }
    final buildTimeoutValue = buildTimeout;
    if (buildTimeoutValue != null) {
      map['buildTimeout'] = buildTimeoutValue;
    }
    final cacheValue = cache;
    if (cacheValue != null) {
      map['cache'] =
          Input.mapOptionalInputValue<ProjectCache, Map<String, dynamic>>(
              cacheValue, (value) => value.toMap());
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
        Input.mapInputValue<ProjectEnvironment, Map<String, dynamic>>(
            environment, (value) => value.toMap());
    final fileSystemLocationsValue = fileSystemLocations;
    if (fileSystemLocationsValue != null) {
      map['fileSystemLocations'] = Input.mapOptionalInputValue<
              List<ProjectFileSystemLocation>, List<Map<String, dynamic>>>(
          fileSystemLocationsValue,
          (value) =>
              Input.encodeList<ProjectFileSystemLocation, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final logsConfigValue = logsConfig;
    if (logsConfigValue != null) {
      map['logsConfig'] =
          Input.mapOptionalInputValue<ProjectLogsConfig, Map<String, dynamic>>(
              logsConfigValue, (value) => value.toMap());
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
      map['secondaryArtifacts'] = Input.mapOptionalInputValue<
              List<ProjectSecondaryArtifact>, List<Map<String, dynamic>>>(
          secondaryArtifactsValue,
          (value) =>
              Input.encodeList<ProjectSecondaryArtifact, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final secondarySourceVersionsValue = secondarySourceVersions;
    if (secondarySourceVersionsValue != null) {
      map['secondarySourceVersions'] = Input.mapOptionalInputValue<
              List<ProjectSecondarySourceVersion>, List<Map<String, dynamic>>>(
          secondarySourceVersionsValue,
          (value) => Input.encodeList<ProjectSecondarySourceVersion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final secondarySourcesValue = secondarySources;
    if (secondarySourcesValue != null) {
      map['secondarySources'] = Input.mapOptionalInputValue<
              List<ProjectSecondarySource>, List<Map<String, dynamic>>>(
          secondarySourcesValue,
          (value) =>
              Input.encodeList<ProjectSecondarySource, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['serviceRole'] = serviceRole;
    map['source'] = Input.mapInputValue<ProjectSource, Map<String, dynamic>>(
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
      map['vpcConfig'] =
          Input.mapOptionalInputValue<ProjectVpcConfig, Map<String, dynamic>>(
              vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      artifacts: Input.asInput<ProjectArtifacts>(map['artifacts']),
      autoRetryLimit: Input.asOptionalInput<int>(map['autoRetryLimit']),
      badgeEnabled: Input.asOptionalInput<bool>(map['badgeEnabled']),
      buildBatchConfig: Input.asOptionalInput<ProjectBuildBatchConfig>(
          map['buildBatchConfig']),
      buildTimeout: Input.asOptionalInput<int>(map['buildTimeout']),
      cache: Input.asOptionalInput<ProjectCache>(map['cache']),
      concurrentBuildLimit:
          Input.asOptionalInput<int>(map['concurrentBuildLimit']),
      description: Input.asOptionalInput<String>(map['description']),
      encryptionKey: Input.asOptionalInput<String>(map['encryptionKey']),
      environment: Input.asInput<ProjectEnvironment>(map['environment']),
      fileSystemLocations:
          Input.asOptionalInput<List<ProjectFileSystemLocation>>(
              map['fileSystemLocations']),
      logsConfig: Input.asOptionalInput<ProjectLogsConfig>(map['logsConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      projectVisibility:
          Input.asOptionalInput<String>(map['projectVisibility']),
      queuedTimeout: Input.asOptionalInput<int>(map['queuedTimeout']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceAccessRole:
          Input.asOptionalInput<String>(map['resourceAccessRole']),
      secondaryArtifacts: Input.asOptionalInput<List<ProjectSecondaryArtifact>>(
          map['secondaryArtifacts']),
      secondarySourceVersions:
          Input.asOptionalInput<List<ProjectSecondarySourceVersion>>(
              map['secondarySourceVersions']),
      secondarySources: Input.asOptionalInput<List<ProjectSecondarySource>>(
          map['secondarySources']),
      serviceRole: Input.asInput<String>(map['serviceRole']),
      source: Input.asInput<ProjectSource>(map['source']),
      sourceVersion: Input.asOptionalInput<String>(map['sourceVersion']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfig: Input.asOptionalInput<ProjectVpcConfig>(map['vpcConfig']),
    );
  }
}
