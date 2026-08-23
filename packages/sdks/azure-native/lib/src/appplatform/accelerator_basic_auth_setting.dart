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
  const AcceleratorBasicAuthSetting({
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
      authType: pulumi.Input.fromValue(map['authType'] as String),
      caCertResourceId: (() { final guardedValue = map['caCertResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
