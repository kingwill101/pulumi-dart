// ignore_for_file: unused_element, unnecessary_cast

/// Basic Auth used as a credential.
class BasicAuthResponseDeploymentmanagerV2beta {
  final String password;
  final String user;

  BasicAuthResponseDeploymentmanagerV2beta({
    required this.password,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['user'] = user;
    return map;
  }

  factory BasicAuthResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return BasicAuthResponseDeploymentmanagerV2beta(
      password: map['password'] as String,
      user: map['user'] as String,
    );
  }
}
