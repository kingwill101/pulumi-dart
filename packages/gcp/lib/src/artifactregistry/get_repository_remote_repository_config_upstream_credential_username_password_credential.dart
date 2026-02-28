// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential {
  /// The Secret Manager key version that holds the password to access the
  /// remote repository. Must be in the format of
  /// 'projects/{project}/secrets/{secret}/versions/{version}'.
  final String passwordSecretVersion;

  /// The username to access the remote repository.
  final String username;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential].
  /// [passwordSecretVersion] The Secret Manager key version that holds the password to access the
  /// [username] The username to access the remote repository.
  GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential({
    required this.passwordSecretVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['passwordSecretVersion'] = passwordSecretVersion;
    map['username'] = username;
    return map;
  }

  factory GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential(
      passwordSecretVersion: map['passwordSecretVersion'] as String,
      username: map['username'] as String,
    );
  }
}
