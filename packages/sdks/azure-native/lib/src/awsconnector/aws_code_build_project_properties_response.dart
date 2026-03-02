// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_config_response.dart';
import 'project_artifacts_response.dart';
import 'project_badge_response.dart';
import 'project_build_batch_config_response.dart';
import 'project_cache_response.dart';
import 'project_environment_response.dart';
import 'project_file_system_location_response.dart';
import 'project_source_response.dart';
import 'project_source_version_response.dart';
import 'project_visibility_type_enum_value_response.dart';
import 'tag_response.dart';
import 'vpc_config_response.dart';
import 'webhook_response.dart';

/// Definition of awsCodeBuildProject
class AwsCodeBuildProjectPropertiesResponse {
  /// <p>The Amazon Resource Name (ARN) of the build project.</p>
  final pulumi.Input<String>? arn;
  /// <p>Information about the build output artifacts for the build project.</p>
  final pulumi.Input<ProjectArtifactsResponse>? artifacts;
  /// <p>Information about the build badge for the build project.</p>
  final pulumi.Input<ProjectBadgeResponse>? badge;
  /// <p>A <a>ProjectBuildBatchConfig</a> object that defines the batch build options for the project.</p>
  final pulumi.Input<ProjectBuildBatchConfigResponse>? buildBatchConfig;
  /// <p>Information about the cache for the build project.</p>
  final pulumi.Input<ProjectCacheResponse>? cache;
  /// <p>The maximum number of concurrent builds that are allowed for this project.</p> <p>New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.</p>
  final pulumi.Input<int>? concurrentBuildLimit;
  /// <p>When the build project was created, expressed in Unix time format.</p>
  final pulumi.Input<String>? created;
  /// <p>A description that makes the build project easy to identify.</p>
  final pulumi.Input<String>? description;
  /// <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output artifacts.</p> <note> <p>You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. </p> </note> <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format <code>alias/&lt;alias-name&gt;</code>). If you don't specify a value, CodeBuild uses the managed CMK for Amazon Simple Storage Service (Amazon S3). </p>
  final pulumi.Input<String>? encryptionKey;
  /// <p>Information about the build environment for this build project.</p>
  final pulumi.Input<ProjectEnvironmentResponse>? environment;
  /// <p> An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System. </p>
  final pulumi.Input<List<ProjectFileSystemLocationResponse>>? fileSystemLocations;
  /// <p>When the build project's settings were last modified, expressed in Unix time format.</p>
  final pulumi.Input<String>? lastModified;
  /// <p>Information about logs for the build project. A project can create logs in CloudWatch Logs, an S3 bucket, or both. </p>
  final pulumi.Input<LogsConfigResponse>? logsConfig;
  /// <p>The name of the build project.</p>
  final pulumi.Input<String>? name;
  /// Property projectVisibility
  final pulumi.Input<ProjectVisibilityTypeEnumValueResponse>? projectVisibility;
  /// <p>Contains the project identifier used with the public build APIs. </p>
  final pulumi.Input<String>? publicProjectAlias;
  /// <p>The number of minutes a build is allowed to be queued before it times out. </p>
  final pulumi.Input<int>? queuedTimeoutInMinutes;
  /// <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds.</p>
  final pulumi.Input<String>? resourceAccessRole;
  /// <p>An array of <code>ProjectArtifacts</code> objects. </p>
  final pulumi.Input<List<ProjectArtifactsResponse>>? secondaryArtifacts;
  /// <p>An array of <code>ProjectSourceVersion</code> objects. If <code>secondarySourceVersions</code> is specified at the build level, then they take over these <code>secondarySourceVersions</code> (at the project level). </p>
  final pulumi.Input<List<ProjectSourceVersionResponse>>? secondarySourceVersions;
  /// <p>An array of <code>ProjectSource</code> objects. </p>
  final pulumi.Input<List<ProjectSourceResponse>>? secondarySources;
  /// <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services on behalf of the Amazon Web Services account.</p>
  final pulumi.Input<String>? serviceRole;
  /// <p>Information about the build input source code for this build project.</p>
  final pulumi.Input<ProjectSourceResponse>? source;
  /// <p>A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:</p> <ul> <li> <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon S3: the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p>If <code>sourceVersion</code> is specified at the build level, then that version takes precedence over this <code>sourceVersion</code> (at the project level). </p> <p>For more information, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'>Source Version Sample with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
  final pulumi.Input<String>? sourceVersion;
  /// <p>A list of tag key and value pairs associated with this build project.</p> <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project tags.</p>
  final pulumi.Input<List<TagResponse>>? tags;
  /// <p>How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.</p>
  final pulumi.Input<int>? timeoutInMinutes;
  /// <p>Information about the VPC configuration that CodeBuild accesses.</p>
  final pulumi.Input<VpcConfigResponse>? vpcConfig;
  /// <p>Information about a webhook that connects repository events to a build project in CodeBuild.</p>
  final pulumi.Input<WebhookResponse>? webhook;

  /// Creates a new [AwsCodeBuildProjectPropertiesResponse].
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
  AwsCodeBuildProjectPropertiesResponse({
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
      'artifacts': ?pulumi.Input.mapOptionalInputValue<ProjectArtifactsResponse, Map<String, dynamic>>(artifacts, (value) => value.toMap()),
      'badge': ?pulumi.Input.mapOptionalInputValue<ProjectBadgeResponse, Map<String, dynamic>>(badge, (value) => value.toMap()),
      'buildBatchConfig': ?pulumi.Input.mapOptionalInputValue<ProjectBuildBatchConfigResponse, Map<String, dynamic>>(buildBatchConfig, (value) => value.toMap()),
      'cache': ?pulumi.Input.mapOptionalInputValue<ProjectCacheResponse, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'concurrentBuildLimit': ?concurrentBuildLimit,
      'created': ?created,
      'description': ?description,
      'encryptionKey': ?encryptionKey,
      'environment': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironmentResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'fileSystemLocations': ?pulumi.Input.mapOptionalInputValue<List<ProjectFileSystemLocationResponse>, List<Map<String, dynamic>>>(fileSystemLocations, (value) => pulumi.Input.encodeList<ProjectFileSystemLocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastModified': ?lastModified,
      'logsConfig': ?pulumi.Input.mapOptionalInputValue<LogsConfigResponse, Map<String, dynamic>>(logsConfig, (value) => value.toMap()),
      'name': ?name,
      'projectVisibility': ?pulumi.Input.mapOptionalInputValue<ProjectVisibilityTypeEnumValueResponse, Map<String, dynamic>>(projectVisibility, (value) => value.toMap()),
      'publicProjectAlias': ?publicProjectAlias,
      'queuedTimeoutInMinutes': ?queuedTimeoutInMinutes,
      'resourceAccessRole': ?resourceAccessRole,
      'secondaryArtifacts': ?pulumi.Input.mapOptionalInputValue<List<ProjectArtifactsResponse>, List<Map<String, dynamic>>>(secondaryArtifacts, (value) => pulumi.Input.encodeList<ProjectArtifactsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondarySourceVersions': ?pulumi.Input.mapOptionalInputValue<List<ProjectSourceVersionResponse>, List<Map<String, dynamic>>>(secondarySourceVersions, (value) => pulumi.Input.encodeList<ProjectSourceVersionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondarySources': ?pulumi.Input.mapOptionalInputValue<List<ProjectSourceResponse>, List<Map<String, dynamic>>>(secondarySources, (value) => pulumi.Input.encodeList<ProjectSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceRole': ?serviceRole,
      'source': ?pulumi.Input.mapOptionalInputValue<ProjectSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'sourceVersion': ?sourceVersion,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutInMinutes': ?timeoutInMinutes,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<VpcConfigResponse, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
      'webhook': ?pulumi.Input.mapOptionalInputValue<WebhookResponse, Map<String, dynamic>>(webhook, (value) => value.toMap()),
    };
  }

  factory AwsCodeBuildProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCodeBuildProjectPropertiesResponse(
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      artifacts: map['artifacts'] == null ? null : (ProjectArtifactsResponse.fromMap((map['artifacts']! as Map).cast<String, dynamic>())).input(),
      badge: map['badge'] == null ? null : (ProjectBadgeResponse.fromMap((map['badge']! as Map).cast<String, dynamic>())).input(),
      buildBatchConfig: map['buildBatchConfig'] == null ? null : (ProjectBuildBatchConfigResponse.fromMap((map['buildBatchConfig']! as Map).cast<String, dynamic>())).input(),
      cache: map['cache'] == null ? null : (ProjectCacheResponse.fromMap((map['cache']! as Map).cast<String, dynamic>())).input(),
      concurrentBuildLimit: map['concurrentBuildLimit'] == null ? null : (map['concurrentBuildLimit']! as int).input(),
      created: map['created'] == null ? null : (map['created']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (map['encryptionKey']! as String).input(),
      environment: map['environment'] == null ? null : (ProjectEnvironmentResponse.fromMap((map['environment']! as Map).cast<String, dynamic>())).input(),
      fileSystemLocations: map['fileSystemLocations'] == null ? null : (pulumi.Input.decodeList<ProjectFileSystemLocationResponse>(map['fileSystemLocations']!, (value) => ProjectFileSystemLocationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastModified: map['lastModified'] == null ? null : (map['lastModified']! as String).input(),
      logsConfig: map['logsConfig'] == null ? null : (LogsConfigResponse.fromMap((map['logsConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectVisibility: map['projectVisibility'] == null ? null : (ProjectVisibilityTypeEnumValueResponse.fromMap((map['projectVisibility']! as Map).cast<String, dynamic>())).input(),
      publicProjectAlias: map['publicProjectAlias'] == null ? null : (map['publicProjectAlias']! as String).input(),
      queuedTimeoutInMinutes: map['queuedTimeoutInMinutes'] == null ? null : (map['queuedTimeoutInMinutes']! as int).input(),
      resourceAccessRole: map['resourceAccessRole'] == null ? null : (map['resourceAccessRole']! as String).input(),
      secondaryArtifacts: map['secondaryArtifacts'] == null ? null : (pulumi.Input.decodeList<ProjectArtifactsResponse>(map['secondaryArtifacts']!, (value) => ProjectArtifactsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondarySourceVersions: map['secondarySourceVersions'] == null ? null : (pulumi.Input.decodeList<ProjectSourceVersionResponse>(map['secondarySourceVersions']!, (value) => ProjectSourceVersionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondarySources: map['secondarySources'] == null ? null : (pulumi.Input.decodeList<ProjectSourceResponse>(map['secondarySources']!, (value) => ProjectSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceRole: map['serviceRole'] == null ? null : (map['serviceRole']! as String).input(),
      source: map['source'] == null ? null : (ProjectSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      sourceVersion: map['sourceVersion'] == null ? null : (map['sourceVersion']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags']!, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : (map['timeoutInMinutes']! as int).input(),
      vpcConfig: map['vpcConfig'] == null ? null : (VpcConfigResponse.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())).input(),
      webhook: map['webhook'] == null ? null : (WebhookResponse.fromMap((map['webhook']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

