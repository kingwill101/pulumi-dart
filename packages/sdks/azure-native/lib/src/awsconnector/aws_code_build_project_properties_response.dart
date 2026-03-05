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
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the build project.&lt;/p&gt;
  final pulumi.Input<String>? arn;
  /// &lt;p&gt;Information about the build output artifacts for the build project.&lt;/p&gt;
  final pulumi.Input<ProjectArtifactsResponse>? artifacts;
  /// &lt;p&gt;Information about the build badge for the build project.&lt;/p&gt;
  final pulumi.Input<ProjectBadgeResponse>? badge;
  /// &lt;p&gt;A &lt;a&gt;ProjectBuildBatchConfig&lt;/a&gt; object that defines the batch build options for the project.&lt;/p&gt;
  final pulumi.Input<ProjectBuildBatchConfigResponse>? buildBatchConfig;
  /// &lt;p&gt;Information about the cache for the build project.&lt;/p&gt;
  final pulumi.Input<ProjectCacheResponse>? cache;
  /// &lt;p&gt;The maximum number of concurrent builds that are allowed for this project.&lt;/p&gt; &lt;p&gt;New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.&lt;/p&gt;
  final pulumi.Input<int>? concurrentBuildLimit;
  /// &lt;p&gt;When the build project was created, expressed in Unix time format.&lt;/p&gt;
  final pulumi.Input<String>? created;
  /// &lt;p&gt;A description that makes the build project easy to identify.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The Key Management Service customer master key (CMK) to be used for encrypting the build output artifacts.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. &lt;/p&gt; &lt;/note&gt; &lt;p&gt;You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format &lt;code&gt;alias/&lt;alias-name&gt;&lt;/code&gt;). If you don't specify a value, CodeBuild uses the managed CMK for Amazon Simple Storage Service (Amazon S3). &lt;/p&gt;
  final pulumi.Input<String>? encryptionKey;
  /// &lt;p&gt;Information about the build environment for this build project.&lt;/p&gt;
  final pulumi.Input<ProjectEnvironmentResponse>? environment;
  /// &lt;p&gt; An array of &lt;code&gt;ProjectFileSystemLocation&lt;/code&gt; objects for a CodeBuild build project. A &lt;code&gt;ProjectFileSystemLocation&lt;/code&gt; object specifies the &lt;code&gt;identifier&lt;/code&gt;, &lt;code&gt;location&lt;/code&gt;, &lt;code&gt;mountOptions&lt;/code&gt;, &lt;code&gt;mountPoint&lt;/code&gt;, and &lt;code&gt;type&lt;/code&gt; of a file system created using Amazon Elastic File System. &lt;/p&gt;
  final pulumi.Input<List<ProjectFileSystemLocationResponse>>? fileSystemLocations;
  /// &lt;p&gt;When the build project's settings were last modified, expressed in Unix time format.&lt;/p&gt;
  final pulumi.Input<String>? lastModified;
  /// &lt;p&gt;Information about logs for the build project. A project can create logs in CloudWatch Logs, an S3 bucket, or both. &lt;/p&gt;
  final pulumi.Input<LogsConfigResponse>? logsConfig;
  /// &lt;p&gt;The name of the build project.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// Property projectVisibility
  final pulumi.Input<ProjectVisibilityTypeEnumValueResponse>? projectVisibility;
  /// &lt;p&gt;Contains the project identifier used with the public build APIs. &lt;/p&gt;
  final pulumi.Input<String>? publicProjectAlias;
  /// &lt;p&gt;The number of minutes a build is allowed to be queued before it times out. &lt;/p&gt;
  final pulumi.Input<int>? queuedTimeoutInMinutes;
  /// &lt;p&gt;The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds.&lt;/p&gt;
  final pulumi.Input<String>? resourceAccessRole;
  /// &lt;p&gt;An array of &lt;code&gt;ProjectArtifacts&lt;/code&gt; objects. &lt;/p&gt;
  final pulumi.Input<List<ProjectArtifactsResponse>>? secondaryArtifacts;
  /// &lt;p&gt;An array of &lt;code&gt;ProjectSourceVersion&lt;/code&gt; objects. If &lt;code&gt;secondarySourceVersions&lt;/code&gt; is specified at the build level, then they take over these &lt;code&gt;secondarySourceVersions&lt;/code&gt; (at the project level). &lt;/p&gt;
  final pulumi.Input<List<ProjectSourceVersionResponse>>? secondarySourceVersions;
  /// &lt;p&gt;An array of &lt;code&gt;ProjectSource&lt;/code&gt; objects. &lt;/p&gt;
  final pulumi.Input<List<ProjectSourceResponse>>? secondarySources;
  /// &lt;p&gt;The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services on behalf of the Amazon Web Services account.&lt;/p&gt;
  final pulumi.Input<String>? serviceRole;
  /// &lt;p&gt;Information about the build input source code for this build project.&lt;/p&gt;
  final pulumi.Input<ProjectSourceResponse>? source;
  /// &lt;p&gt;A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For CodeCommit: the commit ID, branch, or Git tag to use.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format &lt;code&gt;pr/pull-request-ID&lt;/code&gt; (for example &lt;code&gt;pr/25&lt;/code&gt;). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Amazon S3: the version ID of the object that represents the build input ZIP file to use.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If &lt;code&gt;sourceVersion&lt;/code&gt; is specified at the build level, then that version takes precedence over this &lt;code&gt;sourceVersion&lt;/code&gt; (at the project level). &lt;/p&gt; &lt;p&gt;For more information, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'&gt;Source Version Sample with CodeBuild&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;. &lt;/p&gt;
  final pulumi.Input<String>? sourceVersion;
  /// &lt;p&gt;A list of tag key and value pairs associated with this build project.&lt;/p&gt; &lt;p&gt;These tags are available for use by Amazon Web Services services that support CodeBuild build project tags.&lt;/p&gt;
  final pulumi.Input<List<TagResponse>>? tags;
  /// &lt;p&gt;How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.&lt;/p&gt;
  final pulumi.Input<int>? timeoutInMinutes;
  /// &lt;p&gt;Information about the VPC configuration that CodeBuild accesses.&lt;/p&gt;
  final pulumi.Input<VpcConfigResponse>? vpcConfig;
  /// &lt;p&gt;Information about a webhook that connects repository events to a build project in CodeBuild.&lt;/p&gt;
  final pulumi.Input<WebhookResponse>? webhook;

  /// Creates a new [AwsCodeBuildProjectPropertiesResponse].
  /// [arn] &lt;p&gt;The Amazon Resource Name (ARN) of the build project.&lt;/p&gt;
  /// [artifacts] &lt;p&gt;Information about the build output artifacts for the build project.&lt;/p&gt;
  /// [badge] &lt;p&gt;Information about the build badge for the build project.&lt;/p&gt;
  /// [buildBatchConfig] &lt;p&gt;A &lt;a&gt;ProjectBuildBatchConfig&lt;/a&gt; object that defines the batch build options for the project.&lt;/p&gt;
  /// [cache] &lt;p&gt;Information about the cache for the build project.&lt;/p&gt;
  /// [concurrentBuildLimit] &lt;p&gt;The maximum number of concurrent builds that are allowed for this project.&lt;/p&gt; &lt;p&gt;New builds are only started if the current number of builds is less than or equal to this limit. If the current build count meets this limit, new builds are throttled and are not run.&lt;/p&gt;
  /// [created] &lt;p&gt;When the build project was created, expressed in Unix time format.&lt;/p&gt;
  /// [description] &lt;p&gt;A description that makes the build project easy to identify.&lt;/p&gt;
  /// [encryptionKey] &lt;p&gt;The Key Management Service customer master key (CMK) to be used for encrypting the build output artifacts.&lt;/p&gt; &lt;note&gt; &lt;p&gt;You can use a cross-account KMS key to encrypt the build output artifacts if your service role has permission to that key. &lt;/p&gt; &lt;/note&gt; &lt;p&gt;You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using the format &lt;code&gt;alias/&lt;alias-name&gt;&lt;/code&gt;). If you don't specify a value, CodeBuild uses the managed CMK for Amazon Simple Storage Service (Amazon S3). &lt;/p&gt;
  /// [environment] &lt;p&gt;Information about the build environment for this build project.&lt;/p&gt;
  /// [fileSystemLocations] &lt;p&gt; An array of &lt;code&gt;ProjectFileSystemLocation&lt;/code&gt; objects for a CodeBuild build project. A &lt;code&gt;ProjectFileSystemLocation&lt;/code&gt; object specifies the &lt;code&gt;identifier&lt;/code&gt;, &lt;code&gt;location&lt;/code&gt;, &lt;code&gt;mountOptions&lt;/code&gt;, &lt;code&gt;mountPoint&lt;/code&gt;, and &lt;code&gt;type&lt;/code&gt; of a file system created using Amazon Elastic File System. &lt;/p&gt;
  /// [lastModified] &lt;p&gt;When the build project's settings were last modified, expressed in Unix time format.&lt;/p&gt;
  /// [logsConfig] &lt;p&gt;Information about logs for the build project. A project can create logs in CloudWatch Logs, an S3 bucket, or both. &lt;/p&gt;
  /// [name] &lt;p&gt;The name of the build project.&lt;/p&gt;
  /// [projectVisibility] Property projectVisibility
  /// [publicProjectAlias] &lt;p&gt;Contains the project identifier used with the public build APIs. &lt;/p&gt;
  /// [queuedTimeoutInMinutes] &lt;p&gt;The number of minutes a build is allowed to be queued before it times out. &lt;/p&gt;
  /// [resourceAccessRole] &lt;p&gt;The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds.&lt;/p&gt;
  /// [secondaryArtifacts] &lt;p&gt;An array of &lt;code&gt;ProjectArtifacts&lt;/code&gt; objects. &lt;/p&gt;
  /// [secondarySourceVersions] &lt;p&gt;An array of &lt;code&gt;ProjectSourceVersion&lt;/code&gt; objects. If &lt;code&gt;secondarySourceVersions&lt;/code&gt; is specified at the build level, then they take over these &lt;code&gt;secondarySourceVersions&lt;/code&gt; (at the project level). &lt;/p&gt;
  /// [secondarySources] &lt;p&gt;An array of &lt;code&gt;ProjectSource&lt;/code&gt; objects. &lt;/p&gt;
  /// [serviceRole] &lt;p&gt;The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services on behalf of the Amazon Web Services account.&lt;/p&gt;
  /// [source] &lt;p&gt;Information about the build input source code for this build project.&lt;/p&gt;
  /// [sourceVersion] &lt;p&gt;A version of the build input to be built for this project. If not specified, the latest version is used. If specified, it must be one of:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For CodeCommit: the commit ID, branch, or Git tag to use.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format &lt;code&gt;pr/pull-request-ID&lt;/code&gt; (for example &lt;code&gt;pr/25&lt;/code&gt;). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Amazon S3: the version ID of the object that represents the build input ZIP file to use.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If &lt;code&gt;sourceVersion&lt;/code&gt; is specified at the build level, then that version takes precedence over this &lt;code&gt;sourceVersion&lt;/code&gt; (at the project level). &lt;/p&gt; &lt;p&gt;For more information, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'&gt;Source Version Sample with CodeBuild&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;. &lt;/p&gt;
  /// [tags] &lt;p&gt;A list of tag key and value pairs associated with this build project.&lt;/p&gt; &lt;p&gt;These tags are available for use by Amazon Web Services services that support CodeBuild build project tags.&lt;/p&gt;
  /// [timeoutInMinutes] &lt;p&gt;How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before timing out any related build that did not get marked as completed. The default is 60 minutes.&lt;/p&gt;
  /// [vpcConfig] &lt;p&gt;Information about the VPC configuration that CodeBuild accesses.&lt;/p&gt;
  /// [webhook] &lt;p&gt;Information about a webhook that connects repository events to a build project in CodeBuild.&lt;/p&gt;
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectArtifactsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      badge: (() { final guardedValue = map['badge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectBadgeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildBatchConfig: (() { final guardedValue = map['buildBatchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectBuildBatchConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectCacheResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      concurrentBuildLimit: (() { final guardedValue = map['concurrentBuildLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectEnvironmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemLocations: (() { final guardedValue = map['fileSystemLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectFileSystemLocationResponse>(guardedValue, (value) => ProjectFileSystemLocationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logsConfig: (() { final guardedValue = map['logsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectVisibility: (() { final guardedValue = map['projectVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectVisibilityTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicProjectAlias: (() { final guardedValue = map['publicProjectAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queuedTimeoutInMinutes: (() { final guardedValue = map['queuedTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceAccessRole: (() { final guardedValue = map['resourceAccessRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryArtifacts: (() { final guardedValue = map['secondaryArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectArtifactsResponse>(guardedValue, (value) => ProjectArtifactsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondarySourceVersions: (() { final guardedValue = map['secondarySourceVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectSourceVersionResponse>(guardedValue, (value) => ProjectSourceVersionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondarySources: (() { final guardedValue = map['secondarySources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectSourceResponse>(guardedValue, (value) => ProjectSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceVersion: (() { final guardedValue = map['sourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeoutInMinutes: (() { final guardedValue = map['timeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webhook: (() { final guardedValue = map['webhook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

