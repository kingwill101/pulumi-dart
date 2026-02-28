// ignore_for_file: unused_element, unnecessary_cast

class RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials {
  /// The Secret Manager key version that holds the password to access the
  /// remote repository. Must be in the format of
  /// `projects/{project}/secrets/{secret}/versions/{version}`.
  final String? passwordSecretVersion;

  /// The username to access the remote repository.
  final String? username;

  /// Creates a new [RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials].
  /// [passwordSecretVersion] The Secret Manager key version that holds the password to access the
  /// [username] The username to access the remote repository.
  RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials({
    this.passwordSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordSecretVersionValue = passwordSecretVersion;
    if (passwordSecretVersionValue != null) {
      map['passwordSecretVersion'] = passwordSecretVersionValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials.fromMap(
      Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials(
      passwordSecretVersion: map['passwordSecretVersion'] == null
          ? null
          : map['passwordSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
