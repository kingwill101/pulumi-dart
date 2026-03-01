// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSiteCredential {
  /// The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created.
  final String? name;
  /// The Site Credentials Password used for publishing.
  final String? password;

  /// Creates a new [WindowsWebAppSiteCredential].
  /// [name] The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created.
  /// [password] The Site Credentials Password used for publishing.
  WindowsWebAppSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory WindowsWebAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteCredential(
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

