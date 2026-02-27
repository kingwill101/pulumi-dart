// ignore_for_file: unused_element, unnecessary_cast

/// Basic Auth used as a credential.
class BasicAuthDeploymentmanagerV2beta {
  final String? password;
  final String? user;

  BasicAuthDeploymentmanagerV2beta({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final userValue = user;
    if (userValue != null) {
      map['user'] = userValue;
    }
    return map;
  }

  factory BasicAuthDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return BasicAuthDeploymentmanagerV2beta(
      password: map['password'] == null ? null : map['password'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}
