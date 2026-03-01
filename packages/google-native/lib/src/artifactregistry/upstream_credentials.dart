// ignore_for_file: unused_element, unnecessary_cast

import 'username_password_credentials.dart';

/// The credentials to access the remote repository.
class UpstreamCredentials {
  /// Use username and password to access the remote repository.
  final UsernamePasswordCredentials? usernamePasswordCredentials;

  /// Creates a new [UpstreamCredentials].
  /// [usernamePasswordCredentials] Use username and password to access the remote repository.
  UpstreamCredentials({this.usernamePasswordCredentials});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usernamePasswordCredentials': ?usernamePasswordCredentials == null
          ? null
          : usernamePasswordCredentials!.toMap(),
    };
  }

  factory UpstreamCredentials.fromMap(Map<String, dynamic> map) {
    return UpstreamCredentials(
      usernamePasswordCredentials: map['usernamePasswordCredentials'] == null
          ? null
          : UsernamePasswordCredentials.fromMap(
              (map['usernamePasswordCredentials'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
