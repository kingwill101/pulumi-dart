import 'package:pulumi/pulumi.dart';
import 'connection_args3.dart';
import 'git_hub_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_hub_enterprise_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_lab_config_response.dart';
import 'installation_state_response.dart';

/// Creates a Connection.
class Connection3 extends CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  late final Output<Map<String, String>> annotations;

  /// Required. The ID to use for the Connection, which will become the final component of the Connection's resource name. Names must be unique per-project per-location. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  late final Output<String> connectionId;

  /// Server assigned timestamp for when the connection was created.
  late final Output<String> createTime;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  late final Output<bool> disabled;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Configuration for connections to github.com.
  late final Output<GitHubConfigResponse> githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  late final Output<GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse>
      githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  late final Output<GoogleDevtoolsCloudbuildV2GitLabConfigResponse>
      gitlabConfig;

  /// Installation state of the Connection.
  late final Output<InstallationStateResponse> installationState;
  late final Output<String> location;

  /// Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Set to true when the connection is being set up or updated in the background.
  late final Output<bool> reconciling;

  /// Server assigned timestamp for when the connection was updated.
  late final Output<String> updateTime;

  Connection3(
    String name, {
    ConnectionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v2:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.connectionId = registerOutput<String>('connectionId');
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool>('disabled');
    this.etag = registerOutput<String>('etag');
    this.githubConfig = registerOutput<GitHubConfigResponse>('githubConfig');
    this.githubEnterpriseConfig = registerOutput<
            GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse>(
        'githubEnterpriseConfig');
    this.gitlabConfig =
        registerOutput<GoogleDevtoolsCloudbuildV2GitLabConfigResponse>(
            'gitlabConfig');
    this.installationState =
        registerOutput<InstallationStateResponse>('installationState');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
