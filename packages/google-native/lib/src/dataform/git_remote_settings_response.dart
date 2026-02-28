// ignore_for_file: unused_element, unnecessary_cast

import 'ssh_authentication_config_response.dart';

/// Controls Git remote configuration for a repository.
class GitRemoteSettingsResponse {
  /// Optional. The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  final String authenticationTokenSecretVersion;
  /// The Git remote's default branch name.
  final String defaultBranch;
  /// Optional. Authentication fields for remote uris using SSH protocol.
  final SshAuthenticationConfigResponse sshAuthenticationConfig;
  /// Deprecated: The field does not contain any token status information. Instead use https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories/computeAccessTokenStatus
  final String tokenStatus;
  /// The Git remote's URL.
  final String url;

  /// Creates a new [GitRemoteSettingsResponse].
  /// [authenticationTokenSecretVersion] Optional. The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  /// [defaultBranch] The Git remote's default branch name.
  /// [sshAuthenticationConfig] Optional. Authentication fields for remote uris using SSH protocol.
  /// [tokenStatus] Deprecated: The field does not contain any token status information. Instead use https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories/computeAccessTokenStatus
  /// [url] The Git remote's URL.
  GitRemoteSettingsResponse({
    required this.authenticationTokenSecretVersion,
    required this.defaultBranch,
    required this.sshAuthenticationConfig,
    required this.tokenStatus,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationTokenSecretVersion': authenticationTokenSecretVersion,
      'defaultBranch': defaultBranch,
      'sshAuthenticationConfig': sshAuthenticationConfig.toMap(),
      'tokenStatus': tokenStatus,
      'url': url,
    };
  }

  factory GitRemoteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GitRemoteSettingsResponse(
      authenticationTokenSecretVersion: map['authenticationTokenSecretVersion'] as String,
      defaultBranch: map['defaultBranch'] as String,
      sshAuthenticationConfig: SshAuthenticationConfigResponse.fromMap((map['sshAuthenticationConfig'] as Map).cast<String, dynamic>()),
      tokenStatus: map['tokenStatus'] as String,
      url: map['url'] as String,
    );
  }
}

