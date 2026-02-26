// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'git_hub_config.dart';
import 'google_devtools_cloudbuild_v2_git_hub_enterprise_config.dart';
import 'google_devtools_cloudbuild_v2_git_lab_config.dart';

/// The set of arguments for Connection.
class ConnectionArgs3 {
  /// Allows clients to store small amounts of arbitrary data.
  final Input<Map<String, String>>? annotations;

  /// Required. The ID to use for the Connection, which will become the final component of the Connection's resource name. Names must be unique per-project per-location. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final Input<String> connectionId;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final Input<bool>? disabled;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Configuration for connections to github.com.
  final Input<GitHubConfig>? githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  final Input<GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig>?
      githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  final Input<GoogleDevtoolsCloudbuildV2GitLabConfig>? gitlabConfig;
  final Input<String>? location;

  /// Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  final Input<String>? name;
  final Input<String>? project;

  ConnectionArgs3({
    this.annotations,
    required this.connectionId,
    this.disabled,
    this.etag,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['connectionId'] = connectionId;
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final githubConfigValue = githubConfig;
    if (githubConfigValue != null) {
      map['githubConfig'] =
          Input.mapOptionalInputValue<GitHubConfig, Map<String, dynamic>>(
              githubConfigValue, (value) => value.toMap());
    }
    final githubEnterpriseConfigValue = githubEnterpriseConfig;
    if (githubEnterpriseConfigValue != null) {
      map['githubEnterpriseConfig'] = Input.mapOptionalInputValue<
              GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig,
              Map<String, dynamic>>(
          githubEnterpriseConfigValue, (value) => value.toMap());
    }
    final gitlabConfigValue = gitlabConfig;
    if (gitlabConfigValue != null) {
      map['gitlabConfig'] = Input.mapOptionalInputValue<
          GoogleDevtoolsCloudbuildV2GitLabConfig,
          Map<String, dynamic>>(gitlabConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
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

  factory ConnectionArgs3.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs3(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      connectionId: Input.asInput<String>(map['connectionId']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      etag: Input.asOptionalInput<String>(map['etag']),
      githubConfig: Input.asOptionalInput<GitHubConfig>(map['githubConfig']),
      githubEnterpriseConfig: Input.asOptionalInput<
              GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig>(
          map['githubEnterpriseConfig']),
      gitlabConfig:
          Input.asOptionalInput<GoogleDevtoolsCloudbuildV2GitLabConfig>(
              map['gitlabConfig']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
