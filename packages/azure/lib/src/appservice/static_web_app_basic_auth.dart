// ignore_for_file: unused_element, unnecessary_cast


class StaticWebAppBasicAuth {
  /// The Environment types to use the Basic Auth for access. Possible values include `AllEnvironments` and `StagingEnvironments`.
  final String environments;
  /// The password for the basic authentication access.
  final String password;

  /// Creates a new [StaticWebAppBasicAuth].
  /// [environments] The Environment types to use the Basic Auth for access. Possible values include `AllEnvironments` and `StagingEnvironments`.
  /// [password] The password for the basic authentication access.
  StaticWebAppBasicAuth({
    required this.environments,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environments': environments,
      'password': password,
    };
  }

  factory StaticWebAppBasicAuth.fromMap(Map<String, dynamic> map) {
    return StaticWebAppBasicAuth(
      environments: map['environments'] as String,
      password: map['password'] as String,
    );
  }
}

