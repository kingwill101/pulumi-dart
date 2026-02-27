// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_bitbucket_cloud_config/connection_bitbucket_cloud_config.dart';
import '../connection_bitbucket_data_center_config/connection_bitbucket_data_center_config.dart';
import '../connection_github_config/connection_github_config.dart';
import '../connection_github_enterprise_config/connection_github_enterprise_config.dart';
import '../connection_gitlab_config/connection_gitlab_config.dart';

/// The set of arguments for Connection.
class ConnectionCloudbuildv2Args {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Configuration for connections to Bitbucket Cloud.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketCloudConfig>? bitbucketCloudConfig;

  /// Configuration for connections to Bitbucket Data Center.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfig>?
      bitbucketDataCenterConfig;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final pulumi.Input<bool>? disabled;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubConfig>? githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubEnterpriseConfig>? githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfig>? gitlabConfig;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Immutable. The resource name of the connection.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ConnectionCloudbuildv2Args({
    this.annotations,
    this.bitbucketCloudConfig,
    this.bitbucketDataCenterConfig,
    this.disabled,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final bitbucketCloudConfigValue = bitbucketCloudConfig;
    if (bitbucketCloudConfigValue != null) {
      map['bitbucketCloudConfig'] = pulumi.Input.mapOptionalInputValue<
              ConnectionBitbucketCloudConfig, Map<String, dynamic>>(
          bitbucketCloudConfigValue, (value) => value.toMap());
    }
    final bitbucketDataCenterConfigValue = bitbucketDataCenterConfig;
    if (bitbucketDataCenterConfigValue != null) {
      map['bitbucketDataCenterConfig'] = pulumi.Input.mapOptionalInputValue<
              ConnectionBitbucketDataCenterConfig, Map<String, dynamic>>(
          bitbucketDataCenterConfigValue, (value) => value.toMap());
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final githubConfigValue = githubConfig;
    if (githubConfigValue != null) {
      map['githubConfig'] = pulumi.Input.mapOptionalInputValue<
          ConnectionGithubConfig,
          Map<String, dynamic>>(githubConfigValue, (value) => value.toMap());
    }
    final githubEnterpriseConfigValue = githubEnterpriseConfig;
    if (githubEnterpriseConfigValue != null) {
      map['githubEnterpriseConfig'] = pulumi.Input.mapOptionalInputValue<
              ConnectionGithubEnterpriseConfig, Map<String, dynamic>>(
          githubEnterpriseConfigValue, (value) => value.toMap());
    }
    final gitlabConfigValue = gitlabConfig;
    if (gitlabConfigValue != null) {
      map['gitlabConfig'] = pulumi.Input.mapOptionalInputValue<
          ConnectionGitlabConfig,
          Map<String, dynamic>>(gitlabConfigValue, (value) => value.toMap());
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConnectionCloudbuildv2Args.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudbuildv2Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bitbucketCloudConfig:
          pulumi.Input.asOptionalInput<ConnectionBitbucketCloudConfig>(
              map['bitbucketCloudConfig']),
      bitbucketDataCenterConfig:
          pulumi.Input.asOptionalInput<ConnectionBitbucketDataCenterConfig>(
              map['bitbucketDataCenterConfig']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      githubConfig: pulumi.Input.asOptionalInput<ConnectionGithubConfig>(
          map['githubConfig']),
      githubEnterpriseConfig:
          pulumi.Input.asOptionalInput<ConnectionGithubEnterpriseConfig>(
              map['githubEnterpriseConfig']),
      gitlabConfig: pulumi.Input.asOptionalInput<ConnectionGitlabConfig>(
          map['gitlabConfig']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
