// ignore_for_file: unused_element, unnecessary_cast

import 'ssh_authentication_config.dart';

/// Controls Git remote configuration for a repository.
class GitRemoteSettings {
  /// Optional. The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  final String? authenticationTokenSecretVersion;

  /// The Git remote's default branch name.
  final String defaultBranch;

  /// Optional. Authentication fields for remote uris using SSH protocol.
  final SshAuthenticationConfig? sshAuthenticationConfig;

  /// The Git remote's URL.
  final String url;

  /// Creates a new [GitRemoteSettings].
  /// [authenticationTokenSecretVersion] Optional. The name of the Secret Manager secret version to use as an authentication token for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  /// [defaultBranch] The Git remote's default branch name.
  /// [sshAuthenticationConfig] Optional. Authentication fields for remote uris using SSH protocol.
  /// [url] The Git remote's URL.
  GitRemoteSettings({
    this.authenticationTokenSecretVersion,
    required this.defaultBranch,
    this.sshAuthenticationConfig,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationTokenSecretVersion': ?authenticationTokenSecretVersion,
      'defaultBranch': defaultBranch,
      'sshAuthenticationConfig': ?sshAuthenticationConfig == null
          ? null
          : sshAuthenticationConfig!.toMap(),
      'url': url,
    };
  }

  factory GitRemoteSettings.fromMap(Map<String, dynamic> map) {
    return GitRemoteSettings(
      authenticationTokenSecretVersion:
          map['authenticationTokenSecretVersion'] == null
          ? null
          : map['authenticationTokenSecretVersion'] as String,
      defaultBranch: map['defaultBranch'] as String,
      sshAuthenticationConfig: map['sshAuthenticationConfig'] == null
          ? null
          : SshAuthenticationConfig.fromMap(
              (map['sshAuthenticationConfig'] as Map).cast<String, dynamic>(),
            ),
      url: map['url'] as String,
    );
  }
}
