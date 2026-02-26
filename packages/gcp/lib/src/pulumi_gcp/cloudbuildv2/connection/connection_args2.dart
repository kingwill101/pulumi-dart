// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_bitbucket_cloud_config/connection_bitbucket_cloud_config.dart';
import '../connection_bitbucket_data_center_config/connection_bitbucket_data_center_config.dart';
import '../connection_github_config/connection_github_config.dart';
import '../connection_github_enterprise_config/connection_github_enterprise_config.dart';
import '../connection_gitlab_config/connection_gitlab_config.dart';

/// The set of arguments for Connection.
class ConnectionArgs2 {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Configuration for connections to Bitbucket Cloud.
  /// Structure is documented below.
  final Input<ConnectionBitbucketCloudConfig>? bitbucketCloudConfig;

  /// Configuration for connections to Bitbucket Data Center.
  /// Structure is documented below.
  final Input<ConnectionBitbucketDataCenterConfig>? bitbucketDataCenterConfig;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final Input<bool>? disabled;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  final Input<ConnectionGithubConfig>? githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  final Input<ConnectionGithubEnterpriseConfig>? githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// Structure is documented below.
  final Input<ConnectionGitlabConfig>? gitlabConfig;

  /// The location for the resource
  final Input<String> location;

  /// Immutable. The resource name of the connection.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ConnectionArgs2({
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
      map['bitbucketCloudConfig'] = Input.mapOptionalInputValue<
              ConnectionBitbucketCloudConfig, Map<String, dynamic>>(
          bitbucketCloudConfigValue, (value) => value.toMap());
    }
    final bitbucketDataCenterConfigValue = bitbucketDataCenterConfig;
    if (bitbucketDataCenterConfigValue != null) {
      map['bitbucketDataCenterConfig'] = Input.mapOptionalInputValue<
              ConnectionBitbucketDataCenterConfig, Map<String, dynamic>>(
          bitbucketDataCenterConfigValue, (value) => value.toMap());
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final githubConfigValue = githubConfig;
    if (githubConfigValue != null) {
      map['githubConfig'] = Input.mapOptionalInputValue<ConnectionGithubConfig,
          Map<String, dynamic>>(githubConfigValue, (value) => value.toMap());
    }
    final githubEnterpriseConfigValue = githubEnterpriseConfig;
    if (githubEnterpriseConfigValue != null) {
      map['githubEnterpriseConfig'] = Input.mapOptionalInputValue<
              ConnectionGithubEnterpriseConfig, Map<String, dynamic>>(
          githubEnterpriseConfigValue, (value) => value.toMap());
    }
    final gitlabConfigValue = gitlabConfig;
    if (gitlabConfigValue != null) {
      map['gitlabConfig'] = Input.mapOptionalInputValue<ConnectionGitlabConfig,
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

  factory ConnectionArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs2(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      bitbucketCloudConfig:
          Input.asOptionalInput<ConnectionBitbucketCloudConfig>(
              map['bitbucketCloudConfig']),
      bitbucketDataCenterConfig:
          Input.asOptionalInput<ConnectionBitbucketDataCenterConfig>(
              map['bitbucketDataCenterConfig']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      githubConfig:
          Input.asOptionalInput<ConnectionGithubConfig>(map['githubConfig']),
      githubEnterpriseConfig:
          Input.asOptionalInput<ConnectionGithubEnterpriseConfig>(
              map['githubEnterpriseConfig']),
      gitlabConfig:
          Input.asOptionalInput<ConnectionGitlabConfig>(map['gitlabConfig']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
