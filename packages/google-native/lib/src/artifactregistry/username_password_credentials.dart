// ignore_for_file: unused_element, unnecessary_cast


/// Username and password credentials.
class UsernamePasswordCredentials {
  /// The Secret Manager key version that holds the password to access the remote repository. Must be in the format of `projects/{project}/secrets/{secret}/versions/{version}`.
  final String? passwordSecretVersion;
  /// The username to access the remote repository.
  final String? username;

  /// Creates a new [UsernamePasswordCredentials].
  /// [passwordSecretVersion] The Secret Manager key version that holds the password to access the remote repository. Must be in the format of `projects/{project}/secrets/{secret}/versions/{version}`.
  /// [username] The username to access the remote repository.
  UsernamePasswordCredentials({
    this.passwordSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretVersion': ?passwordSecretVersion,
      'username': ?username,
    };
  }

  factory UsernamePasswordCredentials.fromMap(Map<String, dynamic> map) {
    return UsernamePasswordCredentials(
      passwordSecretVersion: map['passwordSecretVersion'] == null ? null : map['passwordSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

