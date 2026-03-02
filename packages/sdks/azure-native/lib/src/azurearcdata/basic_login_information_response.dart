// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username and password for basic login authentication.
class BasicLoginInformationResponse {
  /// Login username.
  final pulumi.Input<String>? username;

  /// Creates a new [BasicLoginInformationResponse].
  /// [username] Login username.
  BasicLoginInformationResponse({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory BasicLoginInformationResponse.fromMap(Map<String, dynamic> map) {
    return BasicLoginInformationResponse(
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

