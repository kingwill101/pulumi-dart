// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth setting for basic auth.
class AcceleratorBasicAuthSettingResponse {
  /// The type of the auth setting.
  /// Expected value is 'BasicAuth'.
  final pulumi.Input<String> authType;
  /// Resource Id of CA certificate for https URL of Git repository.
  final pulumi.Input<String>? caCertResourceId;
  /// Username of git repository basic auth.
  final pulumi.Input<String> username;

  /// Creates a new [AcceleratorBasicAuthSettingResponse].
  /// [authType] The type of the auth setting.
  /// [caCertResourceId] Resource Id of CA certificate for https URL of Git repository.
  /// [username] Username of git repository basic auth.
  const AcceleratorBasicAuthSettingResponse({
    required this.authType,
    this.caCertResourceId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'caCertResourceId': ?caCertResourceId,
      'username': username,
    };
  }

  factory AcceleratorBasicAuthSettingResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorBasicAuthSettingResponse(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      caCertResourceId: (() { final guardedValue = map['caCertResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

