// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_hub_enterprise_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_lab_config_response.dart';
import 'installation_state_response.dart';

/// Result data returned by getConnection.
class GetConnectionCloudbuildV2Result {
  /// Allows clients to store small amounts of arbitrary data.
  final Map<String, String> annotations;

  /// Server assigned timestamp for when the connection was created.
  final String createTime;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final bool disabled;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Configuration for connections to github.com.
  final GitHubConfigResponse githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  final GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse
      githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  final GoogleDevtoolsCloudbuildV2GitLabConfigResponse gitlabConfig;

  /// Installation state of the Connection.
  final InstallationStateResponse installationState;

  /// Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  final String name;

  /// Set to true when the connection is being set up or updated in the background.
  final bool reconciling;

  /// Server assigned timestamp for when the connection was updated.
  final String updateTime;

  GetConnectionCloudbuildV2Result({
    required this.annotations,
    required this.createTime,
    required this.disabled,
    required this.etag,
    required this.githubConfig,
    required this.githubEnterpriseConfig,
    required this.gitlabConfig,
    required this.installationState,
    required this.name,
    required this.reconciling,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['disabled'] = disabled;
    map['etag'] = etag;
    map['githubConfig'] = githubConfig.toMap();
    map['githubEnterpriseConfig'] = githubEnterpriseConfig.toMap();
    map['gitlabConfig'] = gitlabConfig.toMap();
    map['installationState'] = installationState.toMap();
    map['name'] = name;
    map['reconciling'] = reconciling;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConnectionCloudbuildV2Result.fromMap(Map<String, dynamic> map) {
    return GetConnectionCloudbuildV2Result(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      disabled: map['disabled'] as bool,
      etag: map['etag'] as String,
      githubConfig: GitHubConfigResponse.fromMap(
          (map['githubConfig'] as Map).cast<String, dynamic>()),
      githubEnterpriseConfig:
          GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse.fromMap(
              (map['githubEnterpriseConfig'] as Map).cast<String, dynamic>()),
      gitlabConfig: GoogleDevtoolsCloudbuildV2GitLabConfigResponse.fromMap(
          (map['gitlabConfig'] as Map).cast<String, dynamic>()),
      installationState: InstallationStateResponse.fromMap(
          (map['installationState'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      reconciling: map['reconciling'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}
