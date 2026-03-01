// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppSiteCredential {
  /// The name which should be used for this Linux Function App.
  final String name;
  /// The Site Credentials Password used for publishing.
  final String password;

  /// Creates a new [GetLinuxFunctionAppSiteCredential].
  /// [name] The name which should be used for this Linux Function App.
  /// [password] The Site Credentials Password used for publishing.
  GetLinuxFunctionAppSiteCredential({
    required this.name,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
    };
  }

  factory GetLinuxFunctionAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteCredential(
      name: map['name'] as String,
      password: map['password'] as String,
    );
  }
}

