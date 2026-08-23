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
  /// `badgeUrl` attribute when enabled.
  final pulumi.Input<bool>? badgeEnabled;
  /// URL of the build badge when `badgeEnabled` is enabled.
  final pulumi.Input<String>? badgeUrl;
  /// Defines the batch build options for the project.
  final pulumi.Input<ProjectBuildBatchConfig>? buildBatchConfig;
  /// Number of minutes, from 5 to 2160 (36 hours), for AWS CodeBuild to wait until timing out
  /// any related build that does not get marked as completed. The default is 60 minutes. The `buildTimeout` property is
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
  /// times out. The default is 8 hours. The `queuedTimeout` property is not available on the `Lambda` compute type.
  final pulumi.Input<int>? queuedTimeout;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and
  /// Amazon S3 artifacts for the project's builds in order to display them publicly. Only applicable if
  /// `projectVisibility` is `PUBLIC_READ`.
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
  /// `defaultTags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider
  /// `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectVpcConfig>? vpcConfig;

  /// Creates a new [ProjectState].
  /// [arn] ARN of the CodeBuild project.
  /// [artifacts] Configuration block. Detailed below.
  /// [autoRetryLimit] Specify a maximum number of additional automatic retries after a failed build.
  /// [badgeEnabled] Generates a publicly-accessible URL for the projects build badge. Available as
  /// [badgeUrl] URL of the build badge when `badgeEnabled` is enabled.
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
  const ProjectState({
    this.arn,
    this.artifacts,
    this.autoRetryLimit,
    this.badgeEnabled,
    this.badgeUrl,
    this.buildBatchConfig,
    this.buildTimeout,
    this.cache,
    this.concurrentBuildLimit,
    this.description,
    this.encryptionKey,
    this.environment,
    this.fileSystemLocations,
    this.logsConfig,
    this.name,
    this.projectVisibility,
    this.publicProjectAlias,
    this.queuedTimeout,
    this.region,
    this.resourceAccessRole,
    this.secondaryArtifacts,
    this.secondarySourceVersions,
    this.secondarySources,
    this.serviceRole,
    this.source,
    this.sourceVersion,
    this.tags,
    this.tagsAll,
    this.vpcConfig,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectArtifacts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoRetryLimit: (() { final guardedValue = map['autoRetryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      badgeEnabled: (() { final guardedValue = map['badgeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      badgeUrl: (() { final guardedValue = map['badgeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildBatchConfig: (() { final guardedValue = map['buildBatchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectBuildBatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildTimeout: (() { final guardedValue = map['buildTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      concurrentBuildLimit: (() { final guardedValue = map['concurrentBuildLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemLocations: (() { final guardedValue = map['fileSystemLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectFileSystemLocation>(guardedValue, (value) => ProjectFileSystemLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logsConfig: (() { final guardedValue = map['logsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectVisibility: (() { final guardedValue = map['projectVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicProjectAlias: (() { final guardedValue = map['publicProjectAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queuedTimeout: (() { final guardedValue = map['queuedTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceAccessRole: (() { final guardedValue = map['resourceAccessRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryArtifacts: (() { final guardedValue = map['secondaryArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectSecondaryArtifact>(guardedValue, (value) => ProjectSecondaryArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondarySourceVersions: (() { final guardedValue = map['secondarySourceVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectSecondarySourceVersion>(guardedValue, (value) => ProjectSecondarySourceVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondarySources: (() { final guardedValue = map['secondarySources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectSecondarySource>(guardedValue, (value) => ProjectSecondarySource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceVersion: (() { final guardedValue = map['sourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
