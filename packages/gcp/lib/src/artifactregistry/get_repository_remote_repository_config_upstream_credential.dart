// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_remote_repository_config_upstream_credential_username_password_credential.dart';

class GetRepositoryRemoteRepositoryConfigUpstreamCredential {
  /// Use username and password to access the remote repository.
  final List<
    GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential
  >
  usernamePasswordCredentials;

  /// Creates a new [GetRepositoryRemoteRepositoryConfigUpstreamCredential].
  /// [usernamePasswordCredentials] Use username and password to access the remote repository.
  GetRepositoryRemoteRepositoryConfigUpstreamCredential({
    required this.usernamePasswordCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usernamePasswordCredentials':
          pulumi.Input.encodeList<
            GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential,
            Map<String, dynamic>
          >(usernamePasswordCredentials, (value) => value.toMap()),
    };
  }

  factory GetRepositoryRemoteRepositoryConfigUpstreamCredential.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRepositoryRemoteRepositoryConfigUpstreamCredential(
      usernamePasswordCredentials:
          pulumi.Input.decodeList<
            GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential
          >(
            map['usernamePasswordCredentials'],
            (value) =>
                GetRepositoryRemoteRepositoryConfigUpstreamCredentialUsernamePasswordCredential.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
