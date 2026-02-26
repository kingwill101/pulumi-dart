// ignore_for_file: unused_element, unnecessary_cast

import '../repository_git_remote_settings_ssh_authentication_config/repository_git_remote_settings_ssh_authentication_config.dart';

class RepositoryGitRemoteSettings {
  /// The name of the Secret Manager secret version to use as an authentication token for Git operations. This secret is for assigning with HTTPS only(for SSH use <span pulumi-lang-nodejs="`sshAuthenticationConfig`" pulumi-lang-dotnet="`SshAuthenticationConfig`" pulumi-lang-go="`sshAuthenticationConfig`" pulumi-lang-python="`ssh_authentication_config`" pulumi-lang-yaml="`sshAuthenticationConfig`" pulumi-lang-java="`sshAuthenticationConfig`">`ssh_authentication_config`</span>). Must be in the format projects/*/secrets/*/versions/*.
  final String? authenticationTokenSecretVersion;

  /// The Git remote's default branch name.
  final String defaultBranch;

  /// Authentication fields for remote uris using SSH protocol.
  /// Structure is documented below.
  final RepositoryGitRemoteSettingsSshAuthenticationConfig?
      sshAuthenticationConfig;

  /// (Output)
  /// Indicates the status of the Git access token. https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories#TokenStatus
  final String? tokenStatus;

  /// The Git remote's URL.
  final String url;

  RepositoryGitRemoteSettings({
    this.authenticationTokenSecretVersion,
    required this.defaultBranch,
    this.sshAuthenticationConfig,
    this.tokenStatus,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authenticationTokenSecretVersionValue =
        authenticationTokenSecretVersion;
    if (authenticationTokenSecretVersionValue != null) {
      map['authenticationTokenSecretVersion'] =
          authenticationTokenSecretVersionValue;
    }
    map['defaultBranch'] = defaultBranch;
    final sshAuthenticationConfigValue = sshAuthenticationConfig;
    if (sshAuthenticationConfigValue != null) {
      map['sshAuthenticationConfig'] = sshAuthenticationConfigValue.toMap();
    }
    final tokenStatusValue = tokenStatus;
    if (tokenStatusValue != null) {
      map['tokenStatus'] = tokenStatusValue;
    }
    map['url'] = url;
    return map;
  }

  factory RepositoryGitRemoteSettings.fromMap(Map<String, dynamic> map) {
    return RepositoryGitRemoteSettings(
      authenticationTokenSecretVersion:
          map['authenticationTokenSecretVersion'] == null
              ? null
              : map['authenticationTokenSecretVersion'] as String,
      defaultBranch: map['defaultBranch'] as String,
      sshAuthenticationConfig: map['sshAuthenticationConfig'] == null
          ? null
          : RepositoryGitRemoteSettingsSshAuthenticationConfig.fromMap(
              (map['sshAuthenticationConfig'] as Map).cast<String, dynamic>()),
      tokenStatus:
          map['tokenStatus'] == null ? null : map['tokenStatus'] as String,
      url: map['url'] as String,
    );
  }
}
