// ignore_for_file: unused_element, unnecessary_cast

import 'repository_remote_repository_config_upstream_credentials_username_password_credentials.dart';

class RepositoryRemoteRepositoryConfigUpstreamCredentials {
  /// Use username and password to access the remote repository.
  /// Structure is documented below.
  final RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials? usernamePasswordCredentials;

  /// Creates a new [RepositoryRemoteRepositoryConfigUpstreamCredentials].
  /// [usernamePasswordCredentials] Use username and password to access the remote repository.
  RepositoryRemoteRepositoryConfigUpstreamCredentials({
    this.usernamePasswordCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usernamePasswordCredentials': ?usernamePasswordCredentials == null ? null : usernamePasswordCredentials!.toMap(),
    };
  }

  factory RepositoryRemoteRepositoryConfigUpstreamCredentials.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigUpstreamCredentials(
      usernamePasswordCredentials: map['usernamePasswordCredentials'] == null ? null : RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials.fromMap((map['usernamePasswordCredentials'] as Map).cast<String, dynamic>()),
    );
  }
}

