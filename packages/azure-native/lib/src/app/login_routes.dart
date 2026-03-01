// ignore_for_file: unused_element, unnecessary_cast


/// The routes that specify the endpoints used for login and logout requests.
class LoginRoutes {
  /// The endpoint at which a logout request should be made.
  final String? logoutEndpoint;

  /// Creates a new [LoginRoutes].
  /// [logoutEndpoint] The endpoint at which a logout request should be made.
  LoginRoutes({
    this.logoutEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logoutEndpoint': ?logoutEndpoint,
    };
  }

  factory LoginRoutes.fromMap(Map<String, dynamic> map) {
    return LoginRoutes(
      logoutEndpoint: map['logoutEndpoint'] == null ? null : map['logoutEndpoint'] as String,
    );
  }
}

