// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth setting for basic auth.
class AcceleratorBasicAuthSetting {
  /// The type of the auth setting.
  /// Expected value is 'BasicAuth'.
  final pulumi.Input<String> authType;
  /// Resource Id of CA certificate for https URL of Git repository.
  final pulumi.Input<String>? caCertResourceId;
  /// Password of git repository basic auth.
  final pulumi.Input<String>? password;
  /// Username of git repository basic auth.
  final pulumi.Input<String> username;

  /// Creates a new [AcceleratorBasicAuthSetting].
  /// [authType] The type of the auth setting.
  /// [caCertResourceId] Resource Id of CA certificate for https URL of Git repository.
  /// [password] Password of git repository basic auth.
  /// [username] Username of git repository basic auth.
  AcceleratorBasicAuthSetting({
    required this.authType,
    this.caCertResourceId,
    this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'caCertResourceId': ?caCertResourceId,
      'password': ?password,
      'username': username,
    };
  }

  factory AcceleratorBasicAuthSetting.fromMap(Map<String, dynamic> map) {
    return AcceleratorBasicAuthSetting(
      authType: (map['authType'] as String).input(),
      caCertResourceId: map['caCertResourceId'] == null ? null : (map['caCertResourceId'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

