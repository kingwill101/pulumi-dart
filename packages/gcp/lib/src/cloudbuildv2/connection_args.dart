// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bitbucket_cloud_config.dart';
import 'connection_bitbucket_data_center_config.dart';
import 'connection_github_config.dart';
import 'connection_github_enterprise_config.dart';
import 'connection_gitlab_config.dart';

/// {@template pulumi_cloudbuildv2_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_cloudbuildv2_connection_connection_args_doc}
class ConnectionArgs {
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

  /// Creates a new [ConnectionArgs].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [bitbucketCloudConfig] Configuration for connections to Bitbucket Cloud.
  /// [bitbucketDataCenterConfig] Configuration for connections to Bitbucket Data Center.
  /// [disabled] If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  /// [githubConfig] Configuration for connections to github.com.
  /// [githubEnterpriseConfig] Configuration for connections to an instance of GitHub Enterprise.
  /// [gitlabConfig] Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// [location] The location for the resource
  /// [name] Immutable. The resource name of the connection.
  /// [project] The ID of the project in which the resource belongs.
  ConnectionArgs({
    Map<String, String>? annotations,
    ConnectionBitbucketCloudConfig? bitbucketCloudConfig,
    ConnectionBitbucketDataCenterConfig? bitbucketDataCenterConfig,
    bool? disabled,
    ConnectionGithubConfig? githubConfig,
    ConnectionGithubEnterpriseConfig? githubEnterpriseConfig,
    ConnectionGitlabConfig? gitlabConfig,
    required String location,
    String? name,
    String? project,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       bitbucketCloudConfig =
           pulumi.Input.asOptionalInput<ConnectionBitbucketCloudConfig>(
             bitbucketCloudConfig,
           ),
       bitbucketDataCenterConfig =
           pulumi.Input.asOptionalInput<ConnectionBitbucketDataCenterConfig>(
             bitbucketDataCenterConfig,
           ),
       disabled = pulumi.Input.asOptionalInput<bool>(disabled),
       githubConfig = pulumi.Input.asOptionalInput<ConnectionGithubConfig>(
         githubConfig,
       ),
       githubEnterpriseConfig =
           pulumi.Input.asOptionalInput<ConnectionGithubEnterpriseConfig>(
             githubEnterpriseConfig,
           ),
       gitlabConfig = pulumi.Input.asOptionalInput<ConnectionGitlabConfig>(
         gitlabConfig,
       ),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bitbucketCloudConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionBitbucketCloudConfig,
            Map<String, dynamic>
          >(bitbucketCloudConfig, (value) => value.toMap()),
      'bitbucketDataCenterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionBitbucketDataCenterConfig,
            Map<String, dynamic>
          >(bitbucketDataCenterConfig, (value) => value.toMap()),
      'disabled': ?disabled,
      'githubConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGithubConfig,
            Map<String, dynamic>
          >(githubConfig, (value) => value.toMap()),
      'githubEnterpriseConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGithubEnterpriseConfig,
            Map<String, dynamic>
          >(githubEnterpriseConfig, (value) => value.toMap()),
      'gitlabConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGitlabConfig,
            Map<String, dynamic>
          >(gitlabConfig, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      bitbucketCloudConfig: map['bitbucketCloudConfig'] == null
          ? null
          : ConnectionBitbucketCloudConfig.fromMap(
              (map['bitbucketCloudConfig'] as Map).cast<String, dynamic>(),
            ),
      bitbucketDataCenterConfig: map['bitbucketDataCenterConfig'] == null
          ? null
          : ConnectionBitbucketDataCenterConfig.fromMap(
              (map['bitbucketDataCenterConfig'] as Map).cast<String, dynamic>(),
            ),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      githubConfig: map['githubConfig'] == null
          ? null
          : ConnectionGithubConfig.fromMap(
              (map['githubConfig'] as Map).cast<String, dynamic>(),
            ),
      githubEnterpriseConfig: map['githubEnterpriseConfig'] == null
          ? null
          : ConnectionGithubEnterpriseConfig.fromMap(
              (map['githubEnterpriseConfig'] as Map).cast<String, dynamic>(),
            ),
      gitlabConfig: map['gitlabConfig'] == null
          ? null
          : ConnectionGitlabConfig.fromMap(
              (map['gitlabConfig'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
