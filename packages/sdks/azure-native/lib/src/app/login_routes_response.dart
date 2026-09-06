// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The routes that specify the endpoints used for login and logout requests.
class LoginRoutesResponse {
  /// The endpoint at which a logout request should be made.
  final pulumi.Input<String?>? logoutEndpoint;

  /// Creates a new [LoginRoutesResponse].
  /// [logoutEndpoint] The endpoint at which a logout request should be made.
  const LoginRoutesResponse({
    this.logoutEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logoutEndpoint': ?logoutEndpoint,
    };
  }

  factory LoginRoutesResponse.fromMap(Map<String, dynamic> map) {
    return LoginRoutesResponse(
      logoutEndpoint: (() { final guardedValue = map['logoutEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
