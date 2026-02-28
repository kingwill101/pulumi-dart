// ignore_for_file: unused_element, unnecessary_cast

import 'username_password_credentials_response.dart';

/// The credentials to access the remote repository.
class UpstreamCredentialsResponse {
  /// Use username and password to access the remote repository.
  final UsernamePasswordCredentialsResponse usernamePasswordCredentials;

  /// Creates a new [UpstreamCredentialsResponse].
  /// [usernamePasswordCredentials] Use username and password to access the remote repository.
  UpstreamCredentialsResponse({
    required this.usernamePasswordCredentials,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['usernamePasswordCredentials'] = usernamePasswordCredentials.toMap();
    return map;
  }

  factory UpstreamCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return UpstreamCredentialsResponse(
      usernamePasswordCredentials: UsernamePasswordCredentialsResponse.fromMap(
          (map['usernamePasswordCredentials'] as Map).cast<String, dynamic>()),
    );
  }
}
