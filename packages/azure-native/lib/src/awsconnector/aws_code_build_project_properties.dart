// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_config.dart';
import 'project_artifacts.dart';
import 'project_badge.dart';
import 'project_build_batch_config.dart';
import 'project_cache.dart';
import 'project_environment.dart';
import 'project_file_system_location.dart';
import 'project_source.dart';
import 'project_source_version.dart';
import 'project_visibility_type_enum_value.dart';
import 'tag.dart';
import 'vpc_config.dart';
import 'webhook.dart';

/// Definition of awsCodeBuildProject
class AwsCodeBuildProjectProperties {
  /// <p>The Amazon Resource Name (ARN) of the build project.</p>
  final String? arn;
  /// <p>Information about the build output artifacts for the build project.</p>
  final ProjectArtifacts? artifacts;
  /// <p>Information about the build badge for the build project.</p>
  final ProjectBadge? badge;
  /// <p>A <a>ProjectBuildBatchConfig</a> object that defines the batch build options for the project.</p>
  final ProjectBuildBatchConfig? buildBatchConfig;
  /// <p>Information about the cache for the build project.</p>
  final ProjectCache? cache;
  /// <p>The maximum number of concurrent builds that are allowed for this project.</p> <p>New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.</p>
  final int? concurrentBuildLimit;
  /// <p>When the build project was created, expressed in Unix time format.</p>
  final String? created;
  /// <p>A description that makes the build project easy to identify.</p>
  final String? description;
  /// <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output artifacts.</p> <note> <p>You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>). If you don't specify a value, CodeBuild uses the managed CMK for Amazon Simple Storage Service (Amazon S3). </p>
  final String? encryptionKey;
  /// <p>Information about the build environment for this build project.</p>
  final ProjectEnvironment? environment;
  /// <p> An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>
  final List<ProjectFileSystemLocation>? fileSystemLocations;
  /// <p>When the build project's settings were last modified, expressed in Unix time format.</p>
  final String? lastModified;
  /// <p>Information about logs for the build project. A project can create logs in CloudWatch Logs, an S3 bucket, or both. </p>
  final LogsConfig? logsConfig;
  /// <p>The name of the build project.</p>
  final String? name;
  /// Property projectVisibility
  final ProjectVisibilityTypeEnumValue? projectVisibility;
  /// <p>Contains the project identifier used with the public build APIs. </p>
  final String? publicProjectAlias;
  /// <p>The number of minutes a build is allowed to be queued before it times out. </p>
  final int? queuedTimeoutInMinutes;
  /// <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds.</p>
  final String? resourceAccessRole;
  /// <p>An array of <code>ProjectArtifacts</code> objects. </p>
  final List<ProjectArtifacts>? secondaryArtifacts;
  /// <p>An array of <code>ProjectSourceVersion</code> objects. If <code>secondarySourceVersions</code> is specified at the build level, then they take over these <code>secondarySourceVersions</code> (at the project level). </p>
  final List<ProjectSourceVersion>? secondarySourceVersions;
  /// <p>An array of <code>ProjectSource</code> objects. </p>
  final List<ProjectSource>? secondarySources;
  /// <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services on behalf of the Amazon Web Services account.</p>
  final String? serviceRole;
  /// <p>Information about the build input source code for this build project.</p>
  final ProjectSource? source;
  /// <p>A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:</p> <ul> <li> <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon S3: the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p>If <code>sourceVersion</code> is specified at the build level, then that version takes precedence over this <code>sourceVersion</code> (at the project level). </p> <p>For more information, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'>Source Version Sample with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
  final String? sourceVersion;
  /// <p>A list of tag key and value pairs associated with this build project.</p> <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project tags.</p>
  final List<Tag>? tags;
  /// <p>How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.</p>
  final int? timeoutInMinutes;
  /// <p>Information about the VPC configuration that CodeBuild accesses.</p>
  final VpcConfig? vpcConfig;
  /// <p>Information about a webhook that connects repository events to a build project in CodeBuild.</p>
  final Webhook? webhook;

  /// Creates a new [AwsCodeBuildProjectProperties].
  /// [arn] <p>The Amazon Resource Name (ARN) of the build project.</p>
  /// [artifacts] <p>Information about the build output artifacts for the build project.</p>
  /// [badge] <p>Information about the build badge for the build project.</p>
  /// [buildBatchConfig] <p>A <a>ProjectBuildBatchConfig</a> object that defines the batch build options for the project.</p>
  /// [cache] <p>Information about the cache for the build project.</p>
  /// [concurrentBuildLimit] <p>The maximum number of concurrent builds that are allowed for this project.</p> <p>New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.</p>
  /// [created] <p>When the build project was created, expressed in Unix time format.</p>
  /// [description] <p>A description that makes the build project easy to identify.</p>
  /// [encryptionKey] <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output artifacts.</p> <note> <p>You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>). If you don't specify a value, CodeBuild uses the managed CMK for Amazon Simple Storage Service (Amazon S3). </p>
  /// [environment] <p>Information about the build environment for this build project.</p>
  /// [fileSystemLocations] <p> An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>
  /// [lastModified] <p>When the build project's settings were last modified, expressed in Unix time format.</p>
  /// [logsConfig] <p>Information about logs for the build project. A project can create logs in CloudWatch Logs, an S3 bucket, or both. </p>
  /// [name] <p>The name of the build project.</p>
  /// [projectVisibility] Property projectVisibility
  /// [publicProjectAlias] <p>Contains the project identifier used with the public build APIs. </p>
  /// [queuedTimeoutInMinutes] <p>The number of minutes a build is allowed to be queued before it times out. </p>
  /// [resourceAccessRole] <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds.</p>
  /// [secondaryArtifacts] <p>An array of <code>ProjectArtifacts</code> objects. </p>
  /// [secondarySourceVersions] <p>An array of <code>ProjectSourceVersion</code> objects. If <code>secondarySourceVersions</code> is specified at the build level, then they take over these <code>secondarySourceVersions</code> (at the project level). </p>
  /// [secondarySources] <p>An array of <code>ProjectSource</code> objects. </p>
  /// [serviceRole] <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services on behalf of the Amazon Web Services account.</p>
  /// [source] <p>Information about the build input source code for this build project.</p>
  /// [sourceVersion] <p>A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:</p> <ul> <li> <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon S3: the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p>If <code>sourceVersion</code> is specified at the build level, then that version takes precedence over this <code>sourceVersion</code> (at the project level). </p> <p>For more information, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'>Source Version Sample with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
  /// [tags] <p>A list of tag key and value pairs associated with this build project.</p> <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project tags.</p>
  /// [timeoutInMinutes] <p>How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.</p>
  /// [vpcConfig] <p>Information about the VPC configuration that CodeBuild accesses.</p>
  /// [webhook] <p>Information about a webhook that connects repository events to a build project in CodeBuild.</p>
  AwsCodeBuildProjectProperties({
    this.arn,
    this.artifacts,
    this.badge,
    this.buildBatchConfig,
    this.cache,
    this.concurrentBuildLimit,
    this.created,
    this.description,
    this.encryptionKey,
    this.environment,
    this.fileSystemLocations,
    this.lastModified,
    this.logsConfig,
    this.name,
    this.projectVisibility,
    this.publicProjectAlias,
    this.queuedTimeoutInMinutes,
    this.resourceAccessRole,
    this.secondaryArtifacts,
    this.secondarySourceVersions,
    this.secondarySources,
    this.serviceRole,
    this.source,
    this.sourceVersion,
    this.tags,
    this.timeoutInMinutes,
    this.vpcConfig,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'artifacts': ?artifacts == null ? null : artifacts!.toMap(),
      'badge': ?badge == null ? null : badge!.toMap(),
      'buildBatchConfig': ?buildBatchConfig == null ? null : buildBatchConfig!.toMap(),
      'cache': ?cache == null ? null : cache!.toMap(),
      'concurrentBuildLimit': ?concurrentBuildLimit,
      'created': ?created,
      'description': ?description,
      'encryptionKey': ?encryptionKey,
      'environment': ?environment == null ? null : environment!.toMap(),
      'fileSystemLocations': ?fileSystemLocations == null ? null : pulumi.Input.encodeList<ProjectFileSystemLocation, Map<String, dynamic>>(fileSystemLocations!, (value) => value.toMap()),
      'lastModified': ?lastModified,
      'logsConfig': ?logsConfig == null ? null : logsConfig!.toMap(),
      'name': ?name,
      'projectVisibility': ?projectVisibility == null ? null : projectVisibility!.toMap(),
      'publicProjectAlias': ?publicProjectAlias,
      'queuedTimeoutInMinutes': ?queuedTimeoutInMinutes,
      'resourceAccessRole': ?resourceAccessRole,
      'secondaryArtifacts': ?secondaryArtifacts == null ? null : pulumi.Input.encodeList<ProjectArtifacts, Map<String, dynamic>>(secondaryArtifacts!, (value) => value.toMap()),
      'secondarySourceVersions': ?secondarySourceVersions == null ? null : pulumi.Input.encodeList<ProjectSourceVersion, Map<String, dynamic>>(secondarySourceVersions!, (value) => value.toMap()),
      'secondarySources': ?secondarySources == null ? null : pulumi.Input.encodeList<ProjectSource, Map<String, dynamic>>(secondarySources!, (value) => value.toMap()),
      'serviceRole': ?serviceRole,
      'source': ?source == null ? null : source!.toMap(),
      'sourceVersion': ?sourceVersion,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'timeoutInMinutes': ?timeoutInMinutes,
      'vpcConfig': ?vpcConfig == null ? null : vpcConfig!.toMap(),
      'webhook': ?webhook == null ? null : webhook!.toMap(),
    };
  }

  factory AwsCodeBuildProjectProperties.fromMap(Map<String, dynamic> map) {
    return AwsCodeBuildProjectProperties(
      arn: map['arn'] == null ? null : map['arn'] as String,
      artifacts: map['artifacts'] == null ? null : ProjectArtifacts.fromMap((map['artifacts'] as Map).cast<String, dynamic>()),
      badge: map['badge'] == null ? null : ProjectBadge.fromMap((map['badge'] as Map).cast<String, dynamic>()),
      buildBatchConfig: map['buildBatchConfig'] == null ? null : ProjectBuildBatchConfig.fromMap((map['buildBatchConfig'] as Map).cast<String, dynamic>()),
      cache: map['cache'] == null ? null : ProjectCache.fromMap((map['cache'] as Map).cast<String, dynamic>()),
      concurrentBuildLimit: map['concurrentBuildLimit'] == null ? null : map['concurrentBuildLimit'] as int,
      created: map['created'] == null ? null : map['created'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      encryptionKey: map['encryptionKey'] == null ? null : map['encryptionKey'] as String,
      environment: map['environment'] == null ? null : ProjectEnvironment.fromMap((map['environment'] as Map).cast<String, dynamic>()),
      fileSystemLocations: map['fileSystemLocations'] == null ? null : pulumi.Input.decodeList<ProjectFileSystemLocation>(map['fileSystemLocations'], (value) => ProjectFileSystemLocation.fromMap((value as Map).cast<String, dynamic>())),
      lastModified: map['lastModified'] == null ? null : map['lastModified'] as String,
      logsConfig: map['logsConfig'] == null ? null : LogsConfig.fromMap((map['logsConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      projectVisibility: map['projectVisibility'] == null ? null : ProjectVisibilityTypeEnumValue.fromMap((map['projectVisibility'] as Map).cast<String, dynamic>()),
      publicProjectAlias: map['publicProjectAlias'] == null ? null : map['publicProjectAlias'] as String,
      queuedTimeoutInMinutes: map['queuedTimeoutInMinutes'] == null ? null : map['queuedTimeoutInMinutes'] as int,
      resourceAccessRole: map['resourceAccessRole'] == null ? null : map['resourceAccessRole'] as String,
      secondaryArtifacts: map['secondaryArtifacts'] == null ? null : pulumi.Input.decodeList<ProjectArtifacts>(map['secondaryArtifacts'], (value) => ProjectArtifacts.fromMap((value as Map).cast<String, dynamic>())),
      secondarySourceVersions: map['secondarySourceVersions'] == null ? null : pulumi.Input.decodeList<ProjectSourceVersion>(map['secondarySourceVersions'], (value) => ProjectSourceVersion.fromMap((value as Map).cast<String, dynamic>())),
      secondarySources: map['secondarySources'] == null ? null : pulumi.Input.decodeList<ProjectSource>(map['secondarySources'], (value) => ProjectSource.fromMap((value as Map).cast<String, dynamic>())),
      serviceRole: map['serviceRole'] == null ? null : map['serviceRole'] as String,
      source: map['source'] == null ? null : ProjectSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      sourceVersion: map['sourceVersion'] == null ? null : map['sourceVersion'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : map['timeoutInMinutes'] as int,
      vpcConfig: map['vpcConfig'] == null ? null : VpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
      webhook: map['webhook'] == null ? null : Webhook.fromMap((map['webhook'] as Map).cast<String, dynamic>()),
    );
  }
}

