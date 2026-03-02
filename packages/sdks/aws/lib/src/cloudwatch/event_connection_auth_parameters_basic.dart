// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventConnectionAuthParametersBasic {
  /// A password for the authorization. Created and stored in AWS Secrets Manager.
  final pulumi.Input<String> password;
  /// A username for the authorization.
  final pulumi.Input<String> username;

  /// Creates a new [EventConnectionAuthParametersBasic].
  /// [password] A password for the authorization. Created and stored in AWS Secrets Manager.
  /// [username] A username for the authorization.
  EventConnectionAuthParametersBasic({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory EventConnectionAuthParametersBasic.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersBasic(
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

